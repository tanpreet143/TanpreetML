function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
Jn = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% for i=1:1:m
%     h(i)=theta'*X(i,:)';
%     Jn=Jn+(h(i)-y(i,1))^2;
% end
% J=Jn/(2*m)
h=X*theta;
err=(h-y).^2;
J=(1/(2*m))*sum(err);



% =========================================================================

end