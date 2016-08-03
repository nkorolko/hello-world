# Bin Packing Problem: Visualization

This project addresses the special case of a Bin Packing problem. 


In application that we consider we are given a set of boxes that have to be shipped. The description of the set includes dimensions of each box, number of boxes of each type, and binary indicator if this type of boxes are stackable or not (i.e. if we are allowed to put something on top of these boxes).

The primary objective is to determine the minimum number of containers that we need to ship all boxes. The dimensions of containers are known. 
The secondary question is how to stack all the boxes inside containers in an efficient way, so that the number of containers found at the previous step is indeed sufficient.

Both of these questions were solved as mixed-binary optimization problem implemented in Julia/JuMP [2]. Here we present only the tool how to visualize the optimal solution using Matlab.


[1] https://en.wikipedia.org/wiki/Bin_packing_problem
[2] http://julialang.org/
