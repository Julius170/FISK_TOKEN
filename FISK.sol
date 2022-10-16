pragma solidity ^0.8.5;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol"
contract FISK is solidity{
    address public admin;


    contructor() ERC20("FISK", "FSK") {
         _mint(msg.sender, 1000000 * 10 ** 10);
    }

    function mint(address to, uint amount) external {
        require(msg.sender == admin, "Only Admin")
        _mint(to, amount);
    }

}