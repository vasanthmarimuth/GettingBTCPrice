// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract GettingBTCPrice{
    AggregatorV3Interface internal datafeed;

    constructor(){
        address btcusd=0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43;
        datafeed=AggregatorV3Interface(btcusd);
    }   
        uint public roundID;
        int public answer;
        uint public startedAt;
        uint public timeStamp;
        uint80 public answeredInRound;

    function GetLatestFeed()public{
       ( uint80 roundID_,
       int answer_,
        uint startedAt_,
        uint timeStamp_,
        uint80 answeredInRound_
       )=datafeed.latestRoundData();
       roundID=roundID_;
        answer=answer_;
        startedAt=startedAt_;
        timeStamp=timeStamp_;
        answeredInRound=answeredInRound_;
    }
}
