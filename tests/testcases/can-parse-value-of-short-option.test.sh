
eval $(args opts -c: -- 1 -c message)

tests:assert-equals "$?" "0"
tests:assert-equals "$*" "1"
tests:assert-equals "${opts[-c]}" "message"
