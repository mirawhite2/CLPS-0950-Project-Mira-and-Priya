function [detected] = faceFinder(image)
%Detect whether a face is present within a given image
%   eyes = two symmetrical black squares 
%   nose = one square in center of face below eyes
%   mouth = one symmetrical rectangle below nose
%   image must be square
% Written by Priya Bhanot and Mira White 
detected = true;
N = size(image)
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
    %eye detector
    eye_model =[0,0;0,0];
    if detected == true
        eye_index1 = round(N(2)/4);
        if image(2:2,eye_index1:eye_index1 + 1) ~= eye_model
            detected = false;
        elseif image(2:2, N(2)-eye_index1: N(2) - (eye_index1-1)) ~= eye_model
            detected = false;
        else
            detected = true;
        end
    end

    %mouth detector
    mouth_model = [0,0,0,0,0,0;0,0,0,0,0,0];
    mouth_index = round(N(2)/4);
    if detected == true
        if image(8:9,mouth_index:N(2)+1-mouth_index) ~= mouth_model
            detected = false;
        else
            detected = true;
        end
    end

        


      
        
        
       
        

      


end
end