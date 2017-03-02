function [ output ] = ssd( image , image2 )
  [r,c,~]  =  size(image) ;
  [r1,c1,~]  =  size(image2) ;
  sum = int64(0) ;
  if ~(c1 == c)
    sum = int64(9000000000000000000000000000000) ;
  else
    for i=1:1:r-1;
      for j=1:1:c-1;
        sum = int64( sum + int64( ( image(i,j) - image2(i,j) ) ^ 2 ) );
      end
    end
  end
  output = sum;
end
