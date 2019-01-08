# Testproject objectives

The first objective is to create REST API in Node.js that has one public endpoint `GET /account/<accountname>`
that outputs a JSON array of that account's 10 latest BitShares transactions and another endpoint `POST /login`
that makes use of a BitShares signed memo to check if that memo is valid (really coming from a particular user).

The second objective is a simple React App that uses BitsharesJS to sign the memo and makes those 2 REST API requests.

Both the REST API and the React App use bitsharesjs and/or bitsharesjs-ws to sign/validate the memo field.

Using `docker-compose up`, you'll get a complete BitShares testnet with a witness node listening on localhost:8090
ready for development. It'll take a minute until the blockchain has been initialized and the test accounts 
`cryptobridge`, `localtester1` and `localtester2` have been created.

Once they are available, you can start using the blockchain and make transfers between the accounts.

You'll find the private keys in `bts-setup.sh` which you can also use to en-/decrypt the memos.
