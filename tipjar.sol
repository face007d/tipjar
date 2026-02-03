// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract Tips {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // 1. Put fund in smart contract
    function addTips() public payable {
        // รับ ETH เข้ามาเก็บใน contract
    }

    // 2. View balance
    function viewTips() public view returns (uint) {
        return address(this).balance;
    }

    // 3.1 Structure for a Waitress
    struct Waitress {
        address payable walletAddress;
        string name;
        uint percent;
    }

    // 4. List of all waitresses
    Waitress[] public waitress;

    // (เสริม) เพิ่ม waitress
    function addWaitress(
        address payable _walletAddress,
        string memory _name,
        uint _percent
    ) public {
        require(msg.sender == owner, "Only owner");
        waitress.push(Waitress(_walletAddress, _name, _percent));
    }

    // 5. View waitress
    function viewWaitress() public view returns (Waitress[] memory) {
        return waitress;
    }
}
