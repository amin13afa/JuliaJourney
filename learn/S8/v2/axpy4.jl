# Use broadcasting

# define variables 
using Random;
Random.seed!(1);
n = 1000;
a = 2.718;
x = rand(n);
y = rand(n);

# z = [];
@time z = a .* x .+ y;
@time z = a .* x .+ y;
@time z = a .* x .+ y;