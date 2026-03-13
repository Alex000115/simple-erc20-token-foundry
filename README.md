# Simple ERC-20 Token (Foundry)

This repository contains a high-quality, secure implementation of a standard ERC-20 token on the Ethereum blockchain. It leverages the industry-standard OpenZeppelin libraries to ensure security and compatibility with all major exchanges and wallets.

### Features
* **Mintable:** Allows the owner to create new tokens.
* **Burnable:** Allows users to destroy their own tokens to reduce supply.
* **Secure:** Built using OpenZeppelin's audited smart contract templates.
* **Modern Tooling:** Designed for use with Foundry for lightning-fast testing and deployment.

### Quick Start
1. Install Foundry: `curl -L https://foundry.paradigm.xyz | bash`
2. Build the contract: `forge build`
3. Run tests: `forge test`

### Deployment
To deploy to a testnet (e.g., Sepolia):
```bash
forge create --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY> MyToken.sol:MyToken
