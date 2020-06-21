pragma solidity >=0.5.0;

contract BuyItem {
    
    address[16] public buyer;    //this is a dynamic array

    function buy(uint itemId) public returns (uint) {
        require(itemId >= 0 && itemId <= 15);
        buyer[itemId] = msg.sender;
        return itemId;   
        //If the ID is in range, we then add the address that made the call to our buyer array.
        // The address of the person or smart contract who called this function is denoted by msg.sender.
    }

    // Retrieving the buyer
    function getbuyer() public view returns (address[16] memory) {
        return buyer;
    }

}