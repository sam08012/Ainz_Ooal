# DEMOCRACY DECENTRALIZED

## Chimocracy Voting Smart Contract
This is a Solidity smart contract that provides a voting mechanism for democratic elections. The smart contract allows eligible voters to cast their votes for a single candidate, and the votes are stored on the blockchain, ensuring transparency and immutability in the election process. The smart contract also allows the election results to be computed immediately after the voting ends.

## Features
* Transparent and immutable voting mechanism
* Only eligible voters can cast their votes
* Each voter can only cast one vote for a single candidate
* Candidates' information is stored on the blockchain for transparency
* Results are available immediately after the election ends

## How to use
**To use the Chimocracy Voting Smart Contract, follow these steps:**
1. Deploy the smart contract on the Ethereum blockchain using any compatible Ethereum browser [MetaMask](https://metamask.io/)
2. Add eligible voters to the smart contract using the **'addVoter'** function
3. Add the candidates to the smart contract using the **'addCandi'** function
4. Allow the voters to cast their votes using the **'castVote'** function
5. Wait for the voting to end and get the results using the **'getresult'** function

## Working on
While the Chimocracy Voting Smart Contract provides a basic implementation of a voting mechanism, it has some limitations need to be addressed:

* Lack of authentication: The smart contract does not implement any authentication mechanism to verify the identity of the voters, which could lead to potential voter fraud.
* Lack of scalability: The smart contract does not scale well for large-scale elections, as the number of candidates and voters increases, the gas costs for the contract transactions may become prohibitively expensive.
* Lack of accessibility: The smart contract is not easily accessible to non-technical users, as it requires knowledge of Ethereum blockchain and Solidity programming language to deploy and use the contract

## License
This project is licensed under the MIT License.
