function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.

% nested for loop
%for i = 1:K
%    s = 0;
%    count = 0;
%    for j = 1:m
%        if idx(j) == i
%            s = s + X(j,:);
%            count = count + 1;
%        end
%    end
%    if count ~= 0
%        centroids(i,:) = s / count;
%    end
%end

% 2 for loops
%boolean_idx = zeros(m,K);
%for i = 1:m
%    boolean_idx(i,idx(i)) = 1;
%end
%boolean_idx = boolean_idx';
%for i = 1:K
%    s = sum( boolean_idx(i,:) );
%    centroids(i,:) = centroids(i,:) / s;
%end

% no loop
boolean_idx = not(logical(repmat(idx,1,K)-repmat(linspace(1,K,K),m,1)))';
centroids = boolean_idx * X ./ sum(boolean_idx,2);

% =============================================================


end

