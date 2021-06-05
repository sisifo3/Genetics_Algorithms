function[anser] = scramble_met_per_one_float_Ackley(gen_loc_rep)

%gen_loc_rep = randi([0,1],1,82);
%disp(gen_loc_rep)

nsm = randi([12,74],1,1);
nsn = nsm + 8;
nso = 82 - nsn;
mat_rep_one = zeros(1,8);
mat_rep_two = zeros(1,74);

for i = 1:8
    mat_rep_one(i) = gen_loc_rep(nsm+i);
end

for j = 1:nsm
    mat_rep_two(j) = gen_loc_rep(j);
end    

for k = 1:nso 
    mat_rep_two(8+k) = gen_loc_rep(nsn + k);
end



nsm = randi([12,74],1,1);
nsn = nsm + 8;
nso = 82 - nsn;

for ii = 1:nsm
    gen_loc_rep(ii) = mat_rep_two(ii);
end
for jj = 1:8
    gen_loc_rep(nsm+jj) = mat_rep_one(jj);
end
for kk = 1:nso
    gen_loc_rep(nsn + kk) = mat_rep_two(nsm+kk);
end    

anser = gen_loc_rep;


end

