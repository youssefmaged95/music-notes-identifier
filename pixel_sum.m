function [ output ] = pixel_sum( image )
  [r,c,~]  =  size(image) ;
  sum = int64(0);
  for i=1:1:r-1;
    for j=1:1:c-1;
      if( image(i,j) == 0)
        sum = sum + 1 ;
      end
    end
  end
  output = sum;
