%Challenge Problem 1 
%Raafay Uqaily 
message = 'XCVGGZIBZJIZDNIZVMGTXJHKGZOZFZZKPKOCZBJJYRJMF';
alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
caesar = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
decrypt1 = [];
decrypt2 = [];
for n = 1:26 %number of shifts 
            caesar = [caesar caesar(1)]; %adds the first letter to the end
            caesar(1) = []; %removes the first letter
    for k = 1:length(message) %goes through the entire message
        for p = 1:length(alphabet) %goes through all the alphabets
           if message(k) == alphabet(p) %compares letter in message to the corresponding alphabet
               position = message(k) == caesar; %determines positon of the corresponding letter 
                match = alphabet(position); %match is the variable for the corresponding letter in the alphabet
                decrypt1 = [decrypt1 match]; %letters are concatinated as determined by the if statement
           end
        end
    end 
    decrypt2 = [decrypt1; decrypt2];
    decrypt1 = [];
end 
disp(decrypt2)
          