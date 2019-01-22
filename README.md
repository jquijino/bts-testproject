# Testproject objectives

The first objective is to create REST API in Node.js with 2 endpoints:
- `GET /accounts/<accountname>` outputs a JSON object of the given account.
- `POST /login` verifies that a user is who he claims to be by validating a BitShares signed memo from the user.
  We'll assume that *localtester1* wants to login to *cryptobridge*. If *localtester1* is in possession of his private
  key, he can sign a memo readable to the *cryptobridge* user that can then verify against the blockchain that it was
  *localtester1* who just authenticated. Both BitShares accounts come with this bundle.

The second objective is to create a simple React App that uses the bitsharesjs and bitsharesjs-ws packages that make
use of those 2 REST API endpoints. A login button should perform a login for *localtester1* and then display the result
of the account endpoint.

# Running a local BitShares blockchain
Using `docker-compose up`, you'll get a complete BitShares testnet with a witness node listening on localhost:8090
ready for development. It'll take a minute until the blockchain has been initialized and the test accounts 
`cryptobridge`, `localtester1` and `localtester2` have been created.

Once they are available, you can start using the blockchain and query for the accounts.

You'll find the private keys in `bts-setup.sh` which you can also use to en-/decrypt the memos.
