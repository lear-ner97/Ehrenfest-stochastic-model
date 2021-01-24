function [ind,in]=existe(x,u)
i=1;
while (i<=length(u))
   if u(i)==x
      ind=i;
      in=1;
      break
   
   else
       i=i+1;
   
end
if i>length(u)
    ind=-1;
    in=0;
end
end