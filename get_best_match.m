function [ output ] = get_match( image )
 database = 'Images/Database/';
 files = dir('Images/Database/*.png');
 max_common = 0;
 common_name = '';
 for file = files';
    new_common = get_common_pixels(image , imread(strcat(database,file.name)));
    if new_common > max_common;
      max_common = new_common;
      common_name = file.name;
    end
  end
 output = common_name;
end
