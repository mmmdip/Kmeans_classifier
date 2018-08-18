function [ labels, cluster1, cluster2 ] = makeClusters( points, centroids )
    num_points = size( points, 1 );
    labels = zeros( num_points, 1 );
    mean1 = centroids( 1, : );
    mean2 = centroids( 2, : );
    cluster1 = [];
    cluster2 = [];
    for idx = 1 : num_points
       point = points( idx, : );
       dist1 = euclidDist( point, mean1);
       dist2 = euclidDist( point, mean2);
       if dist2 < dist1
           labels( idx ) = 1;
           cluster2 = [ cluster2; point ];
       else
           cluster1 = [ cluster1; point ];
       end
    end
    labels = logical( labels );
end