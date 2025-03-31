// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BoatRace {
    struct Race {
        address[] participants;
        address winner;
        bool finished;
    }

    uint256 public raceId;
    mapping(uint256 => Race) public races;
    mapping(address => bool) public registered;
    
    event RaceStarted(uint256 raceId);
    event RaceFinished(uint256 raceId, address winner);

    function register() external {
        require(!registered[msg.sender], "Already registered");
        registered[msg.sender] = true;
        races[raceId].participants.push(msg.sender);
    }

    function startRace() external {
        require(races[raceId].participants.length > 1, "Not enough participants");
        emit RaceStarted(raceId);
    }

    function finishRace() external {
        require(!races[raceId].finished, "Race already finished");
        require(races[raceId].participants.length > 0, "No participants");
        
        uint256 winnerIndex = uint256(keccak256(abi.encodePacked(block.timestamp, block.prevrandao))) % races[raceId].participants.length;
        races[raceId].winner = races[raceId].participants[winnerIndex];
        races[raceId].finished = true;
        emit RaceFinished(raceId, races[raceId].winner);
        
        raceId++;
    }
}
