%Face 1 (input)
%written on 3/15/23
%by Priya Bhanot
%this script creates a basic face image

face1 = ones(10);
%eyes
face1(2:3, 3:4) = zeros;
face1(2:3, 7:8) = zeros;
%nose
face1(5:6,5:6) = zeros;
%mouth
face1(8:9, 3:8) = zeros;

%imagesc(face1)
