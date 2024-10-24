// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

contract Wallet {
    string public name = "wallet";
    uint num;

    function setValue(uint _num) public {
        num = _num;
    }

    function getValue() public  view  returns (uint){
        return  num;
    }

    function sendEthContract() public payable {}

    function contractBalance() public view  returns (uint){
        return  address(this).balance;
    }

    function sendEthUser (address payable  _user, uint _amount) public payable   {
            _user.transfer(_amount);

    }

    function accountBalance(address _address) public view  returns (uint){
        return (_address).balance;
    }
}