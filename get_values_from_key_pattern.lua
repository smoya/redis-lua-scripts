-- example of use: redis-cli eval "$(cat ./get_values_from_key_pattern.lua)" 1 "KEY_PATTERN_HERE"
local result = redis.call('KEYS', KEYS[1]) return redis.call('MGET', unpack(result))
