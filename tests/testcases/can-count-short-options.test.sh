eval $(args opts -v -- 1 -vv 2)

tests:assert-equals "$?" "0"
tests:assert-equals "${opts[-v]}" "2"
