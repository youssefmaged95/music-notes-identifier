function [ output ] = compare_keys( image )
  bass = OTSU( imread('Images/Database/bass_clef.png') );
  treble = OTSU( imread('Images/Database/treble_clef.png') );
  diff1  = int64( (pixel_sum( image ) - pixel_sum( bass )) ^ 2 );
  diff2  = int64( (pixel_sum( image ) - pixel_sum( treble )) ^ 2);
  if( diff2 > diff1 );
    disp('bass');
  else
    disp('treble');
  end
end
