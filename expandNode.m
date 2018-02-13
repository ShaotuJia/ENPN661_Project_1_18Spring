% Expand current node to possible new nodes

%function This current node to possible new nodes and update NodeInfo 
%param CurrentNode The current node is willing to expand
%return NodeInfoSet The Information Set of New Nodes
%return NewNodeSet The Set of New Nodes

function [NodeInfoSet, NewNodeSet] = expandNode(CurrentNode, NodeInfo)
    
    NewNodeSet = [];        % initial NodeSet
    NodeInfoSet =[];        % initial Node Info Set
    counter = NodeInfo(1);            % count number of new nodes
    
    % add left move node to NewNodeSet if left_status is true
    [left_status, leftNode] = ActionMoveLeft(CurrentNode);
    if (left_status == true) 
        counter = counter + 1;
        NewNodeSet(:,:,counter) = leftNode;     % update NewNodeSet
        NodeInfoSet(counter, NodeInfo(1), 0);   % update NodeInfoSet
    end
    
    % add right move node to NewNodeSet if right_status is true
    [right_status, rightNode] = ActionMoveRight(CurrentNode);
    if (right_status == true) 
        counter = counter + 1;
        NewNodeSet(:,:,counter) = rightNode;    % update NewNodeSet
        NodeInfoSet(counter, NodeInfo(1), 0);   % update NodeInfoSet
    end
    
    % add up move node to NewNodeSet if up_status is true
    [up_status, upNode] = ActionMoveUp(CurrentNode);
    if (up_status == true) 
        counter = counter + 1;
        NewNodeSet(:,:,counter) = upNode;       % update NewNodeSet
        NodeInfoSet(counter, NodeInfo(1), 0);   % update NodeInfoSet
    end
    
    % add up move node to NewNodeSet if up_status is true
    [down_status, downNode] = ActionMoveDown(CurrentNode);
    if (down_status == true) 
        counter = counter + 1;
        NewNodeSet(:,:,counter) = downNode;     % update NewNodeSet
        NodeInfoSet(counter, NodeInfo(1), 0);   % update NodeInfoSet
    end
    
    

end