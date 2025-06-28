// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {Storage} from "../src/SimpleStorage.sol";

contract DeployedSimpleStorage is Script {
    function run() external returns (Storage) {
        vm.startBroadcast();
        Storage newstorage = new Storage();

        vm.stopBroadcast();
        return newstorage;
    }
}
