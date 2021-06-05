function[celda_ord] = ord_insertion_float_Ackley(celda_num)

for ls = 1:length(celda_num)
    d = ls;
    while((d > 1) && (celda_num{d,5}) > (celda_num{d-1,5}))
        % aptitud.
        var_temp = celda_num{d,5};
        celda_num{d,5} = celda_num{d-1,5};
        celda_num{d-1,5} = var_temp;
        
        var_temp1 = celda_num{d,4};
        celda_num{d,4} = celda_num{d-1,4};
        celda_num{d-1,4} = var_temp1;
        
        %distance. 
        var_temp1 = celda_num{d,3};
        celda_num{d,3} = celda_num{d-1,3};
        celda_num{d-1,3} = var_temp1;
        %gene. 
        var_temp2 = celda_num{d,2};
        celda_num{d,2} = celda_num{d-1,2};
        celda_num{d-1,2} = var_temp2;
        
        var_temp2 = celda_num{d,1};
        celda_num{d,1} = celda_num{d-1,1};
        celda_num{d-1,1} = var_temp2;
        
        d = d-1;
        
    end
end
celda_ord= celda_num;
end