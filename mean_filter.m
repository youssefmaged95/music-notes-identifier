function [ output ] = mean_filter( image , filter_size );
  sum = int64(0);
  [r,c,~]  =  size(image) ;
  filtered =  zeros(r , c);

  %Initialize White Image

  for i=1:1:r;
      for j=1:1:c;
          filtered(i,j)=225;
      end
  end

  %Fill Out The New Image With Mean Values From Original Image

  for i=1:1:r - filter_size ;
      for j=1:1:c-filter_size;
          for k=0:1:filter_size-1
            for m=0:1:filter_size-1
              sum = int64( int64(sum) + int64(image( i + k , j + m) ) );
            end
          end
          mean1 = (((sum)/(filter_size*filter_size)));
          filtered(i,j) = mean1;
          sum = 0;
      end
  end

  output = uint8(filtered);
