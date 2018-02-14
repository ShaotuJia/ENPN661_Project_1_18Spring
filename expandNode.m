% Expand current node to possible new nodes

%function This current node to possible new nodes and update NodeInfo 
%param CurrentNode The current node is willing to expand
%return NodeInfoSet The Information Set of New Nodes
%return NewNodeSet The Set of New Nodes

function [NodeInfoSet, NewNodeSet] = expandNode(CurrentNode, NodeInfo)
    
    NewNodeSet = [];        % initial NodeSet
    NodeInfoSet =[];        % initial Node Info Set
    counter = 0;            % count number of new nodes
    NodeNum = NodeInfo(1);  % Node Number
    
    % add left move node to NewNodeSet if left_status is true
    [left_status, leftNode] = ActionMoveLeft(CurrentNode);
    if (left_status == true) 
        counter = counter + 1;                  % add 1 for counter
        NodeNum = NodeNum + 1;                  % add 1 for node number
        NewNodeSet(:,:,counter) = leftNode;     % update NewNodeSet
        Left_Node_Info = [NodeNum, NodeInfo(1), 0];  % Info of Move left
        NodeInfoSet(:,:, counter) = Left_Node_Info;   % update NodeInfoSet
    end
    
    % add right move node to NewNodeSet if right_status is true
    [right_status, rightNode] = ActionMoveRight(CurrentNode);
    if (right_status == true) 
        counter = counter + 1;                  % add 1 for counter
        NodeNum = NodeNum + 1;                  % add 1 for node number
        NewNodeSet(:,:,counter) = rightNode;    % update NewNodeSet
        Right_Node_Info = [NodeNum, NodeInfo(1), 0];    % Info of Move right
        NodeInfoSet(:,:,counter) = Right_Node_Info;   % update NodeInfoSet
    end
    
    % add up move node to NewNodeSet if up_status is true
    [up_status, upNode] = ActionMoveUp(CurrentNode);
    if (up_status == true) 
        counter = counter + 1;                  % add 1 for counter
        NodeNum = NodeNum + 1;                  % add 1 for node number
        NewNodeSet(:,:,counter) = upNode;       % update NewNodeSet
        Up_Node_Info = [NodeNum, NodeInfo(1), 0];   % Info of Move up
        NodeInfoSet(:,:,counter) = Up_Node_Info;   % update NodeInfoSet
    end
    
    % add up move node to NewNodeSet if up_status is true
    [down_status, downNode] = ActionMoveDown(CurrentNode);
    if (down_status == true) 
        counter = counter + 1;                  % add 1 for counter
        NodeNum = NodeNum + 1;                  % add 1 for node number
        NewNodeSet(:,:,counter) = downNode;     % update NewNodeSet
        Down_Node_Info = [NodeNum, NOdeInfo(1), 0];  % Info of Move Down
        NodeInfoSet(:,:,counter) = Down_Node_Info;   % update NodeInfoSet
    end
    
    

end