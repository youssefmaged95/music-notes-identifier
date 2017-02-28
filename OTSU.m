function [ output ] = OTSU( image )
max = 255;
min = 0;
range = max - min ;
max_class_variance = 0;
max_k = 0;
for k=min:1:max-1

  [r,c,~]  =  size(image) ;
  count = 0;
  histogram = zeros(1 , range  );
  probabilities = zeros(1 , range  );
  probability_less = 0;
  probability_greater = 0;
  mean_less = 0;
  mean_greater = 0;
  mean = 0;
  global_variance = 0;
  class_variance = 0;


  %Fill Out The Histogram

  for i=1:1:r;
    for j=1:1:c;
      if((min<=image(i,j))&&(image(i,j)<max))
          count = count + 1;
          value = image(i,j);
          histogram(1, value + 1 ) = histogram(1, value + 1 ) + 1 ;
      end
    end
  end

  %Normalize The Histogram

  for i=1:1:(range);
    probabilities(1,i) = histogram(1,i) / count ;
  end

  %Fill Out class Probabilities

  for i=1:1:(range);
    if(i <= k)
      probability_less = probability_less + probabilities(1,i);
    else
      probability_greater = probability_greater + probabilities(1,i);
    end
  end

  %Mean Value Of Each class Summation

  for i=1:1:(range);
    if(i <= k)
      mean_less = mean_less + ( (i-1) * probabilities(1,i)) ;
    else
      mean_greater = mean_greater + ( (i-1) * probabilities(1,i)) ;
    end
  end
  mean_less = mean_less / probability_less ;
  mean_greater = mean_greater / probability_greater;

  %Global Variance Summation

  for i=1:1:(range);
    global_variance = global_variance + ( ( ( (i-1) - mean ) ^ 2 ) * probabilities(1,i) );
  end


  class_variance =  ( probability_less * ( ( mean_less - mean ) ^ 2 ) ) + ( probability_greater * ( ( mean_greater - mean ) ^ 2 ) )

  if(class_variance>max_class_variance);
    max_k = k;
    max_class_variance = class_variance ;
  end
end

for i=1:1:r;
    for j=1:1:c;
        if image(i,j)>max_k;
          filtered(i,j)=255;
        else
          filtered(i,j)=0;
        end
    end
end

  figure, imshow(uint8(filtered));
  output = (uint8(filtered));
end
