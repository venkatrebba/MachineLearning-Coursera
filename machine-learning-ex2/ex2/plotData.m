function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative eamples. X is assumed to be a Mx2 matrix.

% Create New Figure
#figure; 
#hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
#display(X)
#display(y);
X_pos = X((y==1),:);
#print(X_pos.size);
#display(X_pos);
X_neg = X((y==0),:);
plot(X_pos(:,1),X_pos(:,2),'k+');
hold on;
plot(X_neg(:,1),X_neg(:,2),'ko');
#plot.xlabel('x')
#plot.ylabel('y')


% =========================================================================



hold off;

end
