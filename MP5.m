%MACHINE PROB 5
n = (0:1:199); %contains values from 0 to 199
y = zeros(size(x)); 

x = input('Input equation for x(n):'); % Evaluate the values of x(n)

% calculate the values of y
% loop over the vector n
for i=1:200 
    if n(i) == 0
        y(i) = -1.5*x(i) + 2*x(i+1)- 0.5*x(i+2);
    elseif n(i) < 199
        y(i) = 0.5*x(i+1) - 0.5*x(i-1);
    else
        y(i) = 1.5*x(i) - 2*x(i-1) + 0.5*x(i-2);
    end
end

plot(n,x,'r-','linewidth',3); % plot x in terms of n
hold on; % hold the current figure
plot(n,y,'k-','linewidth',3); % plot y in terms of n
hold off; % release the current figure
legend('x','y'); % specify the legend

xlabel('x(n)'); % specify the x label 
ylabel('y(n)'); % specify the y label
title('Graph of x(n) & y(n)'); % specify the title