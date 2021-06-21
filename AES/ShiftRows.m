function [state] = ShiftRows(state)
    for i = 2:4
        state(i, :) = circshift(state(i, :), [0, 1-i]);
    end
end