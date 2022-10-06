// SPDX-License-Identifier: GPL-3.0

pragma solidity <0.6.0;

// Adapted for Solidity v. 0.4.17 to run Oyente properly
contract rngTest {

    uint public rng;

    // Weak RNG functions
    function takeAGuess() external{
      rng = uint256(block.blockhash(10000)) % 10;
    }
    function takeAnotherGuess() external{
      rng = uint256(block.timestamp) % 50;
    }
    function takeAGuessNow() external{
      rng = uint256(now) % 99;
    }
}
