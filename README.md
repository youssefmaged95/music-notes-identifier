<h1>Music-Notes-Identifier</h1>
This program takes as input a low quality image of a music piece (a line starting by a music key followed by music notes), enhances the image and then compares it to the digital segmented music key/notes images

   
   <h4>Input :</h4>
   <img src='Images/original.jpg'/>
   
   <h4>Output :</h4>
   <p>E2 ,F3 ,A3 ,B2 ,D3 ,D3 ,C4 ,E3 ,F3 ,G2 ,C4 ,A2 ,C4</p>
   
   <h1>Helpers : </h1>
   
   <h2> main( image_path )</h2>
   <ul>
     <li>This function takes a  low quality image of a music piece as an input</li>
     <li>Filters the image using mean_filter( image )</li>
     <li>Convert the image to binary using OTSU( image )</li>
     <li>Divides the image into 14 images (1 music clef and 13 music keys)</li>
     <li>It gets the best match for each of the 14 images from the database </li>
     <li>The output is the corresponding key names of the music piece</li>
   </ul>

   
   <h2> OTSU( image )</h2>
   <ul>
     <li>This function takes an image as an input</li>
     <li>It uses  <a href = "https://en.wikipedia.org/wiki/Otsu's_method">OTSU's Algorithm</a> to convert image to binary</li>
     <li>The output is a binary image where every pixel is either set to 0 or 255 </li>
   </ul>
   <h4>Output :</h4>
   <img src='Images/OTSU.jpg'/>


   <h2> mean_filter( image , filter_size )</h2>
   <ul>
     <li>This function takes an image and a filter size value as an input</li>
     <li>It sets the value of each pixel to the mean value of the surrounding (filter_size * filter_size) pixels</li>
     <li>The output is a filtered image</li>
   </ul>
   <h4>Output :</h4>
   <img src='Images/mean_filter.jpg'/>
   
   
   <h2> cut( image , start_point , end_point )</h2>
   <ul>
     <li>This function takes an image , start_point and an end_point as an input</li>
     <li>It crops the image so that the width of the image is (end_point - start_point) where the image starts at the starting_point in the original image</li>
     <li>The output is a cropped image</li>
   </ul>
   <h4>Output :</h4>
   <img src='Images/cut.JPG'/>
   
   
   <h2> get_common_pixels( image1 , image2 )</h2>
    <p>"Implemented Not Used"</p>
   <ul>
     <li>This function takes two images as an input</li>
     <li>The output is the number of pixels in both images that have the same index and value</li>
   </ul>
   
   <h2> ssd( image1 , image2 )</h2>
   <ul>
     <li>This function takes two images as an input</li>
     <li>The output is the summation of the squares of the differences between corresponding pixels <br>Equation : SUMMATION(( image1(x,y) - image2(x,y))^2)</li>
   </ul>
   
   <h2> get_best_match( image )</h2>
   <ul>
     <li>This function takes an image as an input</li>
     <li>The output is the name of the image in the database where ssd( image , database_image ) returns the lowest value</li>
   </ul>
    
    

      
      

