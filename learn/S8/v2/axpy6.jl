#################################
# Use LinearAlgebra.axpy!() + 32-bit 
##################################

using LinearAlgebra;
# define variable
const  n::Int32 = 1_000;
const  a::Float32 = 2.718;
using Random;

Random.seed!(1);
x = rand(Float32, n);
y = rand(Float32, n);
@time axpy!(a,x,y);

Random.seed!(1);
x = rand(Float32, n);
y = rand(Float32, n);
@time axpy!(a,x,y)

Random.seed!(1);
x = rand(Float32, n);
y = rand(Float32, n);
@time axpy!(a,x,y)




