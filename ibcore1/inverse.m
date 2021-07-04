function [I] = inverse (p)

for i=1:p-1
    for j=1:p-1
        if mod(i*j,p) == 1     
            I(i) = j;         
            break         
        else         
            j = j+1; 
        end
    end
end
end
