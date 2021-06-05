function[cell] = objetive_function_float_Ackley(cell)
format long g

a = 20;
b = .2;
d = 2;
c = 2*pi;
n = 16;         % number bits for integer part of your number      
m = 25;         % number bits for fraction part of your number
chromosome_dec = zeros(1,2);
chromosome_np = zeros(1,2);
x1bin = zeros(1,41);
x2bin = zeros(1,41);
len = length(cell);

for i = 1:len
    chromosome_bin = cell{i,1};
    
    for k = 1:41
        x1bin(k) = chromosome_bin(k);
        x2bin(k) = chromosome_bin(41+k);
    end
    
    x1dec = x1bin*pow2(n-1:-1:-m).';
    x2dec = x2bin*pow2(n-1:-1:-m).';
    
    %if d_x1 == 31
    %    d_x1 = 30;
    %    chromosome(1,2) = 0;
        
    %end
    %if d_x2 == 31
    %    d_x2 = 30;
    %    chromosome(1,8) = 0;
    %end
    
    
    
    chromosome_np(1) = 1;
    chromosome_np(2) = 1;
    if x1dec <= 15
        posneg = randi([0 1], 1, 1);
        chromosome_np(1) = posneg;
        if posneg == 0
            x1dec = x1dec * -1;
        end
    end    
     if x2dec <= 15
        posneg = randi([0 1], 1, 1);
        chromosome_np(2) = posneg;
        if posneg == 0
            x2dec = x2dec * -1;
        end
     end
     
     
    chromosome_dec(1) = x1dec;
    chromosome_dec(2) = x2dec;
    
    x1 = x1dec;
    x2 = x2dec;
    
    fx = a + exp(1) - a*exp(-b*sqrt( (1/d)* ((x1.^2) + (x2.^2)))) - exp((1/d) * (cos(c*x1) + cos(c*x2)) );

    fitness = 1/fx;
    
    cell{i,2} = chromosome_np;
    cell{i,3} = chromosome_dec;
    cell{i,4} = fx;
    cell{i,5} = fitness;
    
end

[cell] = ord_insertion_float_Ackley(cell);


end