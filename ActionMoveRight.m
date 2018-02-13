% function Move BlankTile 0 to Right

function [Status, NewNode] = ActionMoveRight(CurrentNode)

    % find the location of blank tile
    [X0, Y0] = BlankTileLocation(CurrentNode);

    % move blanktile to right if it is not at the right edge
    % if it is at the right edge, return status as false and NewNode is same to
    % Current Node; else, return status as true and New Node is the new node
    
    if Y0 == 3
        Status = false;     % return false; impossible to move right
        
    else
        targetX = X0;       % the target location blanktile will move to
        targetY = Y0 + 1;
        
        LinearIndexBlankTile = (Y0 - 1) * 3 + X0;
        LinearIndexTarget = (targetY - 1) * 3 + targetX;
        
        CurrentNode([LinearIndexBlankTile LinearIndexTarget])...
            = CurrentNode([LinearIndexTarget LinearIndexBlankTile]);
        
        Status = true;      % return true; success to move
        
    end
    
    NewNode = CurrentNode;  % pass value of CurrentNode to NewNode

end