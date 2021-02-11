ch=menu('WOULD YOU LIKE TO USE', 'DEFAULT VALUES', 'USER DEFINED VALUES');
if ch==1
    R1=0.2;
    R2=.002;
    X1=0.45;
    X2=.0045;
    Ri=10000;
    Xm=1600;
    VP=2400;
    VS=240;
    kVA=150;
    pf=0.8;
else
    R1=input('ENTeR THE VALUE OF R1 IN OHMS     ');
    R2=input('ENter the value of R2 IN ohms     ');
    X1=input('ENTER THE VALUE OF X2 IN OHMS     ');
    X2=input('ENTER THE VALUE OF X2 IN OHMS     ');
    Ri=input('ENTER THE VALUE OF Ri IN OHMS     ');
    Xm=input('ENTER THE VALUE OF Xm IN OHMS     ');
    VP=input('ENTER THE VALUE OF PRIMARY VOLTAGE IN VOLT     ');
    VS=input('ENTER THE VALUE OF SECONDARY VOLTAGE IN VOLTS      ');
    kVA=input('ENTER THE RATING IN kVA  ');
end
a=VP/VS;
R_HV=R1+R2*a^2;
X_HV=X1+X2*a^2;
% Data generation for 0.8 pf lagging
I2=0.0;
pf=0.8;
for j=1:26;
    I2_r=I2/a;
    V_drop=I2_r*(R_HV*pf+X_HV*sin(acos(pf)));
    V_reg=V_drop*100/VP;
    reg1(j)=V_reg;
    I2=I2+25
end
% Data generation of 1.0 pf
I2=0.0;
pf=1.0;
for j=1:26;
    I2_r=I2/a;
    V_drop=I2_r*(R_HV*pf+X_HV*sin(acos(pf)));
    V_reg=V_drop*100/VP;
    reg2(j)=V_reg;
    I2=I2+25
end
% Data geeration for 0.8 pf leading
I2=0.0;
pf=0.8;
for j=1:26;
    I2_r=I2/a;
    V_drop=I2_r*(R_HV*pf-X_HV*sin(acos(pf)));
    V_reg=V_drop*100/VP;
    reg3(j)=V_reg;
    I2=I2+25
end
IL=0:25:625;
plot(IL,reg1,'b-')
hold on;
plot(IL,reg2,'b.')
hold on;
plot(IL,reg3,'b*')
legend('0.8 PF lagging','1.0 PF','0.8 PF leading');
hold off

    
  