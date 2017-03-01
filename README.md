<h1>Music-Notes-Identifier</h1>
This program takes as input a low quality image of a music piece (a line starting by a music key followed by music notes), enhances the image and then compares it to the digital segmented music key/notes images

<h1>Helpers : </h1>
   
   <h4>Input :</h4>
   <img src='Images/original.jpg'/>
   
   <h2> main( image_path )</h2>
   <ul>
     <li>This function takes a  low quality image of a music piece as an input</li>
     <li>Enhances the image</li>
     <li>Compares it to the digital segmented music key/notes images</li>
     <li>The output is the corresponding key namesof the music piece</li>
   </ul>

   
   <h2> OTSU( image )</h2>
   <ul>
     <li>This function takes an image as an input</li>
     <li>It uses OTSU's algorithm to convert image to binary</li>
     <img src='Images/algorithm2.jpg'>
     <img src='Images/algorithm.JPG'>
     <li>The output is a binary image where every pixel is either set to 0 or 255 </li>
   </ul>
   <h4>Output :</h4>
   <img src='Images/OTSU.jpg'/>



   <h2> mean_filter( image , filter_size )</h2>
   <p>"Implemented Not Used"</p>
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
     <li>It crops the image so that the width of the image is (end_point - start_point) and the image starts at the starting_point on the original image</li>
     <li>The output is a cropped image</li>
   </ul>
   <h4>Output :</h4>
   <img src='Images/cut.JPG'/>
   
   
   <h2> get_common_pixels( image1 , image2 )</h2>
   <ul>
     <li>This function takes two images as an input</li>
     <li>The output is the number of pixels in both images that have the same index and value</li>
   </ul>
   
   <h2> get_best_match( image  )</h2>
   <ul>
     <li>This function takes an images as an input</li>
     <li>The output is the name of the image in the database that has the most common pixels with the input image</li>
   </ul>
    
    

      
      

