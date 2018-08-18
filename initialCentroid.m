function [ centroids ] = initialCentroid( points )
    min_x = round( min( points( :, 1 )));
    max_x = round( max( points( :, 1 )));
    min_y = round( min( points( :, 2 )));
    max_y = round( max( points( :, 2 )));
    mean_x = randi( [ min_x, max_x ], 2, 1 );
    mean_y = randi( [ min_y, max_y ], 2, 1 );
    centroids = [ mean_x, mean_y ];
end