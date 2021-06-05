function [padre1,padre2] =  sel_pad_best_float_Ackley(Ce_cmp)    
%global selection_metodo 
padre1 = zeros(1,82);
padre2 = zeros(1,82);
for rl = 1:2
    if rl ==1
       [index] = my_own_RWS_best_float_Ackley(Ce_cmp);
       padre1 = Ce_cmp{index,1};
    end
    if rl ==2
        [index] = my_own_RWS_best_float_Ackley(Ce_cmp);
        padre2 = Ce_cmp{index,1};
    end
end
 
end  