# Math::DistanceFunctions

Raku package with a collection of mathematical distance functions and a corresponding role.

The content of this package was "factored out" from 
["ML::Clustering"](https://raku.land/zef:antononcube/ML::Clustering), [AAp1].  

------

## Installation

From Zef ecosystem:

```
zef install Math::DistanceFunctions
```

From GitHub:

```
zef install https://github.com/antononcube/Raku-Math-DistanceFunctions.git
```

-----

## Usage examples

```perl6
use Math::DistanceFunctions;

my @v1 = 10.rand xx 10;
my @v2 = 2.rand xx 10;

my @funcs = [
    :&bray-curtis-distance,
    :&canberra-distance,
    :&chessboard-distance,
    :&cosine-distance,
    :&dot-product,
    :&euclidean-distance,
    :&hamming-distance,
    :&manhattan-distance,
    :&squared-euclidean-distance
];

for @funcs -> $p {
    say "{$p.key} : {$p.value.(@v1, @v2)}";
}
```
```
# bray-curtis-distance : 0.7107698675221625
# canberra-distance : 6.600469251804158
# chessboard-distance : 8.604110240958953
# cosine-distance : 0.24446081451567536
# dot-product : 54.32679087340601
# euclidean-distance : 16.83700407574092
# hamming-distance : 10
# manhattan-distance : 43.55948124843889
# squared-euclidean-distance : 283.48470624651634
```

-----

## References

[AAp1] Anton Antonov, [ML:Clustering Raku package](https://github.com/antononcube/Raku-ML-Clustering), (2022), [GitHub/antononcube](https://github.com/antononcube). 