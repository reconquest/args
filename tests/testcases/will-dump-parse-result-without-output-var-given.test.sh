tests:ensure args -x -y -c,--commit -z:,--zvalue -- \
    1 2 -x 3 -y 4 -z 'z  value' '5  spaace' -c 6

tests:assert-no-diff stdout <<EXPECTED
-z z\ \ value
-y 1
-x 1
-c 1
--zvalue z\ \ value
--commit 1
--
1
2
3
4
5\ \ spaace
6
EXPECTED
