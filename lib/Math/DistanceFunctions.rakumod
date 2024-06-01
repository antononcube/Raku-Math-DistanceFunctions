use v6.d;
unit module Math::DistanceFunctions;

use Math::DistanceFunctionish;

#----------------------------------------------------------
my $errMsg = 'The first and second argument are expected to be vectors.';
my $errMsg2 = 'The first and second argument are expected to be both vectors or both strings.';
my $dfObj = {} but Math::DistanceFunctionish;

#----------------------------------------------------------
proto sub bray-curtis-distance(|) is export {*}

multi sub bray-curtis-distance(@v1, @v2 --> Numeric) {
    return $dfObj.bray-curtis-distance(@v1, @v2);
}

multi sub bray-curtis-distance(|) {
    die $errMsg;
}

#----------------------------------------------------------
proto sub canberra-distance(|) is export {*}

multi sub canberra-distance(@v1, @v2 --> Numeric) {
    return $dfObj.canberra-distance(@v1, @v2);
}

multi sub canberra-distance(|) {
    die $errMsg;
}

#----------------------------------------------------------
proto sub chessboard-distance(|) is export {*}

multi sub chessboard-distance(@v1, @v2 --> Numeric) {
    return $dfObj.chessboard-distance(@v1, @v2);
}

multi sub chessboard-distance(|) {
    die $errMsg;
}

#----------------------------------------------------------
proto sub cosine-distance(|) is export {*}

multi sub cosine-distance(@v1, @v2 --> Numeric) {
    return $dfObj.cosine-distance(@v1, @v2);
}

multi sub cosine-distance(|) {
    die $errMsg;
}

#----------------------------------------------------------
proto sub euclidean-distance(|) is export {*}

multi sub euclidean-distance(@v1, @v2 --> Numeric) {
    return $dfObj.euclidean-distance(@v1, @v2);
}

multi sub euclidean-distance(|) {
    die $errMsg;
}

#----------------------------------------------------------
proto sub hamming-distance(|) is export {*}

multi sub hamming-distance(@v1, @v2 --> Numeric) {
    return $dfObj.hamming-distance(@v1, @v2);
}

multi sub hamming-distance(Str $v1, Str $v2 --> Numeric) {
    return $dfObj.hamming-distance($v1, $v2);
}

multi sub hamming-distance(|) {
    die $errMsg2;
}

#----------------------------------------------------------
proto sub manhattan-distance(|) is export {*}

multi sub manhattan-distance(@v1, @v2 --> Numeric) {
    return $dfObj.manhattan-distance(@v1, @v2);
}

multi sub manhattan-distance(|) {
    die $errMsg;
}

#----------------------------------------------------------
proto sub squared-euclidean-distance(|) is export {*}

multi sub squared-euclidean-distance(@v1, @v2 --> Numeric) {
    return $dfObj.squared-euclidean-distance(@v1, @v2);
}

multi sub squared-euclidean-distance(|) {
    die $errMsg;
}

#----------------------------------------------------------
proto sub norm(|) is export {*}

multi sub norm($vec, $p --> Numeric) {
    return norm(:$vec, :$p);
}

multi sub norm(@vec, :$p = 2 --> Numeric) {
    return norm(vector => @vec.Array, :$p);
}

multi sub norm(:v(:@vector), :$p --> Numeric) {
    return $dfObj.norm(:@vector, :$p);
}

multi sub norm(|) {
    die 'If two positional arguments are given then: (i) the first argument is expected to be a vector, ' ~
            '(ii) the second argument is expected to be p-norm specification (a number or a string.)' ~
            'If a positional and a named argument are given then the positional argument is expected to be a vector. ' ~
            'Two named arguments can be given, :v($vector) and :$p.';
}