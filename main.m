function main( path );
  image    =  imread(path);
  remove_noise(image);
  OTSU(image);
end
