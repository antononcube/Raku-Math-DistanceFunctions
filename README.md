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
# bray-curtis-distance : 0.6620715337403009
# canberra-distance : 6.0273513448541465
# chessboard-distance : 7.627382066931661
# cosine-distance : 0.25766397325924495
# euclidean-distance : 15.42933519068569
# hamming-distance : 10
# manhattan-distance : 39.91889505299974
# squared-euclidean-distance : 238.0643844265318
```

-----

## References

[AAp1] Anton Antonov, [ML:Clustering Raku package](https://github.com/antononcube/Raku-ML-Clustering), (2022), [GitHub/antononcube](https://github.com/antononcube). 