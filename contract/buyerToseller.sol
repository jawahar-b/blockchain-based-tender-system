// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;
contract bTs{
    address payable buyer;
    uint count=0;
    struct Items{
        string[] emails;
        string item;
        string quantity;
        bool Accepted;
        uint p;
    }
    struct Sellers{
        string order;
        string quote;
        uint[] n;
    }
    mapping(uint=>Items) B;
    mapping(string=>Sellers) tendor;
    function addSeller(string memory email)public{
            tendor[email].order="";
            tendor[email].quote="";
            tendor[email].n;

    }
    function setItems(string[] memory _emails,string memory _item)public{
        B[count].emails=_emails;
        B[count].item=_item;
        B[count].p=count;
        B[count].Accepted=false;
        for(uint i=0;i<_emails.length;i++){
            tendor[_emails[i]].n.push(count);
        }
        count++;        
    }
    function getAllItems(string memory mail)public view returns(uint[] memory arr){
        return tendor[mail].n;
    }
    function getItem(uint id)public view returns(string memory){
        return B[id].item;
    }
    function setQuote(string memory _quote,string memory id,string memory _email)public{
        id=string.concat("  ",id);
        id=string.concat((id)," ");
        id=string.concat(id,_quote);
        tendor[_email].quote=string.concat(tendor[_email].quote,id);
    }
    function getQuote(uint id)public view returns(string[] memory,string[] memory){
        uint i;
        string[] memory str=B[id].emails;
        string[] memory q=new string[](B[id].emails.length);
        for(i=0;i<str.length;i++){
           q[i]=(tendor[str[i]].quote);
         }
        return (q,B[id].emails);
    }
    // function getQuotes()public view returns(string[] memory){
    //     string[] memory arr;
    //     for(uint i=0;i<count;i++){
    //         arr[i]=B[i].item;
    //     }
    //     return arr;
    // }
     function getQuotes()public view returns(uint){
        return count-1;
    }
    function Accepted(uint id,string memory mail) public{
        B[id].Accepted=true;
        for(uint i=0;i<B[id].emails.length;i++){
            if(keccak256(abi.encodePacked(mail)) != keccak256(abi.encodePacked(B[id].emails[i]))){
                delete B[id].emails[i];
            }
        }


    }
    function isAccepted(uint id)public view returns(bool){
        return  B[id].Accepted;
    }
     function isPresent(uint id,string memory mail)public view returns(bool){
         bool flag=false;
         for(uint i=0;i<B[id].emails.length;i++){
             if(keccak256(abi.encodePacked(mail)) == keccak256(abi.encodePacked(B[id].emails[i]))){
                 flag=true;                                                                                                                                                                                                                                                                                                                                 
                 break;
             }
         }
         return flag;
    }
    function getMyQuotes(string memory mail)public view returns (string memory){
        return tendor[mail].quote;
    }
}
