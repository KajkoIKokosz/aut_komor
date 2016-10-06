function A = komorkowy(v,n) 
%v - vektor kolejnego rzędu
%n - ile wierszy
A = zeros(n, round(n / 10))
j = size(A,2);
A(1,round(j/2)) = 1 %inicjuje 1 po środku

for i=2:n %pierwszy rząd jest zdefiniowany - ma zawsze 1 na środku
  tb1 = 0; %deklaruje vektor dla jedynek
  for k=1:j
    if A(i-1,k) = 1
    tb1(1,size(tb1,2)+1) = k; %size(tb1,2)+1 -> kolejny index w wektorze jedynek
  end
  for k=1:size(tb1,2)
    A(i,k)
  
    
end

  