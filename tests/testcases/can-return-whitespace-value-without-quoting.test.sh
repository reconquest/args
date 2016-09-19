eval $(args opts -n: -- 1 -n "i  am  space" 2 "here  there")

tests:assert-equals "$?" "0"
tests:assert-equals "$*" "1 2 here  there"
tests:assert-equals "${opts[-n]}" "i  am  space"
