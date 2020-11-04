%function y=TS(x)
x=[1 2 3 1];
disp (x) ;
L=length(x);
disp (L);
tabulist(2,L)=zeros;% se considera el tabu tenure =2. Es el tiempo o
                    % iteraciones que dura el elemento en la lista tabu
 suma_in=0;
suma=0;
   %calculo de la función objetivo sum (x^2) 
    for j=1:L
         suma_in=suma_in + x(j)^2;
    end
    disp(suma_in);
    for j=1:L
     tabulist(1,j)= x(j);
     tabulist(2,j)=0;
    end
    disp (tabulist);
    x1=x;
    for i=1:L
        if x1(i)>0
        x1(i)=x1(i)-1;
        disp(x1);
        end
        for j=1:L
            suma=suma+x1(j)^2;
        end
        disp(suma);
        if suma<suma_in
            for j=1:L
            tabulist(2,j)= x1(j);
             end
            disp (tabulist);
        end
        suma=0;
        x1=x;
    end
    
%end