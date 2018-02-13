% function Move BlankTile 0 to down

function [Status, NewNode] = ActionMoveDown(CurrentNode)

    % find the location of blank tile
    [X0, Y0] = BlankTileLocation(CurrentNode);

    % move blanktile to down if it is not at the left edge
    % if it is at the down edge, return status as false and NewNode is same to
    % Current Node; else, return status as true and New Node is the new node
    
    if X0 == 3
        Status = false;     % return false; impossible to move up
        
    else
        targetX = X0 + 1;       % the target location blanktile will move to
        targetY = Y0;
        
        LinearIndexBlankTile = (Y0 - 1) * 3 + X0;
        LinearIndexTarget = (targetY - 1) * 3 + targetX;
        
        CurrentNode([LinearIndexBlankTile LinearIndexTarget])...
            = CurrentNode([LinearIndexTarget LinearIndexBlankTile]);
        
        Status = true;      % return true; success to move
        
    end
    
    NewNode = CurrentNode;  % pass value of CurrentNode to NewNode

end