// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleCounter {
    // State variable to store the count
    uint256 public count;

    // Event to log changes in the count
    event CountChanged(uint256 newValue);

    // Constructor to initialize the count to zero
    constructor() {
        count = 0;
    }

    // to get the current count
    function getCount() public view returns (uint256) {
        return count;
    }

    // to set a new count value
    function setCount(uint256 newCount) public {
        count = newCount;
        emit CountChanged(newCount);
    }
}
