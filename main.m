% This program is for ENPM661 Project 1 to find the solution of 8 - puzzles

clc;
clear;

% Initialize Nodes and NodeInfo
Nodes = [];
NodeInfo = [];          % NodeInfo = [Node #, Parent node#, CostToCome]

% Node Start
Nodes(:,:,1) = [1 2 3; 4 5 6; 7 0 8];
NodeInfo(:,:,1) = [1,0,0];

% Node Set
NodeSet.Nodes = Nodes;
NodeSet.NodeInfo = NodeInfo;

% TEST
%[X, Y] = BlankTileLocation(Nodes(:,:,1));
%[Status, NewNode] = ActionMoveUp(Nodes(:,:,1));
[NodeInfoSet, NewNodeSet] = expandNode(Nodes(:,:,1),NodeInfo(:,:,1));

% search 100,000 nodes
openSet = [];               % FIFO Queue; the nodes have not explored
closeSet.Nodes = [];              % the nodes have explored
closeSet.NodeInfo = [];

% Search algorithm; Breath first search;
openSet.Nodes = Nodes;
openSet.NodeInfo = NodeInfo;

while size(closeSet.Nodes, 3)<=100000 
    
    currentNode = openSet.Nodes(:,:,1);             % pop up first element in openSet
    currentNodeInfo = openSet.NodeInfo(:,:,1);
    openSet.Nodes(:,:,1) = [];
    openSet.NodeInfo(:,:,1) = [];
    
    % expand currentNode and currentNodeInfo
    [NewNodeInfoSet, NewNodeSet] = expandNode(currentNode, currentNodeInfo);
    
    % remove the node repeated in closeSet
    [NewNodeInfoSet, NewNodeSet] = removeRepeat(NewNodeInfoSet, NewNodeSet, closeSet);
    
    % add currentNode to closeSet
    closeSet.Nodes = cat(3, closeSet.Nodes, currentNode);
    closeSet.NodeInfo = cat(3, closeSet.NodeInfo, currentNodeInfo);
    
    % add NewNodeInfoSet and NewNodeSet to openSet
    openSet.Nodes = cat(3, openSet.Nodes, NewNodeSet);
    openSet.NodeInfo = cat(3, openSet.NodeInfo, NewNodeInfoSet);
    
end





