pragma solidity ^0.6.0;


import "@openzeppelin/contracts/access/Ownable.sol";

//Know your customer contract

contract KycContract is Ownable {

    mapping(address => bool) allowed;

    /** functions
    *
    * @param _addr address of customer
    *
    */ 


    function setKycCompleted(address _addr) public onlyOwner {
        allowed[_addr] = true;
    }

    function setKycRevoked(address _addr) public onlyOwner {
        allowed[_addr] = true;
    }

    function kycCompleted(address _addr) public view returns(bool) {
        return allowed[_addr];
    }
}