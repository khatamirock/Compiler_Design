

x = [1, 2, 0, -3, -4,0,0];
h = [0,0,4, 0, -5, 1, 0];


result = conv(x, h);
disp(result);

xx=1:length(result)


stem(xx ,result)



