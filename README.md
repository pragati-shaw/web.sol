<img width="1811" height="927" alt="Screenshot 2025-10-29 145532" src="https://github.com/user-attachments/assets/e8cbaa2a-a3c9-4a53-bb81-c493d6281acc" />

# 🎯 CoinToss Smart Contract
## 📖 Project Description
**CoinToss** is a simple blockchain-based wagering game built using **Solidity**.  
Players can wager ETH (or the native token on a network like CELO) on the outcome of a **virtual coin toss** — **Heads** or **Tails**.  
If they guess correctly, they win **double their wager**. If not, their wager stays in the contract.

This project demonstrates how to:
- Accept and send Ether in Solidity.
- Use pseudo-randomness (for learning purposes).
- Manage ownership and withdrawals securely.

---

## ⚙️ What It Does
1. Players call the `tossCoin()` function and place a wager.
2. The contract uses a **pseudo-random mechanism** to simulate a coin flip.
3. If the player’s guess matches the result, they win **2x** their bet instantly.
4. If not, the wager remains in the contract.
5. The contract owner can withdraw accumulated funds anytime.

---

## ✨ Features
- 💰 **Simple Wager System:** Users send ETH to play a coin toss.
- 🎲 **Pseudo-Random Outcome:** Generates a random result using block variables (for demo purposes only).
- 🔒 **Secure Ownership:** Only the contract owner can withdraw funds.
- 📊 **View Balance:** Anyone can check the current contract balance.
- 🧱 **Beginner Friendly:** Clean and easy-to-understand Solidity code — ideal for learning smart contract basics.

---

## 🌐 Deployed Smart Contract
**Network:** CELO Sepolia Testnet  
**Address:** [`0xB42b6DB3D3c5B086c947747916791EcB6Fcebdc5`](https://celo-sepolia.blockscout.com/address/0xB42b6DB3D3c5B086c947747916791EcB6Fcebdc5)

You can view and interact with the contract on the **Celo Sepolia Block Explorer**.

---

## 🚀 How to Try It
1. Visit [Remix IDE](https://remix.ethereum.org/).
2. Paste the contract code into a new file (e.g., `CoinToss.sol`).
3. Compile it using **Solidity version 0.8.18**.
4. Connect your wallet (set to **Celo Sepolia** network).
5. Deploy the contract or use the already deployed one above.
6. Use the `tossCoin(true/false)` function and send a wager (e.g., 0.01 CELO).
7. Check your wallet to see if you won!

---

## ⚠️ Disclaimer
This contract uses **pseudo-randomness** (`block.timestamp` and `block.prevrandao`) for demonstration purposes only.  
It is **not secure** for real gambling or financial use.  
For production-grade randomness, use **Chainlink VRF** or a verified randomness oracle.

---

## 🧑‍💻 Author
**Pragati Shaw**  
Smart Contract Developer & Blockchain Enthusiast  

---

