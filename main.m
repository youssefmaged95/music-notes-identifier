function [ output ] = main( path );
  output= '';
  image    =  imread(path);
  %disp('Filtering Image...');
  image = mean_filter( image , 4 );
  disp('Converting To Binary...');
  image = OTSU( image );
  clef = ( get_best_match( cut( image , 1 , 92 ) ) );
  start_point = 92;
  end_point = 153;
  for i=1:1:13
    name = get_best_match( cut(image , start_point , end_point ) );
    if( strcmp(clef,'treble_clef.png')==1);
      name = name(1:2);
    else
      name = name(4:5);
    end
    output = strcat( output , name );
    output = strcat( output , ' , ' );
    start_point = end_point;
    end_point = end_point + 61 ;
  end
end
