# Crowdfunding Smart Contract

## Overview

This repository contains a Solidity smart contract for implementing a basic crowdfunding system on the Ethereum blockchain. The smart contract allows users to contribute Ether to fund a project. It also enables the project owner to close the campaign and withdraw the funds once the funding goal is met.

## Technology Stack

- **Solidity**: Solidity is a high-level language used for implementing smart contracts on the Ethereum Virtual Machine (EVM). It is statically typed and supports inheritance, libraries, and complex user-defined types.

- **Ganache**: Ganache is a personal Ethereum blockchain for rapid development and testing. It provides a local blockchain environment where you can deploy contracts, develop applications, and run tests.

- **MetaMask**: MetaMask is a browser extension that allows users to interact with Ethereum-based decentralized applications (DApps) directly from their web browsers. It serves as an Ethereum wallet, enabling users to manage their accounts and interact with smart contracts.

## Smart Contract Details

- **Crowdfunding.sol**: This file contains the Solidity code for the crowdfunding smart contract. Here's a brief overview of the contract's functionalities:
  - **Contribution**: Users can contribute Ether to the crowdfunding campaign by calling the `contribute` function and sending Ether along with the transaction.
  - **Withdrawal**: Contributors can withdraw their contributions if the campaign is still open and the funding goal has not been met.
  - **Campaign Management**: The owner of the campaign can close the campaign once the funding goal is reached or the campaign duration expires. After closing the campaign, the owner can withdraw the funds raised.

## Getting Started

To get started with this project, follow these steps:

1. **Ganache Setup**:
   - Download and install Ganache from [here](https://www.trufflesuite.com/ganache).
   - Run Ganache to start a local Ethereum blockchain.

2. **MetaMask Setup**:
   - Install the MetaMask browser extension from [here](https://metamask.io/).
   - Create a new MetaMask wallet or import an existing one.

3. **Configuring with Local Ganache Network**:
   - Open MetaMask and click on the network selection dropdown.
   - Choose "Custom RPC" and enter the RPC server URL provided by Ganache (usually `http://127.0.0.1:7545`).
   - Save the network configuration.

4. **Adding Test Accounts**:
   - In MetaMask, import the test accounts provided by Ganache. These accounts will have test Ether preloaded for testing purposes.

5. **Pasting Code on Remix IDE**:
   - Go to the Remix IDE website [here](https://remix.ethereum.org/).
   - Create a new file and paste the content of `Crowdfunding.sol` into it.

6. **Compile the Smart Contract**:
   - In Remix IDE, make sure to select compiler version 0.8.0 from the dropdown at the top right corner.
   - Click on the "Solidity Compiler" tab and then click "Compile" to compile the smart contract.

7. **Deploy the Smart Contract**:
   - Click on the "Deploy & run transactions" tab.
   - Select "Injected Web3" as the environment to connect to MetaMask.
   - Click "Deploy" to deploy the smart contract to your local Ganache blockchain using MetaMask.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- This project was inspired by the need for transparent and decentralized fundraising mechanisms.

