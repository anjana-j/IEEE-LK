pragma solidity ^0.8.0;

contract EnergyTrading {
    enum UserGroup {
        Consumer,
        Producer,
        Prosumer,
        Retailer
    }

    struct User {
        uint256 userId;
        UserGroup userType;
    }

    struct IoTData {
        uint256 userId;
        uint256 timestamp;
        uint256 importValue;
        uint256 exportValue;
        uint256 generationValue;
    }

    struct EnergyTransfer {
        uint256 consumerId;
        uint256 producerId;
        uint256 energyValue;
        uint256 remainingValue;
    }

    mapping(uint256 => User) public users;
    mapping(uint256 => mapping(uint256 => IoTData)) private iotData;
    EnergyTransfer[] public energyTransfers;

    event UserAdded(uint256 userId, UserGroup userType);
    event IoTDataAdded(uint256 userId, uint256 timestamp, uint256 importValue, uint256 exportValue, uint256 generationValue);
    event EnergyTransferAdded(uint256 consumerId, uint256 producerId, uint256 energyValue);

    function addUser(uint256 userId, UserGroup userType) public {
        require(users[userId].userId == 0, "User already exists");
        users[userId] = User(userId, userType);
        emit UserAdded(userId, userType);
    }

    function addIoTData(uint256 userId, uint256 timestamp, uint256 importValue, uint256 exportValue, uint256 generationValue) public {
        require(users[userId].userId != 0, "User does not exist");
        require(iotData[userId][timestamp].userId == 0, "IoT data already exists for this user and timestamp");

        IoTData memory newIoTData = IoTData(userId, timestamp, importValue, exportValue, generationValue);
        iotData[userId][timestamp] = newIoTData;

        emit IoTDataAdded(userId, timestamp, importValue, exportValue, generationValue);
    }

    function addEnergyTransfer(uint256 consumerId, uint256 producerId, uint256 energyValue) public {
        require(users[consumerId].userId != 0, "Consumer does not exist");
        require(users[producerId].userId != 0, "Producer does not exist");

        uint256 remainingValue = energyValue;
        EnergyTransfer memory newEnergyTransfer = EnergyTransfer(consumerId, producerId, energyValue, remainingValue);
        energyTransfers.push(newEnergyTransfer);

        emit EnergyTransferAdded(consumerId, producerId, energyValue);
    }
}
