# -*- coding: cp936 -*-
######################��ʼ��������###############
import math
import numpy as np
import sys

#Data transmission -- Chao Chen 22011310
#-----------------------------------------------
import serial
import string
import time

port = serial.Serial("/dev/ttyAMA0", baudrate=9600, timeout=1.0)

port.open()

rcv=''
while rcv=='':
    rcv = port.readline()
rcv.replace('\n','')
x0 = string.atoi(rcv)

rcv=''
while rcv=='':
    rcv = port.readline()
rcv.replace('\n','')
y0 = string.atoi(rcv)
#-----------------------------------------------
#End of data transmission -- Chao Chen 22011310

#Your code to calculate the curve here -- Chao Chen 22011310
#-----------------------------------------------
long=2.7               #����
width=1.6               #����
qianxuan=0.45                #ǰ��
houxuan=0.25                  #����
lunjin=0.25                   #���ְ뾶
fai=-0.48                        #��ʼƫ��
x6=15.5                              #������ǰ�Ǻ�����
y6=5                              #������ǰ��������
x7=18                              #������ǰ�Ǻ�����
y7=5                             #������ǰ��������
x8=15.5                               #��������������
y8=0                                #�������ǽ�������
x9=18                                  #������ǰ��������
y9=0                                   #������ǰ��������
ds=0.03                        #���沽��
#r=
#R=
#xd=
#yd=

r=(long-qianxuan-houxuan)/math.fabs(math.tan(fai))      # �����ĺ������ĵ�ת��뾶
xd=(x8+x9)/2                                 # �յ�����
yd=(y8+y9)/2+3*houxuan
#plt.plot(xd,yd,'bo')                               #���յ�����
#plt.show()

ys=float("inf")
yt=float("inf")
if fai>0:
    raise ValueError('number must be negative')
    sys.exit(0)

############���ɹ켣###############
#plt.plot(x0,y0,'bo');

w1=list()
w2=list()
w1.append(x0)
w2.append(y0)

m1=-(xd-x0-r)**2-3*r**2-(yd-y0)**2
m2=4*r*(xd-x0-r)
m3=4*r*(yd-y0)
t1=-math.asin(m1/(math.sqrt(m2**2+m3**2)))+math.asin(m2/(math.sqrt(m2**2+m3**2)))
m4=yd-y0+2*r*math.sin(t1)
m5=math.asin(m4/r)
t2=t1-m5

x1=x0+r
y1=y0



############################################################
#Լ���ռ�����
if (math.sqrt((x0-xd+r)**2+(y0-yd)**2)-3*r)>0:
     print "�����Զ����С�뾶���������޷�����"
     sys.exit(0)
if ((t1-t2)+(math.pi/8))<0 or ((t1-t2)-(math.pi/8))>0:
     print "�յ㳵��ƫ�ǹ�����С�뾶���������޷�����"
     sys.exit(0)
#��һ�׶ι켣
 
x1=x0+r
y1=y0
fai1=fai
  
for i in np.linspace(math.pi,(math.pi+t1),t1/ds):
     x=x1+r*math.cos(i)
     y=y1+r*math.sin(i)
     
     theta=i-(math.pi/2)        #theta0Ϊ��ʼ�㳵��ƫ��
     
     jiao1=math.atan((width/2)/(long-houxuan))
     jiao2=jiao1
     jiao3=math.atan((width/2)/houxuan)
     jiao4=jiao3
     jiao1=theta-jiao1
     jiao2=theta+jiao2
     jiao3=theta+math.pi-jiao3
     jiao4=theta+math.pi+jiao4
     
     r1=math.sqrt((width/2)**2+(long-houxuan)**2)         #��������������ĸ��˵�
     r2=math.sqrt((width/2)**2+houxuan**2)
     youqianx=x+r1*math.cos(jiao1)
     youqiany=y+r1*math.sin(jiao1)
     
     zuoqianx=x+r1*math.cos(jiao2)
     zuoqiany=y+r1*math.sin(jiao2)
     
     zuohoux=x+r2*math.cos(jiao3)
     zuohouy=y+r2*math.sin(jiao3)
     
     youhoux=x+r2*math.cos(jiao4)
     youhouy=y+r2*math.sin(jiao4)
     
     #plt.plot([youqianx,zuoqianx],[youqiany,zuoqiany])
     #plt.show()
     #plt.plot([zuoqianx,zuohoux],[zuoqiany,zuohouy])
     #plt.show()
     #plt.plot([zuohoux,youhoux],[zuohouy,youhouy])
     #plt.show()
     #plt.plot([youhoux,youqianx],[youhouy,youqiany])
     #plt.show()
         
     jiao5=math.atan((width/2)/(long-qianxuan-houxuan))      #������д�����ĸ�����
     jiao6=jiao5
     jiao5=theta-jiao5
     jiao6=theta+jiao6
     jiao7=theta+(math.pi/2)
     jiao8=theta-(math.pi/2)
     
     jiao9=theta+fai1
     jiaoa=theta
     
     r3=math.sqrt((width/2)**2+(long-qianxuan-houxuan)**2)
     r4=width/2
     
     yqianlunzx=x+r3*math.cos(jiao5)
     yqianlunzy=y+r3*math.sin(jiao5)
     yqianlunqx=yqianlunzx+lunjin*math.cos(jiao9)
     yqianlunqy=yqianlunzy+lunjin*math.sin(jiao9)
     yqianlunhx=yqianlunzx-lunjin*math.cos(jiao9)
     yqianlunhy=yqianlunzy-lunjin*math.sin(jiao9)
     
     zqianlunzx=x+r3*math.cos(jiao6)
     zqianlunzy=y+r3*math.sin(jiao6)
     zqianlunqx=zqianlunzx+lunjin*math.cos(jiao9)
     zqianlunqy=zqianlunzy+lunjin*math.sin(jiao9)
     zqianlunhx=zqianlunzx-lunjin*math.cos(jiao9)
     zqianlunhy=zqianlunzy-lunjin*math.sin(jiao9)
    
     
     zhoulunzx=x+r4*math.cos(jiao7)
     zhoulunzy=y+r4*math.sin(jiao7)
     zhoulunqx=zhoulunzx+lunjin*math.cos(jiaoa)
     zhoulunqy=zhoulunzy+lunjin*math.sin(jiaoa)
     zhoulunhx=zhoulunzx-lunjin*math.cos(jiaoa)
     zhoulunhy=zhoulunzy-lunjin*math.sin(jiaoa)
     
     yhoulunzx=x+r4*math.cos(jiao8)
     yhoulunzy=y+r4*math.sin(jiao8)
     yhoulunqx=yhoulunzx+lunjin*math.cos(jiaoa)
     yhoulunqy=yhoulunzy+lunjin*math.sin(jiaoa)
     yhoulunhx=yhoulunzx-lunjin*math.cos(jiaoa)
     yhoulunhy=yhoulunzy-lunjin*math.sin(jiaoa)
     
      
     #plt.plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy])
     #plt.show()
     #plt.plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy])
     #plt.show()
     #plt.plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy])
     #plt.show()
     #plt.plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy])
     #plt.show()
     w1.append((zhoulunzx+yhoulunzx)/2)
     w2.append((zhoulunzy+yhoulunzy)/2)  
     #�ڴ�����о��������ж��Ƿ��һ�׶λ������ϰ���
     if (yhoulunzx-x6)>=0 and (yhoulunzy-y6)>=0:
        print "��һ�׶����ϣ���С�뾶���������޷�����"
        sys.exit(0)
     
  

#�ڶ��׶ι켣
x2=x1+2*r*math.cos(math.pi+t1)
y2=y1+2*r*math.sin(math.pi+t1)
fai2=-fai
       
for i in np.linspace(t1,(t1-t2),(-t2)/(-ds)):
    x=x2+r*math.cos(i)
    y=y2+r*math.sin(i)
    theta=(math.pi/2)+i
    if theta-(math.pi/2)<=0:
        xs=x
        ys=y
        ############################################
        #�յ�ƫ��Ϊ�����������һ��Ϊ��������ֱ��
        for j in range(ys,yd,-2.5*ds):                                 
            x=xs
            y=j
            theta=math.pi/2     #theta0Ϊ��ʼ�㳵��ƫ��
     
            jiao1=math.atan((width/2)/(long-houxuan))
            jiao2=jiao1
            jiao3=math.atan((width/2)/houxuan)
            jiao4=jiao3
            jiao1=theta-jiao1
            jiao2=theta+jiao2
            jiao3=theta+math.pi-jiao3
            jiao4=theta+math.pi+jiao4
     
            r1=math.sqrt((width/2)**2+(long-houxuan)**2)     #��������������ĸ��˵�
            r2=math.sqrt((width/2)**2+houxuan**2)
            youqianx=x+r1*math.cos(jiao1)
            youqiany=y+r1*math.sin(jiao1)
     
            zuoqianx=x+r1*math.cos(jiao2)
            zuoqiany=y+r1*math.sin(jiao2)
     
            zuohoux=x+r2*math.cos(jiao3)
            zuohouy=y+r2*math.sin(jiao3)
     
            youhoux=x+r2*math.cos(jiao4)
            youhouy=y+r2*math.sin(jiao4)
     
            jiao5=math.atan((width/2)/(long-qianxuan-houxuan))  #������д�����ĸ�����
            jiao6=jiao5
            jiao5=theta-jiao5
            jiao6=theta+jiao6
            jiao7=theta+(math.pi/2)
            jiao8=theta-(math.pi/2)
     
            jiao9=theta
            jiaoa=theta
     
            r3=math.sqrt((width/2)**2+(long-qianxuan-houxuan)**2)
            r4=width/2
     
            yqianlunzx=x+r3*math.cos(jiao5)
            yqianlunzy=y+r3*math.sin(jiao5)
 
            zqianlunzx=x+r3*math.cos(jiao6)
            zqianlunzy=y+r3*math.sin(jiao6)
   
            zhoulunzx=x+r4*math.cos(jiao7)
            zhoulunzy=y+r4*math.sin(jiao7)
            yhoulunzx=x+r4*math.cos(jiao8)
            yhoulunzy=y+r4*math.sin(jiao8)
        break
         
    jiao1=math.atan((width/2)/(long-houxuan))
    jiao2=jiao1
    jiao3=math.atan((width/2)/houxuan)
    jiao4=jiao3
    jiao1=theta-jiao1
    jiao2=theta+jiao2
    jiao3=theta+math.pi-jiao3
    jiao4=theta+math.pi+jiao4
    
    r1=math.sqrt((width/2)**2+(long-houxuan)**2) #��������������ĸ��˵�
    r2=math.sqrt((width/2)**2+houxuan**2)
    youqianx=x+r1*math.cos(jiao1)
    youqiany=y+r1*math.sin(jiao1)
   
    # �ڴ�����о��������ж��Ƿ�ڶ��׶λ������ϰ���
    if (youqianx-x6)>=0 and (youqiany-y6)>=0:
        print "�ڶ��׶����ϣ���С�뾶���������޷�����"
        sys.exit(0)
   
    zuoqianx=x+r1*math.cos(jiao2)
    zuoqiany=y+r1*math.sin(jiao2)
    
    zuohoux=x+r2*math.cos(jiao3)
    zuohouy=y+r2*math.sin(jiao3)
    
    if (zuohoux-x9)>=0 and (zuohouy-y9)<=0:
        print "�ڶ��׶�������λ��࣬��С�뾶���������޷�����"
        sys.exit(0)
    
    youhoux=x+r2*math.cos(jiao4)
    youhouy=y+r2*math.sin(jiao4)
    
    # �ڴ�����о��������ж��Ƿ�ڶ��׶λ�������λ���Ҳ�
    if (youhoux-x7)>=0:
        print "�ڶ��׶�������λ���Ҳ࣬��С�뾶���������޷�����"
        sys.exit(0)

    jiao5=math.atan((width/2)/(long-qianxuan-houxuan))  #������д�����ĸ�����
    jiao6=jiao5
    jiao5=theta-jiao5
    jiao6=theta+jiao6
    jiao7=theta+(math.pi/2)
    jiao8=theta-(math.pi/2)
    
    jiao9=theta+fai2
    jiaoa=theta
    
    r3=math.sqrt((width/2)**2+(long-qianxuan-houxuan)**2)
    r4=width/2
    
    yqianlunzx=x+r3*math.cos(jiao5)
    yqianlunzy=y+r3*math.sin(jiao5)
    
    zqianlunzx=x+r3*math.cos(jiao6)
    zqianlunzy=y+r3*math.sin(jiao6)
   
    zhoulunzx=x+r4*math.cos(jiao7)
    zhoulunzy=y+r4*math.sin(jiao7)
    
    yhoulunzx=x+r4*math.cos(jiao8)
    yhoulunzy=y+r4*math.sin(jiao8)

    w1.append((zhoulunzx+yhoulunzx)/2)
    w2.append((zhoulunzy+yhoulunzy)/2)
# �����׶ι켣����Ϊ���յ�ʱ�����������ƫ�ǣ�����Ҫ����
if (t1-t2)>0 :
    x3=x2+2*r*math.cos(t1-t2)
    y3=y2+2*r*math.sin(t1-t2)
    for i in np.linspace((math.pi+t1-t2),math.pi,(t2-t1)/(-ds)):
        x=x3+r*math.cos(i)
        y=y3+r*math.sin(i)
     
        theta=i-(math.pi/2)#theta0Ϊ��ʼ�㳵��ƫ��
     
        jiao1=math.atan((width/2)/(long-houxuan))
        jiao2=jiao1
        jiao3=math.atan((width/2)/houxuan)
        jiao4=jiao3
        jiao1=theta-jiao1
        jiao2=theta+jiao2
        jiao3=theta+math.pi-jiao3
        jiao4=theta+math.pi+jiao4
     
        r1=math.sqrt((width/2)**2+(long-houxuan)**2)   #��������������ĸ��˵�
        r2=math.sqrt((width/2)**2+houxuan**2)
        youqianx=x+r1*math.cos(jiao1)
        youqiany=y+r1*math.sin(jiao1)
     
        #�ڴ�����о��������ж��Ƿ�����׶λ������ϰ���
        if(youqianx-x6)>=0 and (youqiany-y6)>=0:
           print"�����׶����ϣ���С�뾶���������޷�����"
           sys.exit(0)
        zuoqianx=x+r1*math.cos(jiao2)
        zuoqiany=y+r1*math.sin(jiao2)
     
        zuohoux=x+r2*math.cos(jiao3)
        zuohouy=y+r2*math.sin(jiao3)
    
        youhoux=x+r2*math.cos(jiao4)
        youhouy=y+r2*math.sin(jiao4)
    
     
        jiao5=math.atan((width/2)/(long-qianxuan-houxuan))   #������д�����ĸ�����
        jiao6=jiao5
        jiao5=theta-jiao5
        jiao6=theta+jiao6
        jiao7=theta+(math.pi/2)
        jiao8=theta-(math.pi/2)
     
        jiao9=theta+fai1
        jiaoa=theta
     
        r3=math.sqrt((width/2)**2+(long-qianxuan-houxuan)**2)
        r4=width/2
     
        yqianlunzx=x+r3*math.cos(jiao5)
        yqianlunzy=y+r3*math.sin(jiao5)
     
        zqianlunzx=x+r3*math.cos(jiao6)
        zqianlunzy=y+r3*math.sin(jiao6)
     
        zhoulunzx=x+r4*math.cos(jiao7)
        zhoulunzy=y+r4*math.sin(jiao7)
    
        yhoulunzx=x+r4*math.cos(jiao8)
        yhoulunzy=y+r4*math.sin(jiao8)
     
        w1.append((zhoulunzx+yhoulunzx)/2)
        w2.append((zhoulunzy+yhoulunzy)/2)

     #����һ�γ���������ֱ������
    xt=x
    yt=y
    for j in np.arange(yt,yd,-2.5*ds):                                 
        x=xt
        y=j
        theta=math.pi/2  #theta0Ϊ��ʼ�㳵��ƫ��
     
        jiao1=math.atan((width/2)/(long-houxuan))
        jiao2=jiao1
        jiao3=math.atan((width/2)/houxuan)
        jiao4=jiao3
        jiao1=theta-jiao1
        jiao2=theta+jiao2
        jiao3=theta+math.pi-jiao3
        jiao4=theta+math.pi+jiao4
     
        r1=math.sqrt((width/2)**2+(long-houxuan)**2)        #��������������ĸ��˵�
        r2=math.sqrt((width/2)**2+houxuan**2)
        youqianx=x+r1*math.cos(jiao1)
        youqiany=y+r1*math.sin(jiao1)
     
        zuoqianx=x+r1*math.cos(jiao2)
        zuoqiany=y+r1*math.sin(jiao2)
     
        zuohoux=x+r2*math.cos(jiao3)
        zuohouy=y+r2*math.sin(jiao3)
    
        youhoux=x+r2*math.cos(jiao4)
        youhouy=y+r2*math.sin(jiao4)
     
        jiao5=math.atan((width/2)/(long-qianxuan-houxuan))       #������д�����ĸ�����
        jiao6=jiao5
        jiao5=theta-jiao5
        jiao6=theta+jiao6
        jiao7=theta+(math.pi/2)
        jiao8=theta-(math.pi/2)
     
        jiao9=theta
        jiaoa=theta
     
        r3=math.sqrt((width/2)**2+(long-qianxuan-houxuan)**2)
        r4=width/2
     
        yqianlunzx=x+r3*math.cos(jiao5)
        yqianlunzy=y+r3*math.sin(jiao5)

        zqianlunzx=x+r3*math.cos(jiao6)
        zqianlunzy=y+r3*math.sin(jiao6)

        zhoulunzx=x+r4*math.cos(jiao7)
        zhoulunzy=y+r4*math.sin(jiao7)
      
        yhoulunzx=x+r4*math.cos(jiao8)
        yhoulunzy=y+r4*math.sin(jiao8)
  
          
        w1.append((zhoulunzx+yhoulunzx)/2)
        w2.append((zhoulunzy+yhoulunzy)/2)
##############С��ת�����############        
s1=t1*r
s2=t2*r
s3=(t1-t2)*r
s4=yt-yd
s5=s1
s6=ys-yd
if (ys!=float("inf")):
    print "����תs1=",s1,"����תs5=",s5,"����s6=",s6
elif (yt!=float("inf")):
    print "����תs1=",s1,"����תs2=",s2,"��ǰתs3=",s3,'����s4=',s4
elif(ys==float("inf") and yt==float("inf") and t1-t2==0):
    print "����תs1=",s1,"����תs2=",s2 
    
#long=           #����
#width=               #����
#houxuan=              #����
#x6=             #������ǰ�Ǻ�����
#y6=            #������ǰ��������
#x7=             #������ǰ�Ǻ�����
#x9=           #�������Ǻ�����
#y9=             #��������������
#ds=           #���沽��
#r=                 #�����ĺ������ĵ���Сת��뾶
#xd=             #�յ������
#yd=                  #�յ�������

step=0.1                 # ����
xx=np.arange((x6-width*5),(x6+step),step)                            # Ԥ���ͣ������ĺ��᷶Χ
lx=xx.shape[0]           #matlab����洢�������ֻ������飿
yyy=np.arange(y6,(y6+2*long+step),step)
ly=yyy.shape[0]        # Ԥ���ͣ����������᷶Χ
yy=np.tile(yyy,(lx,1))     #ƽ�̾���������һ��yyy���� 
x0=x6-width*5
m=0
i=0
while m<=(lx-1):
    y0=y6
    n=0
    while n<=(ly-1):
        m1=-(xd-x0-r)**2-3*r**2-(yd-y0)**2
        m2=4*r*(xd-x0-r)
        m3=4*r*(yd-y0)
        t1=-math.asin(m1/(math.sqrt(m2**2+m3**2)))+math.asin(m2/(math.sqrt(m2**2+m3**2)))
        m4=yd-y0+2*r*math.sin(t1)
        m5=math.asin(m4/r)
        t2=t1-m5
        x1=x0+r
        y1=y0
        
        if(x0+(width/2)>x6):                                             #�жϳ�ʼλ��ƫ��
            yy[m,n]=25                        #���������������������ǰ�[m,n]��ֵ25��
        
        if((math.sqrt((x0-xd+r)**2+(y0-yd)**2)-3*r)>0):                         #�жϾ����Զ
            yy[m,n]=25
       
        if((t1-t2)+(math.pi/8)<0 or (t1-t2)-(math.pi/8)>0):                         #�ж�ƫ�ǹ���
             yy[m,n]=25
         
        for i in np.arange(math.pi,(math.pi+t1),ds):
            x=x1+r*math.cos(i)
            y=y1+r*math.sin(i)   
            theta=i-(math.pi/2)                                    #thetaΪ��ʼ�㳵��ƫ��          
            jiao8=theta-(math.pi/2)
            r4=width/2      
            yhoulunzx=x+r4*math.cos(jiao8);
            yhoulunzy=y+r4*math.sin(jiao8);       
            if(yhoulunzx-x6>=0 and yhoulunzy-y6>=0):                     #�жϵ�һ�׶�����
                yy[m,n]=25
            break
            
       
        
        x2=x1+2*r*math.cos(math.pi+t1)
        y2=y1+2*r*math.sin(math.pi+t1) 
        for i in np.arange(t1,(t1-t2),-ds):
            x=x2+r*math.cos(i)
            y=y2+r*math.sin(i)
            theta=(math.pi/2)+i
            jiao1=math.atan((width/2)/(long-houxuan))
            jiao3=math.atan((width/2)/houxuan);
            jiao4=jiao3
            jiao1=theta-jiao1
            jiao3=theta+math.pi-jiao3
            jiao4=theta+math.pi+jiao4         
            r1=math.sqrt((width/2)**2+(long-houxuan)**2)
            r2=math.sqrt((width/2)**2+houxuan**2)
            youqianx=x+r1*math.cos(jiao1)
            youqiany=y+r1*math.sin(jiao1)
            if(youqianx-x6>=0 and youqiany-y6>=0):                   # �жϵڶ��׶�����
                yy[m,n]=25
            break
               
            zuohoux=x+r2*math.cos(jiao3)
            zuohouy=y+r2*math.sin(jiao3)
            if(zuohoux-x9>=0 and zuohouy-y9<=0):                         # �жϵڶ��׶�������λ���
                yy[m,n]=25
            break
                  
            youhoux=x+r2*math.cos(jiao4)        
            if(youhoux-x7)>=0:                                          # �жϵڶ��׶�������λ���Ҳ�
                yy[m,n]=25
            break;
           
     
        y0=y0+step
        n=n+1
   
    x0=x0+step
    m=m+1
#plt.plot(xx,yy,'.b')
#plt.show()
#f=open('x_axis','w')
#f.writelines(xx)
#f.close()
#f=open('y_axis','w')
#f.writelines(yy)
#f.close()
#toc

             # ��ʾ�������ĵ�켣


#plt.plot(w1,w2)
#plt.show()

#-----------------------------------------------
#End of your code to calculate the curve -- variable (w1,w2) refers to (x,y) here -- Chao Chen 22011310

#Data transmission -- Chao Chen 22011310
#-----------------------------------------------
port.write(str(len(w1)))
port.write('\0')
time.sleep(0.05)

count=0
while count<=(len(w1)-1):
    port.write(str(w1[count]))
    port.write('\0')
    count = count + 1
    time.sleep(0.05)

count=0
while count<=(len(w2)-1):
    port.write(str(w2[count]))
    port.write('\0')
    count = count + 1
    time.sleep(0.05)

port.close()
#-----------------------------------------------
#End of data transmission -- Chao Chen 22011310