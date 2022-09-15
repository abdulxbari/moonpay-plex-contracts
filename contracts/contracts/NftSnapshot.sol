// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NftSnapshot {

  function snapshotUsers(address _nftAddress, uint256[] calldata _tokenIds) public view returns (address[] memory) {
    address[] memory owners = new address[](_tokenIds.length);
    for (uint256 i; i < _tokenIds.length; i++) {
      owners[i] = IERC721(_nftAddress).ownerOf(_tokenIds[i]);
    }
    return owners;
  }

  function snapshotTokenMetadata(address _nftAddress, uint256[] calldata _tokenIds) public view returns (string[] memory) {
    string[] memory tokens = new string[](_tokenIds.length);
    for (uint256 i; i < _tokenIds.length; i++) {
      tokens[i] = IERC721Metadata(_nftAddress).tokenURI(_tokenIds[i]);
    }
    return tokens;
  }

}