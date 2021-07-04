function [A,max_r,max_s,P,Q,U,V] = cont_frac (N,k)

r = 0;
s = 1;
max_r = 0;
max_s = 1;

p_ = 1;
q_ = 0;

A = zeros(1,k) ;   %%%%%% Partial sequence  %%%%%%
P = zeros(1,k) ;   %%%%%%      p            %%%%%%
Q = zeros(1,k) ;   %%%%%%      q            %%%%%%
U = zeros(1,k) ;   %%%%%%     p^2 - Nq^2    %%%%%%
V = zeros(1,k) ;   %%%%%% is p^2 - Nq^2 = 1 %%%%%%

for i = 1:k
    a = floor((r+sqrt(N))/s);
    r = s*(a) - r ;
    s = (N - r^2)/s ;
            
    if i == 1       
        p = a ;
        q = 1 ;   
    else
        storep = p;
        storeq = q;
        
        p = a*p + p_ ;
        q = a*q + q_ ;
        
        p_ = storep;
        q_ = storeq;              
    end
    
    u = p^2 - N*q^2;
    v = is_1(p,q,N);
    
    A(i) = a ;
    P(i) = p ;
    Q(i) = q ;
    U(i) = u ;
    V(i) = v ;
    
    if r > max_r
        max_r = r;
    end
    if s > max_s
        max_s = s;
    end
end

end
            