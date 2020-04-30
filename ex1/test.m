me = load('med.txt');

data = [zeros(length(me(:,2)),1),zeros(length(me(:,2)),1),zeros(length(me(:,2)),1)];
data(:,1) = me(:,1);
data(:,3) = me(:,2);
%[data(:,1),data(:,3)] = randomData(100);
data(:,2) = data(:,1).^2;
X = data(:, 1:2);
y = data(:, 3);
m = length(y);
% Add intercept term to X
X = [ones(m, 1) X];
plotData(X(:,2), y);
pause;

% Calculate the parameters from the normal equation
theta = normalEqn(X, y);

% Display normal equation's result
fprintf('Theta computed from the normal equations: \n');
fprintf(' %f \n', theta);
fprintf('\n');

hold on; % keep previous plot visible
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure
pause;
