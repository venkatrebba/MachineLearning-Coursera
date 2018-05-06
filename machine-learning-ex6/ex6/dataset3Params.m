function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 0.01;
sigma = 0.3;
step_size = 3;

max_C = 0;
max_Sigma = 0;

min_e = 9999;

for sigma = 0.1 : 0.5 : 0.2
  for i = 1:9
    fprintf(' sigma = %f, C = %f', sigma,C);
    model = svmTrain(X, y, C,@(x1,x2) gaussianKernel(x1, x2, sigma));
    predictions = svmPredict(model, Xval);
    e = mean(double(predictions ~= yval));
    if(e < min_e)
      min_e = e;
      max_C = C;
      max_Sigma = sigma;
    end
    C *= 3;
  end
end
   
C = max_C;
sigma = max_Sigma;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================

end
