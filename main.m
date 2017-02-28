function main( path );
  image    =  imread(path);
  %disp('Filtering Image...');
  %image = mean_filter( image );
  disp('Converting To Binary...');
  image = OTSU( image );
  compare_keys( cut(image , 1 , 91 ));
end
