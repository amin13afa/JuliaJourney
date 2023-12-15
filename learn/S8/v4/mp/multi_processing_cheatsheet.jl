#################################
# Multi processin cheatsheet
#####################################
using Distributed

#= 
Julia uses a master-worker model 
The master process --> process 1
worker 1 --> process 2
worker 2 --> process 3
=#
###################################################
# how to add workers 
addprocs(5)
####################################################
# how to view process and workers 
nprocs()
procs()
#= 
each process has its own memory
each process is isolated from the other processes
=#
workers()
####################################################
# how to remove a worker 
rmprocs(6)
nprocs()
procs()
workers()
##############################################
# how to track workers 
w = workers()
w[1]
###################################################
# how to assign a task to a worker 
ans1 = @spawnat w[1] rand(3,4)
###################################################
# how to fetch a result from a worker 
@time fetch(ans1)
###################################################
# how to assign a task to any available worker 
ans2 = @spawnat :any sum(1:100)
@time fetch(ans2)
#######################################################
# how to combine @spawnat and fetch 
ans3 = @spawnat w[2] 3.14 
fetch(ans3)
ans4 = @spawnat w[3] 1 + fetch(ans3) 
fetch(ans4)
#####################################################
# how to add standard library to all workers 
@everywhere using Statistics
ans5 = @spawnat w[4] mean(rand(100)) 
fetch(ans5)
@time fetch(@spawnat w[3] std(rand(200)))
#########################################################
# how to add Standard library to a specific worker 
@everywhere w[1] using  LinearAlgebra 
ans6 = @spawnat w[1] axpy!(fetch(ans3),ones(10),ones(10))
@time fetch(ans6)

# other library does not have access to LinearAlgebra library, just worker w[1] has access to it 
ans7 = @spawnat w[2] axpy!(fetch(ans3), ones(10), ones(10))
fetch(ans7)

#################################################
# how to sharedArray
using SharedArrays
@time data = SharedArray(rand(10))
################################################
# how to add external packages to all workers 
@everywhere import Pkg 
@everywhere Pkg.activate(".")
@everywhere using Plots

# ans8 = @spawnat w[3] plot(data)
fetch(ans8)
###################################################
## how to add module to all workers 
@everywhere include("ToyModule.jl")
using .ToyModule 

ans9 = @spawnat w[4] ToyModule.myfunc() 
fetch(ans9)











