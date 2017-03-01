function [ output ] = cut( image , start_point , end_point );
    [r,c,~]  =  size( image ) ;
    new_image =  zeros( r , end_point - start_point );
    column_counter = start_point;
    for i=1:1:r;
        column_counter = start_point;
        for j=1:1:end_point - start_point;
            new_image(i,j)=image(i,column_counter);
            column_counter = column_counter + 1;
        end
    end
    %figure, imshow( uint8(new_image) );
    output = uint8(new_image);
end
