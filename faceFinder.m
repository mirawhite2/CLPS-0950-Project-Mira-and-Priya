%faceFinder: this function detects facial features and whether a face is
%            present
%facial features: nose (one dot/square in the center of face)
%                 eyes (two black dots placed symmetrically above nose)
%                 mouth (one rectangle below the nose)
%
%written from 3/14/23-3/23/23, Priya Bhanot & Mira White

function [nose_detected,eyes_detected,mouth_detected,face_detected] = faceFinder(image)

A = size(image);
N = A(1);
nose_detected = 0;
eyes_detected = 0;
mouth_detected = 0;
face_detected = 0;

if mod(N,2) == 1 %if N is odd
    center = round(N/2);
    %nose detection
    if image(center,center) == 0
        nose_detected = 1;
    else
        nose_detected = 0;
    end
    %eyes detection. 1 = both eyes, 2 = no eyes, 3 = one eye
    eye_local = round(center/2);
    unit = center - eye_local;
    if image(eye_local, eye_local) ==1 & image(eye_local,center+unit) ==1
        left_eye = 1;
        right_eye = 1;
    elseif image(eye_local, eye_local) ==1
        left_eye = 1;
        right_eye = 0;
    elseif image(eye_local,center+unit) ==1
        left_eye=0;
        right_eye=1;
    else
        left_eye =0;
        right_eye =0;
    end
    if left_eye & right_eye == 1
        eyes_detected =1;
    elseif left_eye == 1 || right_eye ==1
        eyes_detected = 3;
    else
        eyes_detected = 0;
    end
    %mouth detection
    if image(center+unit, eye_local:center+unit) ==0
        mouth_detected =1;
    else
        mouth_detected = 0;
    end
else %if N is even
    even_center = N/2;
    %nose detection
    if image(even_center:even_center+1, even_center:even_center+1) ==0;
        nose_detected = 1;
    else
        nose_detected = 0;
    end
    %eyes detection
    even_eyelocal = round(even_center/2);
    unit1 = even_center - even_eyelocal;
    if (image(even_eyelocal, even_eyelocal) == 0) & (image(even_eyelocal,even_center+unit1+1)==0)
        eyes_detected = 1;
    elseif (image(even_eyelocal, even_eyelocal) == 1) & (image(even_eyelocal,even_center+unit1+1)==0)
        eyes_detected = 0;
    else
        eyes_detected =3;
    end
    %mouth detection
    if image(even_center + even_eyelocal, even_eyelocal:center+center - even_eyelocal+1) ==0
        mouth_detected = 1;
    else
        mouth_detected = 0;
    end
end

if ((nose_detected == 1) & (eyes_detected ==1) & (mouth_detected ==1))
    face_detected = 1;
else
    face_detected = 0;
end

imagesc(image)
end