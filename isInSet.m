% This function is to check whether node has same matrix in closeSet

function status = isInSet(Node, CloseSet)

    Size_CloseSet = size(CloseSet, 3);
    
    if Size_CloseSet == 0
        status = false;
        return
    end
    
    % if there is one of closeSet same to Node, status = true and return
    for K = 1 : Size_CloseSet
        if isequal(Node, CloseSet(:,:,K))
            status = true;
            return;
        else
            status = false;
        end
    end
    

end