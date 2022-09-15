# state-override-functions

To use this code

1. Update `contracts/contracts/NftSnapshot.sol` with your desired state override code
2. Run `solcjs --bin --abi --include-path node_modules/ --base-path contracts/. contracts/NftSnapshot.sol -o dir/` (requires `npm i -g solc`)
3. Look in `dir/` for `NftSnapshot_sol_NftSnapshot.abi` and `NftSnapshot_sol_NftSnapshot.bin` - copy these files into `scripts/state_override.py`. Note that you will have to add `"0x"` to the beginning of the bytecode var
4. Run `state_override.py`