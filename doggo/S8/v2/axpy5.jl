###################################
# Use broadcasting + 32-bit numbers
##################################

# define variables
const n::Int32 = 1_000;
const a::Float32 = 2.718;
using Random;
Random.seed!(1);
x = rand(Float32, n);
y = rand(Float32, n);

@time z = a .* x .+ y;
@time z = a .* x .+ y;
@time z = a .* x .+ y;