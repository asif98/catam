function p = strong_test(a,N)

if gcd(a,N) > 1
    p = 0;
    return
    
else    
    p = 0;
    s = 0;
    t = N - 1;
    
    while mod(t,2) == 0
        t = t/2;
        s = s +1;
    end
        
    M = powermod(a,t,N);
    
    if M == 1 || M == N-1
        p = 1;
        return
    else
        M = mod_mult(M,M,N);
        i = 1;
        while i < s
            if M == 1
                p = 0;
                return
            elseif M == N-1
                p = 1;
                return
            else
                M = mod_mult(M,M,N);
                i = i+1;
            end
        end
    end
end

end
   
        
