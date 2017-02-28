function [ output ] = cut( image , start_point , end_point );
    [r,c,~]  =  size( image ) ;
    cut      =  zeros( r , end_point - start_point );

    for i=1:1:r;
        for j=start_point:1:end_point;
            cut(i,j)=image(i,j);
        end
    end
    figure, imshow( uint8(cut) );
    output = uint8(cut);

end
