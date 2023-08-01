% Given signals
x = [1 2 0 -3 4];
nx = -2:2;
h = [4 0 -5 1 0];
nh = 0:4;

n = -2:6;

h_flipped = fliplr(h);
h_flipped
y = zeros(1, length(n));

for i = 1:length(n)
    for j = 1:length(x)
        k = i - j + 1;
        if k > 0 && k <= length(h)
            y(i) = y(i) + x(j) * h_flipped(k);
        end
    end
end
disp(y)
figure(1);

subplot(3,1,1);
stem(nx, x);
xlabel('n');
ylabel('x(n)');
title('x(n)');

subplot(3,1,2);
stem(nh, h);
xlabel('n');
ylabel('h(n)');
title('h(n)');

subplot(3,1,3);
stem(n, y);
xlabel('n');
ylabel('y(n)');
title('Correlation of x(n) and h(n)');

