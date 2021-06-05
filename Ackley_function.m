function[cell] = Ackley_function(~)
format long g

number_of_solution = 100;
generations = 100;
nofs = number_of_solution;
son = nofs * 2;
nos = number_of_solution/2;
sum_aptd = zeros(1,generations);
ipg = zeros(1,generations);
gp = zeros(1,generations);
cell_num = zeros(son,5);
cell_num = num2cell(cell_num);

[cell] =  poblation_worm_float_Ackley(nofs);
[cell] = objetive_function_float_Ackley(cell);

for k = 1:nofs
    cell_num(k,:) = cell(k,:);
end

for i = 1:generations
    for j = 1:nos
        [pred1,pred2] = sel_pad_best_float_Ackley(cell);
        [desc1,desc2] = two_point_crossover_float_Ackley(pred1,pred2);

        
        cell_num{j+nofs,1} = desc1;
        cell_num{j+nos*3,1} = desc2;
    end    
   
    [cell_num] = objetive_function_float_Ackley(cell_num);
    [cell_num] = biology_competition_float_Ackley(cell_num);
   
    b = mod(i,10);
    if b == 0
        disp('heuristic')
        [cell_num] = heuristic_mutation_float_Ackley(cell_num);
    end
   
    [sum_apt] = apt_for_generation_float_Ackley(cell_num);
    sum_aptd(i) =  sum_apt;
    ipg(i) = cell_num{1,4};
    gp(i) = i;
    cell = cell_num;

    
end
%disp(sum_aptd)
disp(cell{1,4})
disp(cell{1,3})

[z] =  plot3d(cell);


%plot(gp,ipg)
%xlabel('Generación')
%ylabel('f(x)')
%plot(gp,sum_aptd)
cell = cell_num;

end