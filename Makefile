-include .env

build:; forge build

deploy-sepolia-verify:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) --legacy
	# --legacy: https://book.getfoundry.sh/forge/deploying?highlight=--legacy#eip-1559-not-activated

deploy-sepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --etherscan-api-key $(ETHERSCAN_API_KEY) --legacy
	# --legacy: https://book.getfoundry.sh/forge/deploying?highlight=--legacy#eip-1559-not-activated