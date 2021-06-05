function[one_man_mut] = permu_loc_float_Ackley(one_man)

%one_man = randi([0,1],1,82);
one_man_per = zeros(1,6);
rni = randi([12,76],1,1);

for i = 1:6
    one_man_per(i) = one_man(rni+i);
end

one_man_per = perms(one_man_per);
cell = zeros(length(one_man_per),5);
cell = num2cell(cell);

for j = 1:length(one_man_per)
    for k = 1:6
        one_man(rni+k) = one_man_per(j,k);
    end    
    cell{j,1} = one_man;
end
 
[cell] = objetive_function_float_Ackley(cell);
one_man_mut = cell(1,:);


end  