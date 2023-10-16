# wrap code in function

# define variables 
n = 1_000;
a = 2.718;
using Random;
Random.seed!(1);
x = rand(n);
y =rand(n);

# define function
function axpy(a,x,y)
    z = []
    for j in eachindex(x)
        temp = a*x[j]+y[j]
        push!(z,temp)
    end
    return z
end
# 1rd time
@time axpy(a,x,y)
# 2 nd time 
@time axpy(a,x,y)
# 3rd time
@time axpy(a,x,y)