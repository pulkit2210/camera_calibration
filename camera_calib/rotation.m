clear 
load focus_data ; 
x_Q = (X(1) - ab(2))*0.0077 ; 
y_Q = (X(2) - ab(1))*0.0077 ;
v1 = [x_Q  ; y_Q ; f];
v1 = v1/norm(v1) ;
v2 = [x_R  ; y_R ; f];
v2 = v2/norm(v2) ;
v3 = [x_S  ; y_S ; f];  
v3 = v3/norm(v3) ;
R = [v1 v2 v3];
[U,S,V] = svd(R); 
R_new = U*V';
