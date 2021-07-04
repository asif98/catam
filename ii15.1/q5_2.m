function highest_pseudo = q5_2 ( M )

[~,pseudo2,abs_pseudo] = q5 ( M );

highest_pseudo = 2.*(pseudo2 - abs_pseudo) ;

for N = 1:M
    if highest_pseudo(N) == 2
        
        if strong_test(3,N) == 1
            highest_pseudo(N) = 3 ;
        else
            break
        end
        
    end
end
