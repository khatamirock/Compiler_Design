x = [1, 2, 0, -3, -4,0,0];
h = [0,0,4, 0, -5, 1, 0];
Xx=[-2:length(x)-2-1]



subplot(2, 1, 1);
stem(Xx, x, 'filled');
 title('Array X');
xlabel('Index');
ylabel('Value');



subplot(5, 1, 2);
stem(Xx, h, 'filled');
title('Array h');
xlabel('Index');
ylabel('Value');



a=x+h
subplot(5, 1, 3);
stem(Xx, a, 'filled');
title('Array a');
xlabel('Index');
ylabel('Value');

b=x-h
subplot(5, 1, 4);
stem(Xx, b, 'filled');
title('Array a');
xlabel('Index');
ylabel('Value');

b=x.*h
subplot(5, 1, 5);
stem(Xx, b, 'filled');
title('Array a');
xlabel('Index');
ylabel('Value');






















