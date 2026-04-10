% Step 1: Import the image
img = imread('cell.tif');

% Step 2: Run Canny with default parameters
edges_default = edge(img, 'canny');

% Step 4: Run Canny with optimized parameters
% Syntax: edge(image, 'canny', [low_threshold high_threshold], sigma)
% Try these starting values and adjust as needed:
opt_thresholds = [0.1, 0.2]; 
opt_sigma = 1.5; 
edges_opt = edge(img, 'canny', opt_thresholds, opt_sigma);

% Step 5: Display results
figure;
subplot(1,3,1); imshow(img); title('Original');
subplot(1,3,2); imshow(edges_default); title('Canny (Default)');
subplot(1,3,3); imshow(edges_opt); title('Canny (Optimized)');