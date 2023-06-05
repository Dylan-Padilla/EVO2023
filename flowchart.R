library(DiagrammeR)
library(DiagrammeRsvg)
library(rsvg)

DiagrammeR::grViz("digraph {

graph [layout = dot, rankdir = LR, fontcolor = orange, bgcolor=black]

# define the global styles of the nodes. We can override these in box if we wish
node [shape = rectangle, style = filled, fillcolor = gray, color = orange, fontname = Courier]
edge [color = skyblue, fillcolor = skyblue]
data1 [label = 'Metadata', shape = folder, fillcolor = purple, fontcolor = orange]
data2 [label = 'GDS object', shape = folder, fillcolor = purple, fontcolor = orange]
process [label =  'Quality control', fontcolor = orange, shape = cylinder, fillcolor = purple]
statistical [label = 'Genetic differentiation and \n Population structure', fontcolor = purple, shape = hexagon, fillcolor = skyblue]
results [label= 'Detecting adaptation', fontcolor = purple, shape = doubleoctagon, fillcolor = gray]

# edge definitions with the node IDs
{data1 data2}  -> process -> statistical -> results
}") %>% export_svg %>% charToRaw %>% rsvg_png("flow.png", width = 2000, height = 300)




## Concluding remarks


DiagrammeR::grViz("digraph {

graph [layout = dot, rankdir = LR, fontcolor = orange, bgcolor=black]

# define the global styles of the nodes. We can override these in box if we wish
node [shape = rectangle, style = filled, fillcolor = gray, color = orange, fontname = Courier, height=15, fontsize = 70]

data1 [label = 'An analysis of genetic differentiation based on Fst estimates revealed two major genetic clusters; one with all the American samples grouped together, and the other one grouping \n the European samples. This analysis suggests a total of 6 ancestral populations with unique patterns of allelic variation at the for gene. The results also indicate that \n different patterns of gene flow as expected under models of isolation by environment and isolation by distance \n are likely driving the genetic differentiation among populations of D. melanogaster.', shape = invhouse, fillcolor = Beige, fontcolor = purple]


# edge definitions with the node IDs

data1

}") %>% export_svg %>% charToRaw %>% rsvg_png("conclusion.png", width = 2000, height = 300)
