eval $(args opts -x -- 1 -x 2)

tests:assert-equals "$?" "0"
tests:assert-equals "$*" "1 2"
tests:assert-equals "${opts[-x]}" "1"
