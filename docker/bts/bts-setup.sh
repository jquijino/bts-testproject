#!/bin/bash
#switch to bitshares user
su - bitshares

#Login to wallet CLI

cli_wallet --chain-id=92e31f3a1e262c773eb2d3d7741b0d7a75ff91ded998759fb1611014d9310378
set_password supersecret

#unlock wallet
unlock supersecret

#Import nathan key & upgrade account

import_key nathan 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
import_balance nathan ["5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3"] true
upgrade_account nathan true

###### CRYPTOBRIDGE
# "brain_priv_key": "LADYDOM ORDU VENERER UNITER LONG ANTIQUE BEDSICK GRIM ENCRISP PERFUSE LISTRED STOOP BATH TRITON BUBBY INTIL",
# "wif_priv_key": "5JjvSqrh94t4niqfmDoK7CTNKJ2b6RPtKRfNfQ7xntzmFTJ5FUk",
# "pub_key": "BTS74ePvhPVtYw79orHZkHgfpGr5vRJ1ZPyDDZcCBEg275DGpCy8k"

##########################################################################################################################################
create_account_with_brain_key "LADYDOM ORDU VENERER UNITER LONG ANTIQUE BEDSICK GRIM ENCRISP PERFUSE LISTRED STOOP BATH TRITON BUBBY INTIL" cryptobridge nathan nathan true
transfer nathan cryptobridge 5000000000 BTS "Here is some cash, cryptobridge" true
upgrade_account cryptobridge true

#Create assets

create_asset cryptobridge BRIDGE 8 {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"BRIDGE\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}} null true
create_asset cryptobridge BRIDGE.BTC 7 {"max_supply":210000000000000,"max_market_fee":420000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"BTC\",\"market\":\"\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":9700,"asset_id":"1.3.1"}}} null true
create_asset cryptobridge BRIDGE.BCO 7 {"max_supply":270000000000000,"max_market_fee":10000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"BCO\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":4000000,"asset_id":"1.3.1"}}} null true
create_asset cryptobridge BRIDGE.ETH 6 {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"ETH\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}} null true
create_asset cryptobridge BRIDGE.BOKKY 8 {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"BOKKY\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}} null true
create_asset cryptobridge BRIDGE.TST 8 {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"TST\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}} null true
create_asset cryptobridge BRIDGE.XMR 6 {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"XMR\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}} null true
create_asset cryptobridge BRIDGE.PPI 7 {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"PPI\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}} null true
create_asset cryptobridge BRIDGE.ZEC 7 {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"ZEC\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}} null true
create_asset cryptobridge BRIDGE.XRP 7 {"max_supply":1000000000000000,"max_market_fee":2000000000000,"market_fee_percent":20,"description":"{\"main\":\"\",\"short_name\":\"XRP\",\"market\":\"BRIDGE.BTC\"}","issuer_permissions":5,"flags":5,"whitelist_authorities":[],"blacklist_authorities":[],"whitelist_markets":[],"blacklist_markets":[],"extensions":[],"core_exchange_rate":{"base":{"amount":100000,"asset_id":"1.3.0"},"quote":{"amount":100000000,"asset_id":"1.3.1"}}} null true


#Create users

###### CRYPTOBRIDGE-SUPPORT
# "brain_priv_key": "POSTIL NOTCHEL PODITE ESPAVE GYRON PINERY EPIOTIC RUBBLY GOOSERY BERAKE MOHO EXCUSE COGONAL CITRIN OUTBACK OXYMEL",
# "wif_priv_key": "5J9KnjxK3CAH27sdhEhLszBGj54Xsxy73nfTRyowr6kMqerj4Ai",
# "pub_key": "BTS7b3WW4v9FXhFZoRTMMijifpRdyBt62rdtnRyk6QeZWymfbV7aq"
######################################################################################################################################
register_account cryptobridge-support BTS7b3WW4v9FXhFZoRTMMijifpRdyBt62rdtnRyk6QeZWymfbV7aq BTS7b3WW4v9FXhFZoRTMMijifpRdyBt62rdtnRyk6QeZWymfbV7aq cryptobridge cryptobridge 100 true

###### BANNED-ALL
# "brain_priv_key": "CRUSILY KAROSS RADOME FRUSH OLIO BRA SPIFF ENLACE PEATERY ADIPOID SHAGBAG SYAGUSH STEID YOKER BUSTARD DREE",
# "wif_priv_key": "5J7t21qeRLUxQKbu8VHv3Ns5hCReVxu46vvzn5BBGHCQhSuvU1s",
# "pub_key": "BTS89y7XAVxTsvqkurh2FUYQM64eW93So5yzRiWL25u2NeWXP69Cd"
######################################################################################################################################
register_account banned-all BTS89y7XAVxTsvqkurh2FUYQM64eW93So5yzRiWL25u2NeWXP69Cd BTS89y7XAVxTsvqkurh2FUYQM64eW93So5yzRiWL25u2NeWXP69Cd cryptobridge cryptobridge 100 true

###### BANNED-DEPOSIT
# "brain_priv_key": "PARLAY ENHERIT PRIVILY DETINUE DEWANEE CAPMINT SERA SPOUTY COOMB ORBIT ZAK UNCROPT DESIST MENACE PECKFUL CHURLED",
# "wif_priv_key": "5JZ4Y9i2RnUwzkPkE8XMBUXXxtvDiJd2WSZ5yzDZN2NRaLGaKdE",
# "pub_key": "BTS8LEz21Xn9QQLjTNKxUfqt2AQ7Ym5MqP1vyrJiVvZ5wzz2e3Dtc"
######################################################################################################################################
register_account banned-deposit BTS8LEz21Xn9QQLjTNKxUfqt2AQ7Ym5MqP1vyrJiVvZ5wzz2e3Dtc BTS8LEz21Xn9QQLjTNKxUfqt2AQ7Ym5MqP1vyrJiVvZ5wzz2e3Dtc cryptobridge cryptobridge 100 true

###### BANNED-WITHDRAWAL
# "brain_priv_key": "TOFTER GREY CARUA SPATTED RERING DONOR IHLEITE BEAMAGE STAITH AWRONG RUGGING PROFANE GRA UNPENT DASHER BECKON",
# "wif_priv_key": "5K7K8KgFkqkPtH83BDD4fWN5tMehgMFTfgHNokQQ8VwRYQSA9jv",
# "pub_key": "BTS78BfvzoKsxxEKzW9azkMAe4VZvjPJ93tLcpYy7xnTMYXbVphFK"
######################################################################################################################################
register_account banned-withdrawal BTS78BfvzoKsxxEKzW9azkMAe4VZvjPJ93tLcpYy7xnTMYXbVphFK BTS78BfvzoKsxxEKzW9azkMAe4VZvjPJ93tLcpYy7xnTMYXbVphFK cryptobridge cryptobridge 100 true



###### LOCALTESTER1
# "brain_priv_key": "IMPASTO SERRAN FAWNER DAUBERY DOAT FOXFISH FORKY DOSSEL PTEROID ANGST OUTDOER PINBONE BEFIRE APINCH AHEY WHERRIT",
# "wif_priv_key": "5JAxt6rwmzPZPunenC4M28EK9N9P9X9t7gTgZXPpMoVqt6RuGBW",
# "pub_key": "BTS64njn17NZ3YF2wkYxGTQXo7XJsGcNy6rNDrYmgNL5DiJ56W5L7"
######################################################################################################################################
register_account localtester1 BTS64njn17NZ3YF2wkYxGTQXo7XJsGcNy6rNDrYmgNL5DiJ56W5L7 BTS64njn17NZ3YF2wkYxGTQXo7XJsGcNy6rNDrYmgNL5DiJ56W5L7 cryptobridge cryptobridge 100 true
transfer nathan localtester1 10001 BTS "BTS initial localtester1" true
issue_asset localtester1 1001 "BRIDGE.BCO" "BCO initial localtester1" true
issue_asset localtester1 1.1 "BRIDGE.BTC" "BTC initial localtester1" true


###### LOCALTESTER2
# "brain_priv_key": "PYLON OIL ABLINS TRAVOY ATONER SUBRULE INGATE SHREDDY STUNTER UNSCALE GARAD SERIOUS SWELLED TRAINY SIP CYMENE",
# "wif_priv_key": "5KigXuqKXGXVeN7FQKB2tPshTK4cPj45Ky3kHcRoKp5B6anxPrN",
# "pub_key": "BTS53mco3rwiu6J29rvBaRBoebQbJGHAiyqJWCF1vpVi1oSRqSggx"
######################################################################################################################################
register_account localtester2 BTS64njn17NZ3YF2wkYxGTQXo7XJsGcNy6rNDrYmgNL5DiJ56W5L7 BTS64njn17NZ3YF2wkYxGTQXo7XJsGcNy6rNDrYmgNL5DiJ56W5L7 cryptobridge cryptobridge 100 true
transfer nathan localtester2 10001 BTS "BTS initial localtester2" true
issue_asset localtester2 1002 "BRIDGE.BCO" "BCO initial localtester2" true
issue_asset localtester2 1.2 "BRIDGE.BTC" "BTC initial localtester2" true


issue_asset localtester3 500 "BRIDGE.XRP" "XRP initial localtester3" true
transfer cryptobridge localtester3 10000 BTS "BTS initial localtester3" true
