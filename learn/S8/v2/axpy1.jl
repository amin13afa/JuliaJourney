# write naive code 

# define variables 
n = 1_000;
a = 2.718;
using Random;
Random.seed!(1);
x = rand(n);
y =rand(n);

# 1st time will compile functions and macros 
z = []
@time for j in 1:n
    temp = a * x[j] + y[j]
    push!(z,temp)
end
# 2 nd time
z = []
@time for j in 1:n
    temp = a * x[j] + y[j]
    push!(z,temp)
end

# 3rd time
z = []
@time for j in 1:n
    temp = a * x[j] + y[j]
    push!(z,temp)
end












