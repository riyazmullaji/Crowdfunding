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


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- This project was inspired by the need for transparent and decentralized fundraising mechanisms.

