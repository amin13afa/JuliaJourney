using Plots
using RDatasets

theme(:dark)
# theme(:ggplot2)
# theme(:lime)

iris = dataset("datasets","iris");
Set(iris.Species);

# theme(:ggplot2)
theme(:lime)
X = iris.PetalLength;
Y = iris.PetalWidth;
labels = iris.Species;
sizes = iris.SepalWidth;
scatter(X,Y, 
    group = labels,
    xlim = (0,7.5),
    ylim = (-0.2,3),
    xlabel="PetalLength", 
    ylabel="PetalWidth",
    title="The Iris Dataset", 
#     legend = :left,
    legend = :topleft,
    color = [:darkviolet :green3 :red3],
#     markersize = [13 10 7],
    markersize = sizes,
    markershape = [:hex :star :cross],
    alpha = 1.0,
    dpi = 7000)

    scatter(X[1:50], Y[1:50],
    title = "Setosa",
    xlabel="PetalLength",
    ylabel="PetalWidth",
    legend=:topleft,
    label="setosa",
    xlim=(0,5),
    ylim=(-0.5,3),
    color=:darkviolet,
    markershape=:hex,
    markersize=7,
    dpi=7000,
    alpha=0.7)