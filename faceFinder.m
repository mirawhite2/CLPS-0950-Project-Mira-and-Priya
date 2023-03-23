function [detected] = faceFinder(image)
%Detect whether a face is present within a given image
%   eyes = two symmetrical black squares 
%   nose = one square in center of face below eyes
%   mouth = one symmetrical rectangle below nose
%   image must be square

N = size(face1)
%determine if symmetrical or not
tf_sym = issymmetric(image)
if tf_sym == false
    detected = false;
%if symmetric, determine in facial features are present
else
    if mod(N,2) == 1
        %nose determination
        center = round(N/2);
        if image(center,center) == 1
            detected = false;
        else
            A = find(image(center,:) == 0)
            B = find(image(:,center) == 0)
            if size(A) =~ size(B)
                detected = false;
            else

            end
        end



    else
        %nose determination
        center = N/2;
        nose_local = find(image(center,center))



    end

end
end