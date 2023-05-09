// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract UserRegistration {
    
    struct User {
        string name;
        uint age;
        string email;
    }

    mapping(uint => User) public users;

    uint public nextUserId = 1;

    function registerUser(string memory _name, uint _age, string memory _email) public {
        users[nextUserId] = User(_name, _age, _email);
        nextUserId++;
    }

    function getUser(uint _id) public view returns (string memory, uint, string memory) {
        User memory user = users[_id];
        require(bytes(user.name).length > 0, "User not found");
        return (user.name, user.age, user.email);
    }
}