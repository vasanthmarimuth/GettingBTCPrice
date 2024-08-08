# GettingBTCPrice
This Solidity smart contract fetches the latest real-time price of Bitcoin (BTC) in USD using Chainlink's `AggregatorV3Interface`. The contract interacts with the Chainlink data feed to retrieve up-to-date pricing information directly on the Ethereum blockchain.

## Features

- Fetches the latest Bitcoin price in USD.
- Stores additional data from the latest round, including round ID, start time, timestamp, and the round ID in which the answer was computed.
- Utilizes Chainlink's decentralized oracle network for reliable and tamper-proof data.

## Contract Details

- **Solidity Version:** ^0.8.10
- **Data Feed Address:** 0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43 (BTC/USD on Ethereum)

## Getting Started

### Prerequisites

- **Solidity Compiler:** Version 0.8.10 or higher
- **Node.js & npm:** Required for development environment
- **Hardhat or Truffle:** For compiling and deploying the contract
- **Metamask Wallet:** For interacting with the deployed contract

### Installation

1. **Clone the Repository:**

   git clone https://github.com/vasanthmarimuth/GettingBTCPrice.git
   cd GettingBTCPrice

### Contract Overview
The GettingBTCPrice contract initializes the Chainlink BTC/USD price feed in its constructor. The GetLatestFeed function fetches the latest price and stores it in public state variables, making it accessible to other contracts or external entities.

### Usage
## Deploy the Contract:

Deploy the contract on a testnet (e.g., Rinkeby) or mainnet using your preferred method (Remix, Hardhat, Truffle).

## Interact with the Contract:

Call the GetLatestFeed function to fetch and store the latest Bitcoin price and related data. The results can be accessed via the following public state variables:

roundID: The ID of the current round.
answer: The latest BTC price.
startedAt: The timestamp when the current round started.
timeStamp: The timestamp when the BTC price was last updated.
answeredInRound: The round ID in which the price was last computed.

### License
This project is licensed under the MIT License.

### Contributing
Feel free to open issues or submit pull requests for enhancements or bug fixes.

### Acknowledgments
Chainlink: For providing decentralized oracles and data feeds.
Ethereum Community: For fostering the development of decentralized applications.
