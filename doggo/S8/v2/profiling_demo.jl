# define function 
function myfunc()
    A = rand(100,100,50)
    maximum(A); 
    maximum(A)
end
@time myfunc();
@time myfunc()
@time myfunc()
###################################
# Profile using Julia Base 
###################################
using Profile 
@profile myfunc();
Profile.print()

##################################
# Profile using VS Code
#################################

# @profview myfunc();
# @profview_allocs myfunc() sample_rate = 1;
# in this kind of profiling just works in vs code when we use in REPL ;
# to do so; we should ----> ctrl + shift + p (palette) then choose tart REPL







