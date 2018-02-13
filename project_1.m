% This program is for ENPM661 Project 1 to find the solution of 8 - puzzles

clc;
clear;

% Initialize Nodes and NodeInfo
Nodes = [];
NodeInfo = [];          % NodeInfo = [Node #, Parent node#, CostToCome]

% Node Start
Nodes(:,:,1) = [1 2 3; 4 5 6; 7 0 8];
NodeInfo(:,:,1) = [1,0,0];


% TEST
%[X, Y] = BlankTileLocation(Nodes(:,:,1));
[Status, NewNode] = ActionMoveUp(Nodes(:,:,1));

