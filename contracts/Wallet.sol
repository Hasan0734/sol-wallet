// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

contract Wallet {
 
    string public name = "wallet";    //read
    uint num;


    function setValue(uint _num) public {
        num = _num;
    }
    //read
    function getValue() public  view  returns (uint){
        return  num;
    }

    function sendEthContract() public payable {}

    //read
    function contractBalance() public view  returns (uint){
        return  address(this).balance;
    }

    function sendEthUser (address payable  _user, uint _amount) public payable   {
            require(address(this).balance >= _amount, "Insaficient amount");
            _user.transfer(_amount);

    }
    //read
    function accountBalance(address _address) public view  returns (uint){
        return (_address).balance;
    }
}


//0x3c6730ab4899d0e20ec343d7bcfa38c4e0e47680
