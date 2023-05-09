// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract UserRegistration {
    
    struct User {
        uint id;
        string name;
        uint age;
        string email;
    }

    User[] public users;

    function registerUser(string memory _name, uint _age, string memory _email) public {
        uint id = users.length + 1;
        User memory newUser = User(id, _name, _age, _email);
        users.push(newUser);
    }

    function getUser(uint _id) public view returns (uint, string memory, uint, string memory) {
        require(_id > 0 && _id <= users.length, "Invalid user ID");
        User memory user = users[_id - 1];
        return (user.id, user.name, user.age, user.email);
    }
}
