me = load('med.txt');

data = [zeros(length(me(:,2)),1),zeros(length(me(:,2)),1),zeros(length(me(:,2)),1)];
data(:,1) = me(:,1);
data(:,3) = me(:,2);
% 2 degree term adding
data(:,2) = data(:,1).^2;

X = data(:, 1:2);
y = data(:, 3);
m = length(y);
% Add intercept term to X
X = [ones(m, 1) X];

plotData(X(:,2), y);
pause;


theta = [0;0;0];
alpha = 0.00005;
iterations = 20000;

pause;
fprintf('Gradienting \n');
[theta , JH] =  gradientDescentMulti(X, y, theta, alpha, iterations);

% Display normal equation's result
fprintf('Theta computed from GD: \n');
fprintf(' %f \n', theta);
fprintf('\n');

hold on; % keep previous plot visible
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure
pause;


