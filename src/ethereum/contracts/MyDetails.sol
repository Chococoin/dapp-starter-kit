pragma solidity ^0.5.0;

contract MyDetails {
   
    mapping (address => string) ipfsHashes;
    mapping (address => uint) timestamp;
    
    function setHash(string memory ipfsHash) public {
       ipfsHashes[msg.sender] = ipfsHash;
       timestamp[msg.sender] = now;
    }

    function getHash(address account) public view returns(string memory, uint) {
      return (ipfsHashes[account], timestamp[account]);
    }

}