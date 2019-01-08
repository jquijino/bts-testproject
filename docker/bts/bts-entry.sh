#!/bin/bash
set -m
echo "Welcome to CryptoBridge BTS Entry :D"

# start bitshares

bitsharesentry.sh &

# give witness node some time to fire up
sleep 60

#startup wallet cli
echo "starting cli_wallet as daemon for RPC calls"
cli_wallet --rpc-endpoint="127.0.0.1:8092" --chain-id=92e31f3a1e262c773eb2d3d7741b0d7a75ff91ded998759fb1611014d9310378 --daemon &

sleep 3

#check genesis
echo "checking genesis..."

cryptobridgeaccount=$(curl --data '{"jsonrpc": "2.0", "method": "get_account", "params": ["cryptobridge"], "id": 1}' http://127.0.0.1:8092)
localtesteraccount=$(curl --data '{"jsonrpc": "2.0", "method": "get_account", "params": ["localtester1"], "id": 1}' http://127.0.0.1:8092)

if [[ $cryptobridgeaccount = *"BTS74ePvhPVtYw79orHZkHgfpGr5vRJ1ZPyDDZcCBEg275DGpCy8k"* ]]; then
    echo "cryptobridge account found!"

    if [[ $localtesteraccount = *"BTS64njn17NZ3YF2wkYxGTQXo7XJsGcNy6rNDrYmgNL5DiJ56W5L7"* ]]; then
        echo "localtester1 account found...genesis done already..."
    else
        echo "localtester1 account not found...injecting advanced genesis!"

        #wallet init

        echo "encrypting cli_wallet..."
        curl --data '{"jsonrpc": "2.0", "method": "set_password", "params": ["supersecret"], "id": 1}' http://127.0.0.1:8092

        echo "unlocking cli_wallet..."
        curl --data '{"jsonrpc": "2.0", "method": "unlock", "params": ["supersecret"], "id": 1}' http://127.0.0.1:8092

        #cryptobridge account
        echo "importing crypto bridge account..."
        curl --data '{"jsonrpc": "2.0", "method": "import_key", "params": ["cryptobridge", "5JjvSqrh94t4niqfmDoK7CTNKJ2b6RPtKRfNfQ7xntzmFTJ5FUk"], "id": 1}' http://127.0.0.1:8092 && sleep 1
        curl --data '{"jsonrpc": "2.0", "method": "import_balance", "params": ["cryptobridge", ["5JjvSqrh94t4niqfmDoK7CTNKJ2b6RPtKRfNfQ7xntzmFTJ5FUk"], true], "id": 1}' http://127.0.0.1:8092 && sleep 1

        # BRIDGE namespace
        echo "creating BRIDGE namespace..."
        curl --data '{"jsonrpc": "2.0", "method": "create_asset", "params": ["cryptobridge", "BRIDGE", 8, {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"BRIDGE\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}}, null, true], "id": 1}' http://127.0.0.1:8092 && sleep 1

        # BRIDGE.BCO
        echo "creating BRIDGE.BCO asset..."
        curl --data '{"jsonrpc": "2.0", "method": "create_asset", "params": ["cryptobridge", "BRIDGE.BCO", 7, {"max_supply":270000000000000,"max_market_fee":420000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"BCO\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":4000000,"asset_id":"1.3.1"}}}, null, true], "id": 1}' http://127.0.0.1:8092 && sleep 1

        # BRIDGE.BTC
        echo "creating BRIDGE.BTC asset..."
        curl --data '{"jsonrpc": "2.0", "method": "create_asset", "params": ["cryptobridge", "BRIDGE.BTC", 7, {"max_supply":210000000000000,"max_market_fee":10000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"BTC\",\"market\":\"\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":9700,"asset_id":"1.3.1"}}}, null, true], "id": 1}' http://127.0.0.1:8092 && sleep 1

        # BRIDGE.ETH
        echo "creating BRIDGE.ETH asset..."
        curl --data '{"jsonrpc": "2.0", "method": "create_asset", "params": ["cryptobridge", "BRIDGE.ETH", 6, {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"ETH\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}}, null, true], "id": 1}' http://127.0.0.1:8092 && sleep 1

        # BRIDGE.XMR
        echo "creating BRIDGE.XMR asset..."
        curl --data '{"jsonrpc": "2.0", "method": "create_asset", "params": ["cryptobridge", "BRIDGE.XMR", 6, {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"XMR\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}}, null, true], "id": 1}' http://127.0.0.1:8092 && sleep 1

        # BRIDGE.ZEC
        echo "creating BRIDGE.ZEC asset..."
        curl --data '{"jsonrpc": "2.0", "method": "create_asset", "params": ["cryptobridge", "BRIDGE.ZEC", 7, {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"ZEC\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}}, null, true], "id": 1}' http://127.0.0.1:8092 && sleep 1

        # BRIDGE.XRP
        echo "creating BRIDGE.XRP asset..."
        curl --data '{"jsonrpc": "2.0", "method": "create_asset", "params": ["cryptobridge", "BRIDGE.XRP", 7, {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"XRP\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}}, null, true], "id": 1}' http://127.0.0.1:8092 && sleep 1


        ### CREATING USERS

        # cryptobridge-support
        echo "creating cryptobridge-support account..."
        curl --data '{"jsonrpc": "2.0", "method": "register_account", "params": ["cryptobridge-support", "BTS7b3WW4v9FXhFZoRTMMijifpRdyBt62rdtnRyk6QeZWymfbV7aq", "BTS7b3WW4v9FXhFZoRTMMijifpRdyBt62rdtnRyk6QeZWymfbV7aq", "cryptobridge", "cryptobridge", 100, true], "id": 1}' http://127.0.0.1:8092 && sleep 1

        # banned-all
        echo "creating banned-all account..."
        curl --data '{"jsonrpc": "2.0", "method": "register_account", "params": ["banned-all", "BTS89y7XAVxTsvqkurh2FUYQM64eW93So5yzRiWL25u2NeWXP69Cd", "BTS89y7XAVxTsvqkurh2FUYQM64eW93So5yzRiWL25u2NeWXP69Cd", "cryptobridge", "cryptobridge", 100, true], "id": 1}' http://127.0.0.1:8092 && sleep 1

        # banned-deposit
        echo "creating banned-deposit account..."
        curl --data '{"jsonrpc": "2.0", "method": "register_account", "params": ["banned-deposit", "BTS8LEz21Xn9QQLjTNKxUfqt2AQ7Ym5MqP1vyrJiVvZ5wzz2e3Dtc", "BTS8LEz21Xn9QQLjTNKxUfqt2AQ7Ym5MqP1vyrJiVvZ5wzz2e3Dtc", "cryptobridge", "cryptobridge", 100, true], "id": 1}' http://127.0.0.1:8092 && sleep 1

        # banned-withdrawal
        echo "creating banned-withdrawal account..."
        curl --data '{"jsonrpc": "2.0", "method": "register_account", "params": ["banned-withdrawal", "BTS78BfvzoKsxxEKzW9azkMAe4VZvjPJ93tLcpYy7xnTMYXbVphFK", "BTS78BfvzoKsxxEKzW9azkMAe4VZvjPJ93tLcpYy7xnTMYXbVphFK", "cryptobridge", "cryptobridge", 100, true], "id": 1}' http://127.0.0.1:8092 && sleep 1


        # localtester1
        echo "creating localtester1 account..."
        curl --data '{"jsonrpc": "2.0", "method": "register_account", "params": ["localtester1", "BTS64njn17NZ3YF2wkYxGTQXo7XJsGcNy6rNDrYmgNL5DiJ56W5L7", "BTS64njn17NZ3YF2wkYxGTQXo7XJsGcNy6rNDrYmgNL5DiJ56W5L7", "cryptobridge", "cryptobridge", 100, true], "id": 1}' http://127.0.0.1:8092 && sleep 1
        echo "transfering BTS to localtester1..."
        curl --data '{"jsonrpc": "2.0", "method": "transfer", "params": ["cryptobridge", "localtester1", 1000000, "BTS", "BTS initial localtester1", true], "id": 1}' http://127.0.0.1:8092 && sleep 1
        echo "issuing BCO & BTC to localtester1..."
        curl --data '{"jsonrpc": "2.0", "method": "issue_asset", "params": ["localtester1", 1000000, "BRIDGE.BCO", "BCO initial localtester1", true], "id": 1}' http://127.0.0.1:8092 && sleep 1
        curl --data '{"jsonrpc": "2.0", "method": "issue_asset", "params": ["localtester1", 1000, "BRIDGE.BTC", "BTC initial localtester1", true], "id": 1}' http://127.0.0.1:8092 && sleep 1

        # localtester2
        echo "creating localtester2 account..."
        curl --data '{"jsonrpc": "2.0", "method": "register_account", "params": ["localtester2", "BTS53mco3rwiu6J29rvBaRBoebQbJGHAiyqJWCF1vpVi1oSRqSggx", "BTS53mco3rwiu6J29rvBaRBoebQbJGHAiyqJWCF1vpVi1oSRqSggx", "cryptobridge", "cryptobridge", 100, true], "id": 1}' http://127.0.0.1:8092 && sleep 1
        echo "transfering BTS to localtester2..."
        curl --data '{"jsonrpc": "2.0", "method": "transfer", "params": ["cryptobridge", "localtester2", 1000000, "BTS", "BTS initial localtester2", true], "id": 1}' http://127.0.0.1:8092 && sleep 1
        echo "issuing BCO & BTC to localtester2..."
        curl --data '{"jsonrpc": "2.0", "method": "issue_asset", "params": ["localtester2", 1000000, "BRIDGE.BCO", "BCO initial localtester2", true], "id": 1}' http://127.0.0.1:8092 && sleep 1
        curl --data '{"jsonrpc": "2.0", "method": "issue_asset", "params": ["localtester2", 1000, "BRIDGE.BTC", "BTC initial localtester2", true], "id": 1}' http://127.0.0.1:8092 && sleep 1
    fi
fi

#clean up
echo "current jobs:"
jobs

echo "stopping wallet client..."
kill -STOP %2

echo "bringing witness node to foreground..."
fg %1







