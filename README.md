## Blockchain Based Tender System

![Design](/design/sequence.png)

### Prerequisites

- [npm](https://www.npmjs.com/)
- [NodeJS](https://nodejs.org/)
- [Ganache test network](https://trufflesuite.com/ganache/)
- [MetaMask](https://metamask.io/download/)
- [Remix](https://remix.ethereum.org/)

### Usage

1. Clone the repository
```bash
git clone git@github.com:jawahar-b/blockchain-based-tender-system.git
```
2. Move to this directory
```bash
cd blockchain-based-tender-system
```
3. Setup the connection between Ganache and MetaMask.
4. Compile and deploy buyerToseller.sol on [Remix](https://remix.ethereum.org/)

    If there is any issue with the deployment of the smart contract on Remix, then try the following:

    - In the compilation stage, go to Advanced Configuration and change the EVM version from default to another version, like london.
    - In the deployment stage, make sure you have connected to MetaMask.

5. After successful deployment of the smart contract, copy the contract address.
6. Paste the contract address as the value for **Address** field in the following files present in the frontend directory - sellerDashboard.html, buyerDashboard.html, sellers.html, Quotes.html, MyRequests.html, sellerMultiReqs.html
7. Install the dependencies in local node_modules folder. 
```bash 
npm install
```
8. Start server.js 
```bash
node server.js
```
9. Open browser and run localhost:6002

### Designed & developed by 

[Jawahar Balachandher](https://github.com/jawahar-b)

[Manvi Pruthi](https://github.com/Manvi-1104)

[Meera Rao](https://github.com/MeeraRao3)

