// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract chimocracy{
    uint candidatenum=0; uint voternum=0; bool initial=false; // declaring variables to keep count of diffrent parameters
    // defining structure of a voter
    struct Person{
        string Name;
        string Fathers_Name;
        string Gender;
        string DOB;
        string card_no;
    }

    // creating array of voters
    Person[] private voter;
    
    function addVoter(string memory _Name,string memory _Fathers_Name,string memory _gender,string memory _DOB,string memory _card_no) public
    {
        voter.push(Person(_Name,_Fathers_Name,_gender,_DOB,_card_no));
        voternum++;
    }

    // code to display voters list and there credentials
       function voterlist() public view returns(Person[] memory)
    {
        return voter;
    }

// defining struct of a candidate
    struct candidate{
        string cadidate_name;
        string Affliation;
        uint voteCount;
    }
//  creating array of candidates
    candidate[] private candin;
    function addCandi(string memory candin_name,string memory _affliation, uint _votecount) public
    {
        candin.push(candidate(candin_name,_affliation,0));
        candidatenum++;
    }
    // code to display candidates list and votes they got after voting ends.
    function Candidatelist() public view returns(candidate[] memory)
    {
        return candin;
    }

// code to cast votes

function castVote(uint256 candidateIndex) public {
    require(voternum > 0, "Voting has ended.");
    require(candidateIndex < candin.length, "Invalid candidate index");
    candin[candidateIndex].voteCount++;
     voternum--; 
     initial=true;  //   to check if voting has started

}
// code to find winner
   function getresult() public view returns(string memory)
   {
          require(initial,"Voting not started");  
        uint c;
       uint max=0;
       for(uint i=0;i<candidatenum;i++)
       {
           if(candin[i].voteCount>max)
           {
               max=candin[i].voteCount;
               c=i;
           }
         }        /*_winner = candin[c].candidate_name;*/
         
         return candin[c].cadidate_name;
   }


}