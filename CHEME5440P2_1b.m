%Sam Furness
%5/4/19
%PROBLEM 1b

%Define parameters insluding range of inhibitor
I1low=linspace(0,10,11);
I2low=linspace(0,10,11);
I1high=linspace(10,50,41);
I2high=linspace(10,50,41);
I1=[I1low(1:(length(I1low)-1)) I1high];
I2=[I2low(1:(length(I2low)-1)) I2high];
A=zeros(length(I1),length(I2));

%Solve equations at every value of inhibitor
for i=1:length(I1)
    for j=1:length(I2)
fun=makeEqn(I1(i),I2(j));
X0=[0,0,0];
X=fsolve(fun,X0);
A(i,j)=X(1);
    end
end

%Plot
I1log=log10(I1);
I2log=log10(I2);
surf(A);
set(gca,'XScale','log')
set(gca,'YScale','log')
title('Concentration of A')
xlabel('I1')
ylabel('I2')
zlabel('A')








