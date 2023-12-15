########################################
# Use Multi-Threading, 32-bit, in-place 
########################################

# define variables 
const n::Int32 = 100_000_000;
const a::Float32 = 2.718;
using Random;
Random.seed!(1);
x = rand(Float32, n);
y = rand(Float32, n);
# define function 
function multi_axpy(a,x,y)
    Threads.@threads for j in eachindex(x)
        y[j] = a*x[j] + y[j]
        # @inbounds y[j] = a*x[j]+y[j]
        # @inbounds check variables are in array bounds and not overwrite
    end
    return y
end

# 1st time will compile functions and macros
@time multi_axpy(a,x,y)
# 2nd time 
x = rand(Float32, n);
y = rand(Float32, n);
@time multi_axpy(a,x,y)
# 3rd time 
x = rand(Float32, n);
y = rand(Float32, n);
@time multi_axpy(a,x,y)
# 4th time 
x = rand(Float32, n);
y = rand(Float32, n);
@time multi_axpy(a,x,y)