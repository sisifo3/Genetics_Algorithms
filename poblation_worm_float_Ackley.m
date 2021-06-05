function [cell] =  poblation_worm_float_Ackley(nofs)
format long g

%number_of_posibles_solution = nofs;
%nofs = 100;
chromosome_bin = zeros(1,82);
%chromosome_dec = zeros(1,2);
%chromosome_np = zeros(1,2);
cell = zeros(100,5);
cell = num2cell(cell);


for i = 1:nofs
    
    n = 16;         % number bits for integer part of your number      
    m = 25;         % number bits for fraction part of your number
    
    k = rand(1);
    p = randi([0 30], 1, 1);
    a = k*p;

   % binary number
    %d2b = fix(rem(a*pow2(-(n-1):m),2)); 
   
    % the inverse transformation
    %b2d = d2b*pow2(n-1:-1:-m).';
    
    %generete a x1 in binary and float decimal
    k = rand(1);
    p = randi([0 30], 1, 1);
    a = k*p;
    
    x1bin = fix(rem(a*pow2(-(n-1):m),2)); 
    %x1dec = x1bin*pow2(n-1:-1:-m).';
    
    %generete a x2 in binary and float decimal
    k = rand(1);
    p = randi([0 30], 1, 1);
    a = k*p;
    
    x2bin = fix(rem(a*pow2(-(n-1):m),2)); 
    %x2dec = x2bin*pow2(n-1:-1:-m).';
    
    for k = 1: length(x1bin)
       chromosome_bin(k) = x1bin(k);
       chromosome_bin(k+41) = x2bin(k); 
    end
    
    %{
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
    %}
    cell{i,1} = chromosome_bin;
    %cell{i,2} = chromosome_np;
    %cell{i,3} = chromosome_dec;

end

end
