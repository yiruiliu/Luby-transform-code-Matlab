
function [RSD] = RSDgenerate (c,delta,k)
R=c.*log(k./delta).*sqrt(k);
Omega=zeros(1,k);
Omega(1)=1./k;
for i=2:k
    Omega(i)=1./(i.*(i-1));
end

mid=floor(k/R);
Tau=zeros(1,k);
for i=1:mid-1
    Tau(i)=R./(i.*k);
end
Tau(mid)=R.*log(R./delta)./k;
for i=mid+1:k
    Tau(i)=0;
end

beta=sum(Omega+Tau);

RSD=(Omega+Tau)./beta;
end
