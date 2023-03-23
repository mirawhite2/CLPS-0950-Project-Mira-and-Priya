%notface1 (input)
%written on 3/15/23
%by Priya Bhanot
%this script creates a basic image that does NOT include a face

notface1 = ones(10);
notface1(2:3, 7:8) = zeros;
notface1(5:6,5:6) = zeros;
notface1(8:9, 3:8) = zeros;

%imagesc(notface1);
%disp(notface1)
