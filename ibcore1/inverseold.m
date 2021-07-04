function [b] = inverseold ( a,p )

if mod(a,p) == 0
    error('Inverse doesn''t exist.')
    
else
    
 for x = 1:(p-1)
            
     if mod(a*x-1,p) == 0     
        b = x;         
        return         
     else         
         x = x+1; 
     end
     
 end
end
end

