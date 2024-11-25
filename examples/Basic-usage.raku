#!/usr/bin/env raku
use v6.d;

use Math::DistanceFunctions;

my @v1 = 10.rand xx 10;
my @v2 = 2.rand xx 10;

my @funcs = [
    :&bray-curtis-distance,
    :&canberra-distance,
    :&chessboard-distance,
    :&cosine-distance,
    :&dot-product
    :&euclidean-distance,
    :&hamming-distance,
    :&manhattan-distance,
    :&squared-euclidean-distance
];

for @funcs -> $p {
    say "{$p.key} : {$p.value.(@v1, @v2)}";
}
