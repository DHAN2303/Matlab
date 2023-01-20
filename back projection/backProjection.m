clc
clear
close all
%%
load('/Users/dhan/Desktop/Projections.mat')  % upload Projections matrix 

Sinogram=proj;

% projection angles
theta = 0:size(Sinogram,1)-1; 
% detector elements (length of detector)
detector =  size(Sinogram,2);
% find the middle index of the projections
center = detector/2;
% Dec to Rad
thetaRad = (pi/180)*theta;


figure(1),
imagesc(Sinogram);  % imshow(proj, []);
colormap gray;
colorbar
title('Sinogram'); 

figure(2)
plot(proj);         % Projections signals
title('Signals'); 

%%   a grid of points that represent the pixels in a reconstructed image
% re-size the picture to be bigger
bigger=0;
% bigger = input('bigger:');
% [X, Y] = meshgrid(-size(Sinogram,2):size(Sinogram,2)-1);
[X,Y] = meshgrid(-(detector+bigger)/2:((detector+bigger)/2)-1);
bprojction = zeros(size(X));
f_bprojction  = zeros(size(X));

Sinogram= Sinogram'; % The transpose of prrojections' matrix 
% figure(2); colormap gray;imagesc(pT);title('Sinogram Inverse'); % imshow(projT, []);

%% filter 
% sinc filter by fft 
w = [-pi:(2*pi)/detector:pi-(2*pi)/detector];
sinc = abs(2*sin(w./2))*(sin((w)./2)/(w)./2)^2;
sincfft = fftshift(sinc);

figure(3)
plot(sincfft)
title('Low pass filter');

%%
figure(4);
% loop over each projection
for i = 1:length(theta)

    % figure out the place of each projections
    pPlace = round(center + X*sin(thetaRad(i)) + Y*cos(thetaRad(i)));

    % to check the coordinates to not exceeds 100
    check   = find((pPlace > 0) & (pPlace <= detector));

    % filter by fft 
    f_Sinogram = fft(Sinogram(:,i)).*sincfft';
    inv_filtred_sino(:,i) = ifft(f_Sinogram);
    f_Sinogram_fft = real(inv_filtred_sino);
    
    % summation 
    bprojction(check) = bprojction(check) + Sinogram(pPlace(check),i)/detector;
    f_bprojction(check) = f_bprojction(check) + f_Sinogram_fft(pPlace(check),i)/detector;
    
    imagesc(f_bprojction);
    figure(4),
    colormap gray;
    title('Back projection');
    % plot to be updated
    drawnow 
    
end

figure(4),
f_bprojction = imrotate(f_bprojction,90);
imagesc(f_bprojction);
colormap gray;
title('Filtred Back projection');
figure(5),
bprojction = imrotate(bprojction,90);
imagesc(bprojction);
colormap gray;
title('Back projection');
figure(6),
plot(f_bprojction);
title('Filtred Back projection signals');
figure(7),
plot(bprojction);
title('Back projection signals');


%%
