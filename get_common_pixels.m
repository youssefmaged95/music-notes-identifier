function [ output ] = pixel_sum( image , image2 )
  [r,c,~]  =  size(image) ;
  [r1,c1,~]  =  size(image2) ;
  if ~(c1 == c)
    common = 0 ;
  else
    common = 0 ;
    for i=1:1:r-1;
      for j=1:1:c-1;
        if( image(i,j) == image2(i,j) )
          common = common + 1 ;
        end
      end
    end
  end
  output = common;
end
