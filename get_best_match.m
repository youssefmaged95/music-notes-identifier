function [ output ] = get_match( image )
 database = 'Images/Database/';
 files = dir('Images/Database/*.png');
 max_common = int64(900000000000000000000000000);
 new_common = int64(0);
 common_name = '';
 for file = files';
    new_common = int64(ssd(image , imread(strcat(database,file.name))));
    if new_common < max_common;
      max_common = new_common;
      common_name = file.name;
    end
  end
 output = common_name;
end
