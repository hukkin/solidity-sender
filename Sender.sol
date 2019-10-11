pragma solidity ^0.4.11;

contract Token {
    function balanceOf(address a) public returns (uint) {
        (a);
        return 0;
    }

    function transfer(address a, uint val) public returns (bool) {
        (a);
        (val);
        return false;
    }
}

contract Sender {
    
    function () public payable { }

    function sendEther(address _to, uint _amount) public {
        if(!_to.call.value(_amount)()) {
            throw;
        }
    }
    
    function sendToken(address _token, address _to, uint _amount) public {
        Token token = Token(_token);
        token.transfer(_to, _amount);
    }
}
