pragma solidity ^0.4.17;

contract Inbox {
    string public message;
    
    // previously function Inbox(string initialMessage) public { 
    // -> depricated
    constructor(string initialMessage) public {
        message = initialMessage;
    }
    
    function setMessage(string newMessage) public {
        message = newMessage;
    }

    function getBadMessage() public view returns (string) {
        // message = "1"; // vialates the declaration as "view" = read only
        return message; // output will be "1" but message does not change
    }
    
    function functionCallWithALongName() public view returns (string) {
        return "this is a message";
    }

    function getRealMessage() public view returns (string) {
        return message; // returns the real message
    }
}