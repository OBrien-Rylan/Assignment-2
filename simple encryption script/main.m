% Author Name: Rylan O'Brien
% Email: robrien17@rowan.edu
% Created On 10/2/2024
% Updated On 9/_/2024
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 1
% Date: [Submission Date]
% All Rights Reserved - MIT License

%simple encryption code
%caesar cipher 

function encrypted_message = caesar_cipher(message,shift)

%caesar cipher function 
encrypted_message = '';

    %string for the encrypted message 
    for i = 1:length(message)

    %check if character is a letter 
       if isletter(message(i))
         
        %shift the character by the given shift value 
         shifted_character = mod((message(i) - 'a') + shift , 26) + 'a';
         encrypted_message = [encrypted_message, char(shifted_character)];
      
       else 

          % if the character is invalid (not a letter), make no change
          encrypted_message = [encrypted_message,message(i)];
       end
    end
end 

% end of function 

% start of main script 

% prompt the user for the message to encrypt 
message = input('enter message to encrypt (lowercase lettes only):','s');

% prompt the  user for the shift value 
shift= input('enter the shift value (1-25): ');

% call upon the caesar_cipher function 
encrypted_message = caesar_cipher(message,shift);

% display the original message
fprintf(' Original message: %s\n',message);

% display encripted message 
fprintf('Encrypted message: %s\n', encrypted_message);

% end of main script 

% end of simple encryption script