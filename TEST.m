% This script is to test functions in project 1

clc;
clear;

% node for test
A = [1 2 3; 4 5 6; 7 8 9];
B = [9 8 7; 6 5 4; 3 2 1];
C = [4 5 6; 7 8 9; 1 2 3];
D = [0 1 2; 3 4 5; 6 7 8];


% Declare NodeSet for test
NodeSet = [];

NodeSet(:,:,1) = A;
NodeSet(:,:,2) = B;
NodeSet(:,:,3) = C;
NodeSet(:,:,4) = D;


% Declare NodeInfo for test
NodeInfo = [];

NodeInfo(:,:,1) = [1, 0, 0];
NodeInfo(:,:,2) = [2, 0, 0];
NodeInfo(:,:,3) = [3, 0, 0];
NodeInfo(:,:,4) = [4, 0, 0];


% Declare closeSet for test
closeSet = [];
E = [11 22 33; 44 55 66; 77 88 99];
F = [99 88 77; 66 55 44; 33 22 11];
G = [22 11 33; 66 55 44; 99 88 77];
H = [12 34 55; 56 76 89; 32 54 57];

closeSet(:,:,1) = E;
closeSet(:,:,2) = F;
closeSet(:,:,3) = G;
closeSet(:,:,4) = H;
%closeSet(:,:,5) = A;


% test function removeRepeat 
[NewInfoSet, NewNodeSet] = removeRepeat(NodeInfo, NodeSet, closeSet);

%status = isInSet(A, closeSet);





