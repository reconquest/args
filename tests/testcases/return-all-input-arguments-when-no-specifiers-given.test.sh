eval $(args opts -- 1 2 3)

tests:assert-equals "$?" "0"

tests:assert-equals "$#" "3"
tests:assert-equals "${#opts[@]}" '0'
