N=1000;n=10000;
u1=1:N;
up=[N];
add=1;
for i=1:n
   x=randi([1 N],1,1);
   [ind,in]=existe(x,u1);
   if (in==1)
       up(i+1)=up(i)-1;
       u1(ind)=0;
   else
       u1(N+add)=x;
       add=add+1;
       up(i+1)=up(i)+1;
   end
end
ou=[];t=(0.001:0.001:1);
for i=1:length(t)
    ou(i) = (up(round(n*t(i))) - n/2) / sqrt(n)
end
%figure(1);
%plot(up/N);hold on
%figure(2);hist(up)
figure(3);plot(round(n*t),ou)

