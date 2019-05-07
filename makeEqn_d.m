function p = makeEqn_d(I1,I2)
p=@solver;
    function F = solver(X)
        F(1)=5*X(1)/((1+I1)*(35+X(1)))-(X(2)/(35+X(2)));
        F(2)=5*X(1)/((1+I2)*(35+X(1)))-(X(3)/(35+X(3)));
        F(3)=X(1)+X(2)+X(3)-100;
    end
end
