function  [ output ] = remove_noise( image );
  [r,c,~]  =  size(image) ;
  filtered =  zeros(r , c);
  for i=1:1:r;
      for j=1:1:c;
          if image(i,j)>80;
            filtered(i,j)=255;
          else
            filtered(i,j)=image(i,j);
          end
      end
  end

  for i=1:1:r;
      for j=1:1:c;
          if image(i,j)>80;
            filtered(i,j)=255;
          else
            filtered(i,j)=image(i,j);
          end
      end
  end
  figure, imshow(uint8(filtered));
  output = filtered;
end
