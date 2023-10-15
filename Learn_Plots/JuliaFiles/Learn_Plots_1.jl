#= For this tutorial 
we use data from [this](https://github.com/plembo/matplotlib-tutorials/blob/master/01-Introduction/snippets.py)
=# 

using Plots
# Median Developer Salaries by Age
dev_x = [25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]
dev_y = [38496, 42000, 46752, 49320, 53200,56000, 62316, 64928, 67317, 68748, 73752]
# Median Python Developer Salaries by Age
py_dev_x = [25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]
py_dev_y = [45372, 48876, 53850, 57287, 63016,65998, 70003, 70000, 71496, 75370, 83640]
# Median JavaScript Developer Salaries by Age
js_dev_y = [37810, 43515, 46823, 49293, 53437,56373, 62375, 66674, 68745, 68746, 74583];

# gr();
# theme(:ggplot2)
theme(:dark)
plot(dev_x, dev_y, 
    title = "Developer Salaries",
    label = "Developer Salaries ", 
    xlabel = "Developer Age", 
    ylabel = "Median Developer Salaries (USD)",
    color = :magenta,
    linewidth = 0.9,
    linestyle = :dashdot,
    alpha = 0.7,   # transparency 
    dpi=7000) 
plot!(dev_x,py_dev_y, 
    label = "Python Dev. Salaries", 
    color = :lightseagreen, 
    linestyle = :dot, 
    linewidth = 0.9, 
    alpha = 0.7, 
    dpi = 7000)
plot!(dev_x, js_dev_y,
#     color = :royalblue1,
    color = :orange,
    label = "JavaScript DeV. Salaries",
    linestyle = :dash,
    linewidth = 0.9, 
    alpha = 0.7,
    dpi = 7000)



 