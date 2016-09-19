eval $(args opts --commit -- 1 --commit 2)

tests:assert-equals "$?" "0"
tests:assert-equals "${opts[--commit]}" "1"
