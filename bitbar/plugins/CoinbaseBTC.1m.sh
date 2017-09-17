#!/bin/bash

# <bitbar.title>Coinbase BTC Buy Price</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Jon Erickson</bitbar.author>
# <bitbar.author.github>jnericks</bitbar.author.github>
# <bitbar.desc>Displays Coinbase BTC buy price</bitbar.desc>
# <bitbar.dependencies>bash, jq</bitbar.dependencies>
#
# Based on CoinbasePrices Cryptocurrency plugin by github.com/mustafaturksavas
#   https://github.com/matryer/bitbar-plugins/blob/master/Cryptocurrency/CoinbasePrices.sh
#

bitcoin_icon='iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAQAAABLCVATAAAACXBIWXMAABYlAAAWJQFJUiTwAAABY0lEQVRIx2P4z0AdyEBzg1DAdIYfQJgCZHmCWdsYMAFRBs0BC2UAWT5g1p6hbZAggwIcrgALVQNZSWDWAQY24g3qwRtJ/xgeMqxkCGJgotQgGLzAoEUdg/4zvGQQIxzYLAyODF/gQv0MlgwWDK4MOQxbgV5DKG0nLtZ2wIUykII2EMmoU8QZtAWrQQwMB+HiDygzaDNc/CQlBskwfIKLN5JrkAxDFsMTuOh9BiFSDXoHDI2HDB9RlJ1kECc2r20hkI5OMXhQxyAQzCTNoDJgaAgAvaLLEMkwn+EbkuLvDBLkR78yUoD/Z0gn3yAGhnwk5V2UGBRGLYNmICkvIGzQLqwG8TA0oJQAVvgMymcoYehg+AUXWgoM0kygWC/DbpQ4+89wjYERt0FiRNeNX4GlFJ505EykMacZDPGn7HwCBnxiOMcwjcGJcOEvzqADh2vBQk1AVhaYdZCBc7TKpqJBA9ZiAwDMH49EXcmY2QAAAABJRU5ErkJggg=='

bit_price=$(curl -s -H "CB-Version: 2015-04-08" "https://api.coinbase.com/v2/prices/BTC-USD/buy" | /usr/local/bin/jq -r .data.amount)

echo "$bit_price | templateImage=$bitcoin_icon"
