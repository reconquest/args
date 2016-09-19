eval $(args opts -c:,--commit -- 1 -c message)

tests:assert-equals "$?" "0"
tests:assert-equals "$*" "1"
tests:assert-equals "${opts[-c]}" "message"
tests:assert-equals "${opts[--commit]}" "message"

eval $(args opts -c:,--commit -- 1 --commit message)

tests:assert-equals "$?" "0"
tests:assert-equals "$*" "1"
tests:assert-equals "${opts[-c]}" "message"
tests:assert-equals "${opts[--commit]}" "message"

eval $(args opts --commit:,-c -- 1 --commit message)

tests:assert-equals "$?" "0"
tests:assert-equals "$*" "1"
tests:assert-equals "${opts[-c]}" "message"
tests:assert-equals "${opts[--commit]}" "message"

eval $(args opts --commit:,-c,-d -- 1 -d message)

tests:assert-equals "$?" "0"
tests:assert-equals "$*" "1"
tests:assert-equals "${opts[-c]}" "message"
tests:assert-equals "${opts[-d]}" "message"
tests:assert-equals "${opts[--commit]}" "message"
