# Bitshares testnet

## hints

The bitshares node is started vi docker-compose

    docker-compose up bts
    
Start bash on bts docker 

    docker exec -it gateway_bts1 bash

All needed assets and users are installed on startup through RPC calls via /docker/bts/bts-entry.sh but you can still interect through cli_wallet:

    su - bitshares

Login to wallet CLI

    cli_wallet --chain-id=92e31f3a1e262c773eb2d3d7741b0d7a75ff91ded998759fb1611014d9310378
    
Wallet decrypt/encrypt
    
    set_password supersecret
    unlock supersecret
    
Account examples

    import_key nathan 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
    import_balance nathan ["5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3"] true
    upgrade_account nathan true
    
    # a new account key can be taken from suggest_brain_key
    suggest_brain_key
    
    register_account localtester1 BTS64njn17NZ3YF2wkYxGTQXo7XJsGcNy6rNDrYmgNL5DiJ56W5L7 BTS64njn17NZ3YF2wkYxGTQXo7XJsGcNy6rNDrYmgNL5DiJ56W5L7 cryptobridge cryptobridge 100 true
    transfer nathan localtester1 10001 BTS "BTS initial localtester1" true
    issue_asset localtester1 1001 "BRIDGE.BCO" "BCO initial localtester1" true   
    
Create assets examples

    create_asset cryptobridge BRIDGE 8 {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"BRIDGE\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}} null true
    create_asset cryptobridge BRIDGE.BTC 7 {"max_supply":210000000000000,"max_market_fee":420000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"BTC\",\"market\":\"\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":9700,"asset_id":"1.3.1"}}} null true
    create_asset cryptobridge BRIDGE.BCO 7 {"max_supply":270000000000000,"max_market_fee":10000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"BCO\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":4000000,"asset_id":"1.3.1"}}} null true
    create_asset cryptobridge BRIDGE.ETH 8 {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"ETH\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}} null true

  

    

