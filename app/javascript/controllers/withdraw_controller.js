import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="withdraw"
export default class extends Controller {
  static targets =["connectContract", "depositButton"]

  connect() {
    console.log("ueeeesh");
    let account;
    this.connectMetamask();
    this.connectContract();
  }



  connectMetamask = async() => {
    if(window.ethereum !== "undefined") {
        const accounts = await ethereum.request({method: "eth_requestAccounts"});
        console.log("ouesh2")
        let account = accounts[0];
        document.getElementById("userArea").innerHTML = `${account}`;
    }
  }

  connectContract = async() => {
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
    const Address = "0xC06162c3A7417DFd98276A816f37517F1E1724aE";
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
      this.connectContractTarget.classList.add("d-none")
      this.depositButtonTarget.classList.remove("d-none")
  }

  getBalanceApple = async () => {
      const data = await window.contract.methods.getBalance().call();
      document.getElementById("balanceArea").innerHTML = `Contract Balance: ${data}`;
  }

  depositContract = async () => {
    const options = {
      transactionConfirmationBlocks: 1,
      transactionBlockTimeout: 5
    };
    const web3 = new Web3(window.ethereum, null, options);
    const accounts = await ethereum.request({method: "eth_requestAccounts"});
    let account = accounts[0];
    const amount = document.getElementById("depositInput").value;
    const amountWei = web3.utils.toWei(String(amount), 'ether');
    await window.contract.methods.deposit().send({from: account, value: amountWei});
  }

  withdraw = async () => {
    console.log("pouetWithdraw")
    //const amount = document.getElementById("amountInput").value; // get amoubt from validation view
    const accounts = await ethereum.request({method: "eth_requestAccounts"});
    let account = accounts[0];
    const button = document.getElementById('button-pay');
    console.log(button)
    let amount = button.dataset.bountyPrice;
    let address = button.dataset.adress;
    console.log("amount")
    console.log(amount)
    console.log("address")
    console.log(address)
    console.log("account")
    console.log(account)

    //const address = document.getElementById("addressInput").value; // get address from validation view
    await window.contract.methods.withdraw(address, amount).send({from: account});
  }

}
