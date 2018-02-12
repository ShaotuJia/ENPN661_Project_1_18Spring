% This program is for ENPM661 Project 1 to find the solution of 8 - puzzles

clc;
clear;

% Initialize Nodes and NodeInfo
Nodes = [];
NodeInfo = [];          % NodeInfo = [Node #, Parent node#, CostToCome]

% Node Start
Nodes(:,:,1) = [1 2 3; 4 5 6; 7 8 0];
NodeInfo(:,:,1) = [1,0,0];


[X, Y] = BlankTileLocation(Nodes(:,:,1));



% functions for this program

% function BlankTileLocation to find the position of blanktile
function [X0, Y0] = BlankTileLocation(CurrentNode)

    [X0, Y0] = find(CurrentNode == 0);

end

% function Move BlankTile 0 to left
function [Status, NewNode] = ActionMoveLeft(CurrentNode)

    % find the location of blank tile
    [X0, Y0] = BlankTileLocation(CurrentNode);

    % move blanktile to left if it is not at the left edge
    % if it is at the left edge, return status as false and NewNode is same to
    % Current Node; else, return status as true and New Node is the new node
    
    if Y0 == 1
        Status = false;     % return false; impossible to move
        
    else
        targetX = X0;       % the target location blanktile will move to
        targetY = Y0 - 1;
        
        LinearIndexBlankTile = (Y0 - 1) * 3 + X0;
        LinearIndexTarget = (targetY - 2) * 3 + targetX;
        
        CurrentNode([LinearIndexBlankTile LinearIndexTarget])...
            = CurrentNode([LinearIndexTarget LinearIndexBlankTile]);
        
        Status = true;      % return true; success to move
        
    end
    
    NewNode = CurrentNode;  % pass value of CurrentNode to NewNode

end



