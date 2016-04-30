clear 
load ortho_data
%% Calulation of Orthocentre of the focal length %%
x_Q = (X(1) - ab(2))*0.0077 ; 
y_Q = (X(2) - ab(1))*0.0077 ;
x_R = (Y(1) - ab(2))*0.0077 ; 
y_R = (Y(2) - ab(1))*0.0077 ;
x_S = (Z(1) - ab(2))*0.0077 ; 
y_S = (Z(2) - ab(1))*0.0077 ;
f1 = sqrt(-(x_Q*x_R + y_Q*y_R));
f2 = sqrt(-(x_Q*x_S + y_Q*y_S));
f3 = sqrt(-(x_S*x_R + y_S*y_R));
f = (f1 + f2 + f3)/3;