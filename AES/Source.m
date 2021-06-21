text = {'32' '88' '31' 'e0';
		'43' '5a' '31' '37';
		'f6' '30' '98' '07';
		'a8' '8d' 'a2' '34'}
    
ckey = {'2b' '28' 'ab' '09';
        '7e' 'ae' 'f7' 'cf';
		'15' 'd2' '15' '4f';
		'16' 'a6' '88' '3c'}

  
text = reshape(hex2dec(text), size(text)); 
ckey = reshape(hex2dec(ckey), size(ckey));

res = AES(text, ckey);
display(res);
%% Decrypt AES 
text2 = DecryptAES(res, ckey); 

sprintf('%x %x %x %x \n',text2.')
%display(text2)

if(text2 == text)
    fprintf('Succesfully Decrypt');
end

