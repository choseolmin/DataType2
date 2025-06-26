// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract DataType2 {
    // 1. string 상태 변수
    string private message = "Hello, Solidity!";
    function getMessage() public view returns (string memory) {
        return message;
    }
    function setMessage(string memory _msg) public {
        message = _msg;
    }

    // 2. uint256 배열
    uint256[] private numbers;
    function getNumbers() public view returns (uint256[] memory) {
        return numbers;
    }
    function addNumber(uint256 n) public {
        numbers.push(n);
    }
    function getNumber(uint256 idx) public view returns (uint256) {
        return numbers[idx];
    }

    // 3. string 배열
    string[] private names;
    function getNames() public view returns (string[] memory) {
        return names;
    }
    function addName(string memory n) public {
        names.push(n);
    }

    // 4. struct & mapping
    struct User {
        string name;
        uint256 age;
    }
    mapping(address => uint256) private balances;
    mapping(address => User) private users;
    function setBalance(address addr, uint256 amount) public {
        balances[addr] = amount;
    }
    function getBalance(address addr) public view returns (uint256) {
        return balances[addr];
    }
    function setUser(address addr, string memory name, uint256 age) public {
        users[addr] = User(name, age);
    }
    function getUser(address addr) public view returns (string memory, uint256) {
        User memory u = users[addr];
        return (u.name, u.age);
    }

    // 5. bytes
    bytes private dynamicData;
    function getDynamicData() public view returns (bytes memory) {
        return dynamicData;
    }
    function setDynamicData(bytes memory data) public {
        dynamicData = data;
    }
    bytes32 private fixedData = 0xabcdef1234560000000000000000000000000000000000000000000000000000;
    function getFixedData() public view returns (bytes32) {
        return fixedData;
    }
    function setFixedData(bytes32 data) public {
        fixedData = data;
    }

    // 6. getDetails 함수
    function getDetails() public view returns (
        string memory,
        uint256[] memory,
        string[] memory,
        bytes32,
        bytes memory
    ) {
        return (message, numbers, names, fixedData, dynamicData);
    }
}