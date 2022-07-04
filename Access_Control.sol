pragma solidity ^0.6.0;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20, AccessControl {
bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    constructor(address minter) public ERC20("MyToken", "TKN") {
        _setupRole(MINTER_ROLE, minter);
    }
    
function mint(address to, uint256 amount) public {
      require(hasRole(MINTER_ROLE, msg.sender), "Caller is not a minter");
        _mint(to, amount);
    }
}

