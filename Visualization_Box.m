% Visualization of the optimal box placement in a container
% m - number of a container
% stage - 1 or 2, depending on the optimization stage of the bin packing algorithm.
% 1) a feasible placement; 2) all boxes a pushed to the corner of the container. 

function vis(j,stage)
    q=int2str(j);
    if stage==2  
        boxes=csvread(strcat('2boxes_',q,'.csv'));
    else
        boxes=csvread(strcat('boxes_',q,'.csv'));
    end
    A=varycolor(ceil(1.5*size(boxes,1)));
    for k=1:size(boxes,1)
        p=0.1; % Pause time
        if boxes(k,7)>=0.9 % If stackability indicator =1, then usual color
            voxel([boxes(k,1:3)],[boxes(k,4:6)],A(k,:),0.5);
            pause(p)
        else
            voxel([boxes(k,1:3)],[boxes(k,4:6)],[1 0 0],0.5);
            pause(p)
        end
        axis([0 650 0 110 0 110]); % Dimensions of a standard container
        hold on 
        grid on   
        rotate3d on
    end
end

% Test:
% vis(1,2)
% Display visualization for container 1 at stage 2
