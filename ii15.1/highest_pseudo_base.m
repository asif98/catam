function highest_pseudo_base = highest_pseudo_base ( M )

[~,pseudo2,abs_pseudo] = q3 ( M );
q = [ 2 3 5 7 11 ];
highest_pseudo_base = 2.*(pseudo2 - abs_pseudo) ;

for N = 1:M
    if highest_pseudo_base(N) == 2 
        for i = 2:5
            if fermat_test(q(i),N) == 1
                highest_pseudo_base(N) = q(i) ;
            else
                break
            end
        end
    end
end
