function A = komorkowy(v,n) 
%v - vektor kolejnego rzędu
%n - ile wierszy
A = zeros(n, n)
j = size(A,2)
A(1,round(j/2)) = 1 %inicjuje 1 po środku

for i=2:n %pierwszy rząd jest zdefiniowany - ma zawsze 1 na środku
  tb1 = [0]; %deklaruje i zeruje vektor pomocniczy dla jedynek
  for k=1:size(A,2)
    if A(i-1,k) == 1
    tb1(1,length(tb1)+1) = k; %length(tb1)+1 -> kolejny index w wektorze jedynek
  end
   
  for l=1:length(tb1)
    %należy wyśrodkować na 1 z rzędu niżej i iteracyjnie dodać wszystkie
    %wartości z wektora
    %ustawienie początku wektora i wprowadzeniewektora   
    for vv=1:length(v) %wykonujemy dla wszystkich elementów vektora wejściowego
      A(i,tb1(1,l)+vv) = v(1,vv); 
    end
  end
    
end

end
  