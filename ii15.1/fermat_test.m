function p = fermat_test(a,N)

if a > N-1
    error('Error. \n a= %d must be less than N = %d ',a,N )
    
elseif gcd(a,N) > 1
    p = 0;
    
elseif powermod(a,N-1,N) == 1
    p = 1;
    
else
    p = 0;
    
end

end
