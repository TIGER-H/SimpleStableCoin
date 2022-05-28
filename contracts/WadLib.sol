// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library WadLib {
    uint256 public constant MULTIPLIER = 10**18;

    // struct Wad {
    //     uint256 value;
    // }

    type Wad is uint256;

    function mulWad(uint256 number, Wad wad) pure internal returns (uint256) {
        return (number * Wad.unwrap(wad)) / MULTIPLIER;
    }

    function divWad(uint256 number, Wad wad) pure internal returns (uint256) {
        return (number * MULTIPLIER) / Wad.unwrap(wad);
    }

    function fromFraction(uint256 numerator, uint256 denominator)
        pure
        internal
        returns (Wad)
    {
        if (denominator == 0) {
            return Wad.wrap(0);
        }
        return Wad.wrap((numerator * MULTIPLIER) / denominator);
    }
}
