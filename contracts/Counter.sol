// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;



contract Counter {
    uint private count;
    struct User {
        string name;
        uint age;
    }
    function set_value(uint _value) external {
        count = _value;
    }

    function get_value() external view returns (uint) {
        return count;
    }
    function get_user() external pure returns (User memory) {
        return User("Jack", 50);
    }
}
