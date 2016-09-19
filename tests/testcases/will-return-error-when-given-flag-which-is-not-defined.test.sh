tests:not tests:ensure args opts -- 1 -d 2
tests:assert-stderr-re 'invalid option.*d'
