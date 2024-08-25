// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TutoringToken {
    string public name = "TutoringToken";
    string public symbol = "TT";
    uint8 public decimals = 18;
    uint256 public totalSupply;
    address public owner;

    // Mappings to keep track of balances and allowances
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
    mapping(address => uint256) public points;
    mapping(address => uint256) public freeClasses;

    // Events
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Mint(address indexed to, uint256 value);

    // Modifier to restrict access to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    // Constructor
    constructor() {
        owner = msg.sender;
        _mint(owner, 1000000 * 10 ** decimals); // Mint initial supply
    }

    // Function to mint new tokens
    function _mint(address to, uint256 amount) internal {
        totalSupply += amount;
        balanceOf[to] += amount;
        emit Mint(to, amount);
    }

    // Transfer function
    function transfer(address to, uint256 amount) public returns (bool) {
        require(balanceOf[msg.sender] >= amount, "Insufficient balance");
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
        emit Transfer(msg.sender, to, amount);
        return true;
    }

    // Function to approve an address to spend tokens on behalf of the sender
    function approve(address spender, uint256 amount) public returns (bool) {
        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    // Function to transfer tokens on behalf of another address
    function transferFrom(address from, address to, uint256 amount) public returns (bool) {
        require(balanceOf[from] >= amount, "Insufficient balance");
        require(allowance[from][msg.sender] >= amount, "Allowance exceeded");
        balanceOf[from] -= amount;
        balanceOf[to] += amount;
        allowance[from][msg.sender] -= amount;
        emit Transfer(from, to, amount);
        return true;
    }

    // Function to reward a student and check for free classes
    function rewardStudent(address student) public onlyOwner {
        points[student] += 10;
        
        if (points[student] % 1000 == 0) {
            freeClasses[student] += 2;
        }
        
        _mint(msg.sender, 10 * 10 ** decimals); // Mint tokens for the tutor
    }

    // Function to use a free tutoring class
    function useFreeClass() public {
        require(freeClasses[msg.sender] > 0, "No free classes available");
        freeClasses[msg.sender] -= 1;
    }
}