function [] = kmeansCluster()
    max_range = 10;
    min_range = -10;
    num_points = 5000;
    vector = ( max_range - min_range ) .* rand( 1, num_points ) + min_range;
    points = makePoints( vector );
    centroids = initialCentroid( points );
    init_labels =  false( size( points, 1 ), 1 );
    [ labels, c1, c2 ] = makeClusters( points, centroids );
    trial = 0;
    while ~isequal( labels, init_labels ) && trial < 1000
        init_labels = labels;
        centroids = [ mean( c1 ); mean( c2 ) ];
        [ labels, c1, c2 ] = makeClusters( points, centroids );
        trial = trial + 1;
    end
    hold on
    plot( c1( :, 1 ), c1( :, 2 ), 'r.' );
    plot( c2( :, 1 ), c2( :, 2 ), 'b.' );
    plot( centroids(1), centroids(3), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r' ); 
    plot( centroids(2), centroids(4), 'bo', 'MarkerSize', 10, 'MarkerFaceColor', 'b' );
    hold off
end