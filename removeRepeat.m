% This function is to remove the matrix which has ocurred in closeSet

function [NodeInfoSet, NewNodeSet] = removeRepeat(InfoSet, NodeSet, closeSet)
    
    % check the size of closeSet
    closeSet_Size = size(closeSet, 3);
    
    % check the size of NodeSet
    NodeSet_Size = size(NodeSet, 3);
    
    % count how many Node can be added to NewNode
    counter = 0;
    
    % if the closeSet is empty, do not remove any Node from NodeSet
    % else remove the node if it has ocurred in closeSet
    if closeSet_Size == 0
        NodeInfoSet = InfoSet;
        NewNodeSet = NodeSet;
        
    else
        for  J = 1 : NodeSet_Size
            isSame = isInSet(NodeSet(:,:,J), closeSet);     % check Repeat node
              if  isSame == false
                  counter  = counter + 1;
                  NewNodeSet(:,:,counter) = NodeSet(:,:,J);
                  NodeInfoSet(:,:,counter) = InfoSet(:,:,J);
              end
 
        end
    end            
            

end