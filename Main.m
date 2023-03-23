%Main Script
%
%written on 3/23/23
%Priya Bhanot
%
%This script runs the faceGenerator function to produce an input for the
%faceFinder function that will detect whether a face is present or not

%To generate an input that is NOT a face, go to the script for the
%faceGenerator function

%n = desired size of image, for best results use n>= 9
image = faceGenerator(12); 
imagesc(image)
[nose_detected,eyes_detected,mouth_detected,face_detected] = faceFinder(image)
