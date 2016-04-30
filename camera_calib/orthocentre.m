clear 
load intersection_dta
%% Calulation of Orthocentre or the Image centre in the Image %%
%k1/k2 is coming out to be almost 1 in our camera 
k =1 ;
A = zeros(2,2) ; 
b = zeros(2,1);
A = [(Z(1)-X(1))  k^2*(Z(2) - X(2)) ; Z(1) - Y(1) k^2*(Z(2) - Y(2))] ; 
b = [-(X(1) - Z(1))*Y(1)-k^2*(X(2)-Z(2))*Y(2) ; -(Y(1) - Z(1))*X(1)-k^2*(Y(2)-Z(2))*X(2)];
ab = (inv(A)*b);