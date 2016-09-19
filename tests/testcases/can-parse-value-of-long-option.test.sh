
eval $(args opts --message: -- 1 --message message)

tests:assert-equals "$?" "0"
tests:assert-equals "$*" "1"
tests:assert-equals "${opts[--message]}" "message"
