 ch=menu('Choose any one','Default','User value');
if ch==1
Vs=250;
Iam=380;
Iag=350;
Ifm=4.2;
Ifg=5;
Ia=Iam-Iag;
I_s=Ifm + Ifg +Ia;
Ra=0.02;
Rah=Ra*1.2;
else
Vs=input('Enter the value of supply voltage    ');
Iam=input('Enter the value of motor armature current    ');
Iag=input('Enter the value of generator armature current    ');
Ifm=input('Enter the value of motor field current    ');
Ifg=input('Enter the value of generator field current    ');
Ra=input('Enter the value of armature resisitance    ');
end
Ia=Iam-Iag;
I_s=Ifm + Ifg +Ia;
Pia=Vs*Ia;
Ps=Pia-((Iam)^2)*Ra-((Iag)^2)*Ra;
%%motor efficiency
Pes=Ps/2;
PLm=(Pes+Vs*Ifm)+((Iam)^2)*Ra;
Pin_m=Vs*(Iam+Ifm);
EFF_m=((Pin_m - PLm)/Pin_m)*100
%%Generator efficiency
Pes=Ps/2;
PLg=(Pes+Vs*Ifg)+((Iag)^2)*Ra;
Pout_g=Vs*Iag;
EFF_g=Pout_g/(Pout_g+PLg)*100





