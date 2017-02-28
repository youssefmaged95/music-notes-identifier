function main( path );
  image    =  imread(path);
  %remove_noise(image);
  OTSU( mean_filter( image ) );
  %figure, imshow( image );
end
