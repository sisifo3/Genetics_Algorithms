function[z] =  plot3d(cell)
format long g

len = length(cell);
x1 = zeros(1,len);
x2 = zeros(1,len);
fx = zeros(1,len);

for i = 1:len
    x1x2 = cell{i,3};
    x1(i) = x1x2(1);
    x2(i) = x1x2(2);
    fx(i) = cell{i,4}; 
end    
set(fsurf(@(x,y) ackleyfcn([x,y]),[-15 30 -15 30]),'AdaptiveMeshDensity',0,'MeshDensity',60)

hold on

plot3(x1,x2,fx,'*')

z= 1;
end