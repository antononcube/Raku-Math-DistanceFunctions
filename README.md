# Math::DistanceFunctions

Raku package with a collection of mathematical distance functions and a corresponding role.

The content of this package was "factored out" from 
["ML::Clustering"](https://raku.land/zef:antononcube/ML::Clustering), [AAp1].  

Faster versions of these functions are implemented in 
["Math::DistanceFunctions::Native"](https://github.com/antononcube/Raku-Math-DistanceFunctions-Native), [AAp2].

A special package has the "edit distance" (aka Damerau-Levenshtein distance) -- see
["Math::DistanceFunctions::Edit"](https://github.com/antononcube/Raku-Math-DistanceFunctions-Edit), [AAp3].

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
# bray-curtis-distance : 0.6151407918691146
# canberra-distance : 5.824952422823202
# chessboard-distance : 8.570769750374787
# cosine-distance : 0.10484766994026384
# dot-product : 65.06821530189765
# euclidean-distance : 14.296040411329631
# hamming-distance : 10
# manhattan-distance : 38.15520204868512
# squared-euclidean-distance : 204.37677144236991
```

-----

## References

[AAp1] Anton Antonov, [ML:Clustering Raku package](https://github.com/antononcube/Raku-ML-Clustering), (2022), [GitHub/antononcube](https://github.com/antononcube). 

[AAp2] Anton Antonov, 
[Math::DistanceFunctions::Edit Raku package](https://github.com/antononcube/Raku-Math-DistanceFunctions-Edit), 
(2024), 
[GitHub/antononcube](https://github.com/antononcube). 

[AAp3] Anton Antonov, 
[Math::DistanceFunctions::Native Raku package](https://github.com/antononcube/Raku-Math-DistanceFunctions-Native), 
(2024), 
[GitHub/antononcube](https://github.com/antononcube). 