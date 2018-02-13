% function BlankTileLocation to find the position of blanktile
function [X0, Y0] = BlankTileLocation(CurrentNode)

    [X0, Y0] = find(CurrentNode == 0);

end