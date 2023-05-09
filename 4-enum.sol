// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Enum {

    enum ActionChoices {
        GoLeft, 
        GoRight, 
        GoStraight, 
        SitStill
    }

    ActionChoices public choice;

    function get() public view returns (ActionChoices) {
        return choice;
    }

    function set(ActionChoices _choice) public {
        choice = _choice;
    }

    function goStraight() public {
        choice = ActionChoices.GoStraight;
    }
}
