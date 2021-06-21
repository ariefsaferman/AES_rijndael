function [state] = DecryptAES(state, key)
    keyRnd = KeySchedule(state, key);
    %initial round 
    state = bitxor(state, cell2mat(keyRnd(:,11)));
    
    for round = 10:-1:1
        % InvShift Rows
        state = InvShiftRows(state);
        
        % InvByte Substitution
        state = InvSubBytes(state);
        
         % XOR with Round Key
        state = bitxor(state, cell2mat(keyRnd(:,round)));
        
        % InvMix Columns
        if (round ~= 1)
            state = InvMixColumns(state);
        end
       
    end

end