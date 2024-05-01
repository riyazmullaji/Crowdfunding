// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract Crowdfunding {
    using SafeMath for uint256;

    address public owner;
    uint256 public fundingGoal;
    bool public campaignClosed;
    mapping(address => uint256) public contributors;
    mapping(address => bool) public hasContributed;
    
    event FundReceived(address indexed contributor, uint256 amount);
    event CampaignClosed(uint256 totalFunds);

    constructor(uint256 _fundingGoal) {
        owner = msg.sender;
        fundingGoal = _fundingGoal;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    modifier campaignOpen() {
        require(!campaignClosed, "Campaign is closed");
        _;
    }

    function contribute() external payable campaignOpen {
        require(msg.value > 0, "Contribution amount must be greater than 0");
        contributors[msg.sender] = contributors[msg.sender].add(msg.value);
        hasContributed[msg.sender] = true;
        emit FundReceived(msg.sender, msg.value);
    }

    function withdrawContribution() external {
        require(hasContributed[msg.sender], "You have not contributed to the campaign");
        require(!campaignClosed, "Campaign is closed");
        uint256 contribution = contributors[msg.sender];
        contributors[msg.sender] = 0;
        payable(msg.sender).transfer(contribution);
    }

    function closeCampaign() external onlyOwner {
        require(!campaignClosed, "Campaign is already closed");
        campaignClosed = true;
    }

    function withdrawFunds() external onlyOwner {
        require(campaignClosed, "Campaign must be closed before funds can be withdrawn");
        payable(owner).transfer(address(this).balance);
    }
}
