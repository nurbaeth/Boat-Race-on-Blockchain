# Boat Race on Blockchain

🚤 **Boat Race on Blockchain** is a decentralized boat racing game built on Solidity. Players can register, compete in races, and see who reaches the finish line first—all secured by smart contracts!

## Features
- **On-Chain Racing**: Fully transparent and immutable race results.
- **Decentralized Gameplay**: No central authority—just smart contract logic.
- **Randomized Winner Selection**: Uses blockchain randomness for fair results.

## How It Works
1. Players register for the race.
2. The race starts when enough participants join.
3. The contract randomly determines a winner.
4. The results are stored immutably on-chain. 

## Installation
1. Clone this repository:
   ```sh 
   git clone https://github.com/yourusername/boat-race-blockchain.git
   cd boat-race-blockchain
   ```
2. Compile the contract:
   ```sh
   forge build
   ```
3. Deploy the contract using Hardhat or Foundry.

## Usage
- Call `register()` to join a race.
- Call `startRace()` to begin.
- Call `finishRace()` to determine the winner.

## License
MIT License
