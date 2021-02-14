// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.8.0;

contract Election{
    // Modelling a candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Make a mapping between integer and Candidate struct
    mapping (uint=>Candidate) public candidates;
    uint public candidatesCount;
    constructor () public {
        addCandidate("Donald Duck");
        addCandidate("Mickey Mouse");
    }
    function addCandidate(string memory _name) private{
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}