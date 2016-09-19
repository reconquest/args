eval $(args opts --)

tests:assert-equals "$?" "0"

tests:ensure typeset -p opts
tests:assert-stdout 'declare -A opts'
