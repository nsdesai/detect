function [] = updatetraces(r)
global showtracesAxes imageData

r = round(r.Position);
imgMask = imageData(r(2):r(2)+r(4),r(1):r(1)+r(3),:);
N = numel(imgMask(:,:,1));
imgSum = sum(imgMask,1);
imgSum = sum(imgSum,2);
imgSum = squeeze(imgSum);
imgMean = imgSum/N;

plot(showtracesAxes,imgMean)
