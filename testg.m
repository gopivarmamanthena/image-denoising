X_clean = imread('lenna.tiff');
X_clean = rgb2gray(X_clean);
%X_clean = imresize(X_clean, 0.5);
X_clean = imresize(X_clean, [100 100]);
[h,w] = size(X_clean);
%k=power(power(h,0.5)+5,2);

%% adding noise to our image 
mean_noise = 0;
var_noise1 = 0.001;
var_noise2 = 0.01;
Y1 = imnoise(X_clean,'gaussian',mean_noise, var_noise1);
Y2 = imnoise(X_clean,'gaussian',mean_noise, var_noise2);
images = [Y1;Y2;X_clean];
figure, imshow(images)

