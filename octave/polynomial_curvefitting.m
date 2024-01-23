% Generate some example data
x = linspace(0, 10, 100);
y_true = 2 * sin(0.5 * x) + 0.5 * x + 0.2 * randn(size(x));

% Add some noise to the data
y_noisy = y_true + 0.5 * randn(size(x));

% Plot the noisy data
figure;
plot(x, y_noisy, 'x', 'MarkerFaceColor', 'b');
hold on;

% Fit a curve to the data using a polynomial of degree 2
p1 = polyfit(x, y_noisy, 3);
p2 = polyfit(x, y_noisy, 10);

% Generate y values for the fitted curve
y_fit1 = polyval(p1, x);
y_fit2 = polyval(p2, x);

% Plot the fitted curve
plot(x, y_fit1, 'r-', 'LineWidth', 2);
plot(x, y_fit2, 'g-', 'LineWidth', 2);
xlabel('X-axis');
ylabel('Y-axis');
title('Curve Fitting Example');

hold off;
pause;
