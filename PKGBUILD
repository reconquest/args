pkgname="args"
pkgver=20160922.4_9f3e82e
pkgrel=1
pkgdesc="Simple CLI argument parser for bash"
arch=("i686" "x86_64")
license=("GPL")
depends=()
makedepends=(
    "git"
)
source=(
    "args::git+ssh://github.com/reconquest/args.git"
)
md5sums=("SKIP")

pkgver() {
    cd "$srcdir/$pkgname"
    local date=$(git log -1 --format="%cd" --date=short | sed s/-//g)
    local count=$(git rev-list --count HEAD)
    local commit=$(git rev-parse --short HEAD)
    echo "$date.${count}_$commit"
}

build() {
    :
}

package() {
    mkdir -p $pkgdir/usr/bin

    cp "$srcdir/$pkgname/args" $pkgdir/usr/bin
}
