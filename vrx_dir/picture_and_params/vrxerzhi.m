%读数据
subplot(1, 2, 1);
a = imread('robotx_example2.jpg');
imshow(a);
title('原图');

%彩色图像二值化
subplot(1, 2, 2);
thresh = graythresh(a);%自动确定阈值
b = im2bw(a,0.46);
%b = imbinarize(a, thresh);
imshow(b);
title('二值化');

%生成bmp格式的二值图像
str1 = 'E:';
str2 = 'binary_image2';
str3 = '.bmp';
save_path = [str1, str2, str3];
imwrite(b, save_path);		% 这里可以写成imwrite(b, stract('C:\路径\', 'binary_image2', '.bmp'))

