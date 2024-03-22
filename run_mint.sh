APPNAME="store_775612559"

ENV_FILE=".env"
PRIVATE_KEY=$(grep "PRIVATE_KEY" $ENV_FILE | cut -d '=' -f2)

snarkos developer execute "${APPNAME}.aleo" mint \
  aleo1drdudky8var4wcre8g0ywgfkzn0c4z2j4s6amz9kdfrnm4v4fyrqm3d6s4 \
  10000u64 \
  --private-key "${PRIVATE_KEY}" \
  --query "https://api.explorer.aleo.org/v1" \
  --priority-fee 3000000 \
  --broadcast "https://api.explorer.aleo.org/v1/testnet3/transaction/broadcast" \