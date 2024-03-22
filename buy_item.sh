APPNAME="store_775612559"

ENV_FILE=".env"
PRIVATE_KEY=$(grep "PRIVATE_KEY" $ENV_FILE | cut -d '=' -f2)

TOKEN="'{ 
    owner: aleo1drdudky8var4wcre8g0ywgfkzn0c4z2j4s6amz9kdfrnm4v4fyrqm3d6s4.private,
    amount: 10000u64.private,
    _nonce: 6454746015393505811671401129091330549036205015618570235834391641324347085342group.public 
}'"

snarkos developer execute "${APPNAME}.aleo" buy \
  TOKEN \
  1u8 \
  5u64 \
  500u64 \
  --private-key "${PRIVATE_KEY}" \
  --query "https://api.explorer.aleo.org/v1" \
  --priority-fee 3000000 \
  --broadcast "https://api.explorer.aleo.org/v1/testnet3/transaction/broadcast" \