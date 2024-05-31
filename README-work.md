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

-----

## References

[AAp1] Anton Antonov, [ML:Clustering Raku package](https://github.com/antononcube/Raku-ML-Clustering), (2022), [GitHub/antononcube](https://github.com/antononcube). 