function [res] = InvSubBytes(state)
    load('inverseSBox');
    inverseSBox = reshape(inverseSBox, 16,16); 
    inverseSBox = inverseSBox.';
    res = arrayfun( @(x) inverseSBox((floor(x/16) + 1) , (mod(x, 16) + 1)),state );
    res = reshape(res, size(state));
    inverseSBox
end