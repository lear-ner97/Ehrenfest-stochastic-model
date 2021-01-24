
% Simulation of SDE
clear all;
close all;

T=10;
N=1000; % nb of discretization intervals
incr_t=T/N;
nb_sim = 1; % nb of simulated trajectories
for k= 1:nb_sim
  x_0=3*rand;
  X=x_0*ones(1,N+1); %the SDE
  Y=x_0*ones(1,N+1); %the ODE (same b, null sigma)
  for k=2:(N+1)
    t_k_1=(k-1)*incr_t;
    incr_B=sqrt(incr_t)*normrnd(0,1);
    X(k)=X(k-1)+b(t_k_1,X(k-1))*incr_t+sigma(t_k_1,X(k-1))*incr_B;
    Y(k)=Y(k-1)+b(t_k_1,Y(k-1))*incr_t;
  end
  plot(0:incr_t:T,X,'k')
  xlabel('t');
  plot(0:incr_t:T,X)
  hold on
  plot(0:incr_t:T,Y,'b:')
  legend('SDE','ODE')
end
