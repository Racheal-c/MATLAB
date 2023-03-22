%% CHEK XIOU RUE (AE190102)
% MEDICAL IMAGING (INDIVIDUAL ASSIGNMENT)
%% IMAGE 12.JPG

% The purpose of close and clear syntax are to clear any data and free up the memory.
close all;
clear all;
% The purpose of clc is to clear all the previous output.
clc;
% The input image (brain12.jpg) is defined as imgOri.
% imread syntax is used to read image from graphic file.
imgOri = imread('brain12.jpg');
% fspecial syntax is a predefined 2d filter that returns a 3 returns a 3-by-3 filter approximating the shape of the 
% two-dimensional Laplacian operator. The value of alpha which is 0.2 controls the shape of the Laplacian.
% This operation below is used to calculate the coefficient of the filtered image.
% The value of Laplacian Filter is defined as [0 0 0;0 1 0;0 0 0]. The value of 1 is chosen as the lower the value the less contrast and
% brightness of the image.
sharpCoeff = [0 0 0;0 1 0;0 0 0]-fspecial('laplacian',0.2);
% imfilter syntax is used to filter the original image using Laplacian filter.
imgSharp = imfilter(imgOri,sharpCoeff);
figure (1)
%imshowpair syntax is used to display and compare the differences between the original
%image and the filtered image with the title named as 'Brain and Filtered Brain'.
imshowpair(imgOri,imgSharp,'montage')
title('Figure 1: Brain and Filtered Brain')

% The image is read using the imread syntax.
img=imread('brain12.jpg');
% The input image is converted from grayscale image to binary image 'bw' based on threshold by
% replacing all the pixels in the input image with luminance of 0.7 where
% white colour is more obvious in the image.
bw=im2bw(img,0.7);
% bwlabel syntax is used to label the connected components of tumor in
% the input image.
label=bwlabel(bw);
% regionprops syntax is used to calculate properties of image regions
stats=regionprops(label,'Solidity','Area','BoundingBox','Centroid');
density=[stats.Solidity];
area=[stats.Area];
high_dense_area=density>0.5;
max_area=max(area(high_dense_area));
% The value of the area of the tumor is 1330
% The find syntax is required to find the area of the tumor
tumor_label=find(area==max_area);
% The box function is to draw the bounding box on the tumor.
box = stats(tumor_label);
wantedBox = box.BoundingBox;
%ismember function is useful for creating a binary image containing only objects or regions 
% that meet certain criteria. In this case, these commands create a binary image containing 
% only the regions whose area is equal to max_area.
tumor=ismember(label,tumor_label);
hold on;
rectangle('Position',wantedBox,'EdgeColor','y');
hold off;
%This is used to creates square with 5 pixels.
se=strel('square',5);
% The tumor is specified with the square with 5 pixels.
tumor=imdilate(tumor,se);

% Figure 2 shows the brain, tumor alone and detected tumor.
figure(2);
% subplot here divides the current figure into an 1-by-3 grid and creates axes in the position specified by 1.
subplot(1,3,1);
% image is displayed based on the range of 1 to 5 pixels.
imshow(img,[]);
title('Brain');
%  subplot here divides the current figure into an 1-by-3 grid and creates axes in the position specified by 2.
subplot(1,3,2);
% tumor is displayed based on the range of 1 to 5 pixels.
imshow(tumor,[]);
title('Tumor Alone');
% The purpose of the function is to calculate boundaries of regions in image and 
% overlay the boundaries on the image.
[B,L]=bwboundaries(tumor,'noholes');
%  subplot here divides the current figure into an 1-by-3 grid and creates axes in the position specified by 3.
subplot(1,3,3);
% image is displayed based on the range of 1 to 5 pixels.
imshow(img,[]);
hold on
% The purpose of this loop is to calculate the length until certain boundary.
for i=1:length(B)
plot(B{i}(:,2),B{i}(:,1), 'y' ,'linewidth',1.45);
end
title('Detected Tumor');
hold off;

%% IMAGE 21.JPG

% The purpose of close and clear syntax are to clear any data and free up the memory.
close all;
clear all;
% The purpose of clc is to clear all the previous output.
clc;
% The input image (brain12.jpg) is defined as imgOri.
% imread syntax is used to read image from graphic file.
imgOri = imread('brain21.jpg');
% fspecial syntax is a predefined 2d filter that returns a 3 returns a 3-by-3 filter approximating the shape of the two-dimensional Laplacian operator,
% The value of alpha which is 0.2 controls the shape of the Laplacian.
% This operation below is used to calculate the coefficient of the filtered image.
% The value of Laplacian Filter is defined as [0 0 0;0 1 0;0 0 0]. The
% value of 1 is chosen as the lower the value the less contrast and brightness of the image.
sharpCoeff = [0 0 0;0 1 0;0 0 0]-fspecial('laplacian',0.2);
% imfilter syntax is used to filter the original image using Laplacian filter.
imgSharp = imfilter(imgOri,sharpCoeff);
figure (1)
%imshowpair syntax is used to display and compare the differences between the original
%image and the filtered image with the title named as 'Brain and Filtered Brain'.
imshowpair(imgOri,imgSharp,'montage')
title('Figure 1:Brain and Filtered Brain')
% The image is read using the imread syntax.
img=imread('brain21.jpg');
% The input image is converted from grayscale image to binary image 'bw' based on threshold by
% replacing all the pixels in the input image with luminance of 0.7 where
% white colour is more obvious in the image.
bw=im2bw(img,0.7);
% bwlabel syntax is used to label the connected components of tumor in
% the input image.
label=bwlabel(bw);
% regionprops syntax is used to calculate properties of image regions
stats=regionprops(label,'Solidity','Area','BoundingBox','Centroid');
density=[stats.Solidity];
area=[stats.Area];
high_dense_area=density>0.5;
max_area=max(area(high_dense_area));
% The value of the area of the tumor is 1513
% The find syntax is required to find the area of the tumor
tumor_label=find(area==max_area);
% The box function is to draw the bounding box on the tumor.
box = stats(tumor_label);
wantedBox = box.BoundingBox;
%ismember function is useful for creating a binary image containing only objects or regions 
% that meet certain criteria. In this case, these commands create a binary image containing 
% only the regions whose area is equal to max_area.
tumor=ismember(label,tumor_label);
hold on;
rectangle('Position',wantedBox,'EdgeColor','y');
hold off;
%This is used to creates square with 5 pixels.
se=strel('square',5);
% The tumor is specified with the square with 5 pixels.
tumor=imdilate(tumor,se);

% Figure 2 shows the brain, tumor alone and detected tumor.
figure(2);
% subplot here divides the current figure into an 1-by-3 grid and creates axes in the position specified by 1.
subplot(1,3,1);
% image is displayed based on the range of 1 to 5 pixels.
imshow(img,[]);
title('Brain');
%  subplot here divides the current figure into an 1-by-3 grid and creates axes in the position specified by 2.
subplot(1,3,2);
% tumor is displayed based on the range of 1 to 5 pixels.
imshow(tumor,[]);
title('Tumor Alone');
% The purpose of the function is to calculate boundaries of regions in image and 
% overlay the boundaries on the image.
[B,L]=bwboundaries(tumor,'noholes');
%  subplot here divides the current figure into an 1-by-3 grid and creates axes in the position specified by 3.
subplot(1,3,3);
% image is displayed based on the range of 1 to 5 pixels.
imshow(img,[]);
hold on
% The purpose of this loop is to calculate the length until certain boundary.
for i=1:length(B)
plot(B{i}(:,2),B{i}(:,1), 'y' ,'linewidth',1.45);
end
title('Detected Tumor');
hold off;