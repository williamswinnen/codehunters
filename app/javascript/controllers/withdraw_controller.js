import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="withdraw"
export default class extends Controller {
  connect() {
    console.log("ueeeesh");
    let account;
  }


  connectMetamask = async() => {
      if(window.ethereum !== "undefined") {
          const accounts = await ethereum.request({method: "eth_requestAccounts"});
          console.log("ouesh2")
          let account = accounts[0];
          document.getElementById("userArea").innerHTML = `User Account: ${account}`;
      }
  }

  connectContract = async () => {
      const ABI = [
          {
              "inputs": [],
              "name": "deposit",
              "outputs": [],
              "stateMutability": "payable",
              "type": "function"
          },
          {
              "inputs": [
                  {
                      "internalType": "address payable",
                      "name": "_to",
                      "type": "address"
                  },
                  {
                      "internalType": "uint256",
                      "name": "_amount",
                      "type": "uint256"
                  }
              ],
              "name": "withdraw",
              "outputs": [],
              "stateMutability": "nonpayable",
              "type": "function"
          },
          {
              "inputs": [],
              "name": "getAddress",
              "outputs": [
                  {
                      "internalType": "address",
                      "name": "",
                      "type": "address"
                  }
              ],
              "stateMutability": "view",
              "type": "function"
          },
          {
              "inputs": [],
              "name": "getBalance",
              "outputs": [
                  {
                      "internalType": "uint256",
                      "name": "",
                      "type": "uint256"
                  }
              ],
              "stateMutability": "view",
              "type": "function"
          }
      ];
      const Address = "0x8A6B0807949932dd6550A728aF4443156bC82C71";
      window.web3 = await new Web3(window.ethereum);
      //console.log(window.web3);
      window.contract = await new window.web3.eth.Contract(ABI, Address);
      console.log(window.contract);
      document.getElementById("contractArea").innerHTML = "Connected to Contract";
  }

  getContractAccount = async () => {
      const data = await window.contract.methods.getAddress().call();
      console.log(data);
      document.getElementById("contractAccount").innerHTML = `Connected to contract Account: ${data}`;
  }

  getBalanceApple = async () => {
      const data = await window.contract.methods.getBalance().call();
      document.getElementById("balanceArea").innerHTML = `Contract Balance: ${data}`;
  }

  depositContract = async () => {
      const accounts = await ethereum.request({method: "eth_requestAccounts"});
          console.log("oueshdeposit")
      let account = accounts[0];
      const amount = document.getElementById("depositInput").value;
      await window.contract.methods.deposit().send({from: account, value: amount});
  }

  withdraw = async () => {
    console.log("pouetWithdraw")
    //const amount = document.getElementById("amountInput").value; // get amoubt from validation view
    const accounts = await ethereum.request({method: "eth_requestAccounts"});
    let account = accounts[0];
    const button = document.getElementById('button-pay');
    console.log(button)
    const amount = parseInt(button.dataset.bountyPrice);
    const address = button.dataset.adress;
    console.log(amount)
    //const address = document.getElementById("addressInput").value; // get address from validation view
    await window.contract.methods.withdraw(address, amount).send({from: account});
  }

}
