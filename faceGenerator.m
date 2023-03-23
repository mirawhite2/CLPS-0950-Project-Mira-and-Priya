%face generator
%written on 3/17/23, 3/18/23, 3/19/23, 3/21/23, 3/22/23
%Priya Bhanot
%
%to generate a face, change n according to desired size, and press run
%to generate NOT a face, comment out desired feature section(s) (ie.
%eyes,nose,mouth)
%
%for best results, n >= 9

n = 10;
image = ones(n);

if mod(n,2) ~= 0 %if n is odd
    center = round(n/2);
    eye_local = round(center/2);
    unit = center - eye_local;
    mouth_local = center + unit;
    mouth_width = floor(.75*n);
    %create nose
    image(center,center) = 0;
    %create eyes
        %to only remove one eye, delete one element of the index array in
        %the column placement of image
    image(eye_local,[eye_local, center+unit]) = 0; 
    %create mouth
    image(mouth_local, eye_local:center+unit) = 0;

else %if n is even
    center1 = n/2;
    eye_local1 = round(center1/2);
    unit1 = center1 - eye_local1;
    %create nose
    image(center1:center1+1, center1:center1+1) = 0;
    %create eyes
        %to only remove one eye, delete one element of the index array in
        %the column placement of image
    image(eye_local1,[eye_local1, center1+unit1+1]) = 0;
    %create mouth
    image(center1+eye_local1, eye_local1:center1+unit1+1) = 0;
end
