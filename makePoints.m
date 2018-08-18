function [ points ] = makePoints( vector )
    row = length( vector );
    points = reshape( vector, 2, row/2 )';
end