# CLPS-0950-Project-Mira-and-Priya
# This repository was created by Priya Bhanot and Mira White for CLPS0950

This repositoory features two major scripts: faceGenerator and faceFinder
The script faceGenerator creates a matrix called 'image' of n size that can be modified to display a face (as defined in the code) or not-a-face. This generator will create inputs for the faceFinder function. For best results, n >= 9. 

The script faceFinder takes the input image from faceGenerator and outputs which the facial features (nose, eyes, mouth) are present, and if there is a full face present.  


NOTE: We encountered some difficulties with pushing/pulling/committing to Github, so we had to create a new project repository. In order to account for this, we have included a spreadsheet called CLPS0950_Project_Time that contains the breakdown of hours spent for Priya and Mira individually. 

TUTORIAL:
Generating a Face image and inputting it to the faceFinder function for facial detection:

1. Input desired 'n' to determine size of face image produced by faceGenerator function (for best results, use n>=9)


![](https://github.com/mirawhite2/CLPS-0950-Project-Mira-and-Priya/blob/master/GIF%201.gif)

2. Press RUN. Enjoy your results! (Results include image of face input, summary output statment, breakdown of which facial features are present, and whether a face is detected)


![](https://github.com/mirawhite2/CLPS-0950-Project-Mira-and-Priya/blob/master/GIF%202.gif)

Generating/Customizing a NOT Face image and inputting it to the the faceFinder function for facial detection:

1. Input desired 'n' to determine size of face image produced by faceGenerator function (for best results, use n>=9). Note whether chosen 'n' is odd or even.


![](https://github.com/mirawhite2/CLPS-0950-Project-Mira-and-Priya/blob/master/GIF%203.gif)

2. Go to 'faceGenerator.m' function script. Comment out the line below the feature you would like to remove using '%' in the appropriate "if n is odd/even" section.


![](https://github.com/mirawhite2/CLPS-0950-Project-Mira-and-Priya/blob/master/GIF%204.gif)

3. Return to 'Main.m' script. Press RUN. Enjoy your results! (Results include image of face input, summary output statment, breakdown of which facial features are present, and whether a face is detected)


![](https://github.com/mirawhite2/CLPS-0950-Project-Mira-and-Priya/blob/master/GIF%205.gif)
