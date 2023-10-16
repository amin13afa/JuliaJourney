#####################################
# single-process vs multi-process
#####################################
using Distributed
addprocs(10)
######################
# Expectation 
######################

# Single-process 
@time for j in 1:nprocs()
    sleep(1)
end
# Multi-process 
@time @sync for j in 1:nprocs()
    @spawnat j sleep(1)
end
########################
## Reality 
#########################
# Single process 
@time for j in 1:nprocs()
    println("Hello world!")
end

@time @sync for j in 1:nprocs()
    @spawnat j println("Hello world!")
end
###############################
#=
Multi threading and multi processing both are the forms of parallel computing 

Multi threading  on micro scale ---> speed
Multi processing on macro scale ---> Flexibility, scalablity    


=#







println("Done")