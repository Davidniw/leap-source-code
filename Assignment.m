
clc;

x1=[0.8; 0.5 ;0.0; 0.1];

x2=[0.2; 0.1; 1.3; 0.9];

x3=[0.9; 0.7; 0.3; 0.3];

x4=[0.2; 0.7; 0.8; 0.2];

x5=[1.0; 0.8; 0.5; 0.7];

x6=[0.0; 0.2; 0.3; 0.6];

d1=[1];

d2=[-1];

d3=[1];

d4=[-1];

d5=[1];

d6=[-1];

y1=[0.8; 0.5 ;0.0; 0.1; 1]; % Augmented input for x1

y2=[0.2; 0.1; 1.3; 0.9; 1];% Augmented input for x2

y3=[0.9; 0.7; 0.3; 0.3; 1];% Augmented input for x3

y4=[0.2; 0.7; 0.8; 0.2; 1];% Augmented input for x4

y5=[1.0; 0.8; 0.5; 0.7; 1];% Augmented input for x5

y6=[0.0; 0.2; 0.3; 0.6; 1];% Augmented input for x6

w = [-0.1886; 0.8709; 0.8338; -0.1795; 0.7873];% Initial weight vector 

l = 1.5; % Given coefficient

% calculation

for cyc = 1:1:10
 for y = [y1 y2 y3 y4 y5 y6] 
     if y == y1
         d=d1;
     elseif y == y2
         d=d2;
     elseif y == y3
         d=d3;
     elseif y== y4
         d=d4;
     elseif y == y5
         d = d5;
     else y == y6
         d = d6;
         
     end
%      counter = 0;
%      counter = counter+1;

     w_new=w+(0.5*l*(abs(w'*y)/(y'*y))*(d-sign(w'*y)))*y;

   
     disp([w_new])
    
 end
 
end

     

         
    
     
       
     


