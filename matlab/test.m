% Given signals
x = [1 2 0 -3 4];
nx = -2:2
h = [4 0 -5 1 0];
nh = 0:4;

smm=zeros(1, length(x)*2-1);
smm
for i=1:length(x)
  smm(i)=smm(i)+sum(x(1:i).*h(length(x)-i+1:length(x)))
  %disp(sm)
  %disp(x(1:i))
  %disp(h(length(x)-i+1:length(x)))
 end

for i = 2:length(x)
  smm(i+4)=smm(i+4)+sum(x(i:end).*h(1:length(x)-i+1))
  %disp(x(i:end))
  %disp(h(1:length(x)-i+1))
end

subplot(3,1,1)
stem(nx,x)




