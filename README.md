
---

## 💖 **Donation Pool for Charity**  

A simple and secure **Ethereum smart contract** deployed on **EduChain** for managing charitable donations. This contract ensures a transparent donation process by allowing anyone to contribute funds, while restricting withdrawals exclusively to the owner (the first donor).  

---

### 🌐 **Deployed Contract Address (EduChain):**  
🔗 [0xEDa3c8f66A50B6a30B3F9566903DcFa48F3498Aa](https://explorer.opencampus.xyz/address/0xEDa3c8f66A50B6a30B3F9566903DcFa48F3498Aa)  

---

### 🚀 **Features**  
- 💵 **Open Donations:** Anyone can donate Ether directly to the contract.  
- 🔒 **Owner-Only Withdrawals:** Only the first donor (owner) can withdraw the collected funds.  
- 🌟 **Automatic Ownership:** The first person to donate becomes the owner—no constructor required.  
- 📊 **Real-Time Fund Tracking:** Check the total balance in the pool at any time.  
- ⚡ **Gas Efficient:** Designed with minimal functions for low gas usage.  
- 🌐 **Deployed on EduChain:** Fast and cost-effective transactions using **EduChain**.  

---

### 💻 **Smart Contract Code**  
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DonationPool {
    address public owner;

    // Set the deployer as the owner (first donor)
    function setOwner() internal {
        if (owner == address(0)) {
            owner = msg.sender;
        }
    }

    // Receive donations
    receive() external payable {
        setOwner();
    }

    // Withdraw all funds (only by owner)
    function withdraw() external {
        require(msg.sender == owner, "Only owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }

    // View current contract balance
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
```

---

### ⚙️ **How to Use**  

#### 🔧 **Deployment**  
- The contract is already deployed on **EduChain** at:  
  🔗 [0xEDa3c8f66A50B6a30B3F9566903DcFa48F3498Aa](https://explorer.opencampus.xyz/address/0xEDa3c8f66A50B6a30B3F9566903DcFa48F3498Aa)  
- For local deployment, you can use **Remix IDE** and simply deploy the contract (no constructor inputs required).

#### 💸 **Donate**  
- Send Ether directly to the deployed address above.  
- The **first donor** becomes the **owner** of the contract.  

#### 🏦 **Withdraw Funds**  
- Only the **owner** can withdraw all collected funds by calling the `withdraw()` function.  

#### 📈 **Check Balance**  
- Call the `getBalance()` function anytime to view total funds stored.  

---

### 🔐 **Security Considerations**  
- 🔒 **Ownership Protection:** Only the first donor (owner) can withdraw the funds.  
- 💎 **No External Imports:** Pure Solidity implementation for enhanced security.  
- ⚡ **Low Gas Fees:** Efficient transactions, especially on **EduChain**.  

---

### 🌟 **Future Improvements**  
- ⏳ **Time-Locked Withdrawals:** Release funds only after specific time periods.  
- 📝 **Donation History Logging:** Record all donations via event tracking.  
- 🏦 **Partial Withdrawals:** Enable the owner to withdraw funds partially.  
- 🔗 **Multi-Sig Support:** Add multi-signature authentication for withdrawal actions.  

---

### 🤝 **Contributing**  
Contributions are welcome! Feel free to:  
- 🍴 Fork this repository  
- 🛠 Open issues for feedback  
- 🚀 Submit pull requests for enhancements  

---

### 📝 **License**  
This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.  

---

### 🌐 **Connect With Me**  
- 💬 GitHub: [Shaurya01836](https://github.com/Shaurya01836)  
- 🚀 **EduChain Contract:** [View on EduChain Explorer](https://explorer.opencampus.xyz/address/0xEDa3c8f66A50B6a30B3F9566903DcFa48F3498Aa)  

---

