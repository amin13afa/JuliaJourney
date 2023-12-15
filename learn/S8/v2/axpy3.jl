# use arithmatic operators 
using Random 
a = 2.718; 
n = 1_000;
Random.seed!(1);
x = rand(n);
y = rand(n);

# view methods 
@time z = a*x+y;

@time z = a*x+y;


@time z = a*x+y;