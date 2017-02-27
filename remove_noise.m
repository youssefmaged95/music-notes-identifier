function  [ output ] = remove_noise(path);
  image       =  imread(path);
  [r,c,~]     =  size(image) ;
  filtered    =  zeros(r , c);
  for i=1:1:r
      for j=1:1:c
          if image(i,j)>80
            filtered(i,j)=255;
          else
            filtered(i,j)=0;
          end
      end
  end
  output = filtered;
  figure, imshow(uint8(filtered));
