# This script will run the transaction and block generation programs in the `examples` folder and move the resulting `.genesis` files
# to their respective folders under the `src` directory.
# If the transaction size or checksum has changed, you will need to manually update these in each corresponding struct.

# Generate transactions

# Inputs: recipient address, amount, network_id, file_path
cargo run --release --example generate_transaction aleo1z6eq6ted3p43htq3mxsacsems48rnv9tr4rvq0x37q4j3dggyvyqkt760a 100 0 transaction_1.genesis

mv transaction_1.genesis ../src/genesis/transaction_1

# Generate the block header for the block with the included transactions

cargo run --release --example create_genesis_block

mv block_header.genesis ../src/genesis/block_header