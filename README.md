# http://hackthiscontract.io

Includes contracts used to hack various ethereum contracts

erc20: 

A sample ERC20 contract, with a big surprise. A naive user has deposited 0.5 Ether in this contract, and it's your job to make it yours. Your attack will have succeeded when the contract's balance falls below this initial 0.5ETH.

IMPLEMENTATION: recursive calls to drain the wallet of ether
1. Deploy Attacker wallet, with address you want to drain
2. Call Deposit method with any amount of ether (.04)
3. Call withdraw method for total amount, and add extra gas for recursive calls
4. Wallet with 0.05 ether originally will nowonly have 0.01 after recursive call
5. Call the "gimme" function to selfdesruct and send funds back to owner

Coin Flip : 

This contract implements a simple coin flip lottery. You job is to violate this lottery so that one of the players wins regardless of any of the flip decision parameters.

IMPLEMENTATION: In Progress

Lost Ether: 

A greedy programmer has beein impatient and created an ERC20 ICO without any thought. Your job is to violate one of the invariants of an ERC20: an agent deposits to the contract and doesn't get any tokens.

IMPLEMENTATION: In Progress