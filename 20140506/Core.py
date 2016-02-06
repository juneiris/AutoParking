# -*- coding: cp936 -*-
######################初始坐标输入###############
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
long=2.7               #车长
width=1.6               #车宽
qianxuan=0.45                #前悬
houxuan=0.25                  #后悬
lunjin=0.25                   #车轮半径
fai=-0.48                        #初始偏角
x6=15.5                              #车库左前角横坐标
y6=5                              #车库左前角纵坐标
x7=18                              #车库右前角横坐标
y7=5                             #车库右前角纵坐标
x8=15.5                               #车库左后角纵坐标
y8=0                                #车库左后角角纵坐标
x9=18                                  #车库左前角纵坐标
y9=0                                   #车库左前角纵坐标
ds=0.03                        #仿真步长
#r=
#R=
#xd=
#yd=

r=(long-qianxuan-houxuan)/math.fabs(math.tan(fai))      # 车辆的后轴中心点转弯半径
xd=(x8+x9)/2                                 # 终点坐标
yd=(y8+y9)/2+3*houxuan
#plt.plot(xd,yd,'bo')                               #画终点坐标
#plt.show()

ys=float("inf")
yt=float("inf")
if fai>0:
    raise ValueError('number must be negative')
    sys.exit(0)

############生成轨迹###############
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
#约束空间生成
if (math.sqrt((x0-xd+r)**2+(y0-yd)**2)-3*r)>0:
     print "距离过远，最小半径泊车方法无法泊车"
     sys.exit(0)
if ((t1-t2)+(math.pi/8))<0 or ((t1-t2)-(math.pi/8))>0:
     print "终点车身偏角过大，最小半径泊车方法无法泊车"
     sys.exit(0)
#第一阶段轨迹
 
x1=x0+r
y1=y0
fai1=fai
  
for i in np.linspace(math.pi,(math.pi+t1),t1/ds):
     x=x1+r*math.cos(i)
     y=y1+r*math.sin(i)
     
     theta=i-(math.pi/2)        #theta0为起始点车身偏角
     
     jiao1=math.atan((width/2)/(long-houxuan))
     jiao2=jiao1
     jiao3=math.atan((width/2)/houxuan)
     jiao4=jiao3
     jiao1=theta-jiao1
     jiao2=theta+jiao2
     jiao3=theta+math.pi-jiao3
     jiao4=theta+math.pi+jiao4
     
     r1=math.sqrt((width/2)**2+(long-houxuan)**2)         #以下描述车身的四个端点
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
         
     jiao5=math.atan((width/2)/(long-qianxuan-houxuan))      #以下描写车的四个轮子
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
     #在此添加判决函数，判断是否第一阶段会碰到障碍物
     if (yhoulunzx-x6)>=0 and (yhoulunzy-y6)>=0:
        print "第一阶段碰障，最小半径泊车方法无法泊车"
        sys.exit(0)
     
  

#第二阶段轨迹
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
        #终点偏角为负，因此下面一段为矫正让其直行
        for j in range(ys,yd,-2.5*ds):                                 
            x=xs
            y=j
            theta=math.pi/2     #theta0为起始点车身偏角
     
            jiao1=math.atan((width/2)/(long-houxuan))
            jiao2=jiao1
            jiao3=math.atan((width/2)/houxuan)
            jiao4=jiao3
            jiao1=theta-jiao1
            jiao2=theta+jiao2
            jiao3=theta+math.pi-jiao3
            jiao4=theta+math.pi+jiao4
     
            r1=math.sqrt((width/2)**2+(long-houxuan)**2)     #以下描述车身的四个端点
            r2=math.sqrt((width/2)**2+houxuan**2)
            youqianx=x+r1*math.cos(jiao1)
            youqiany=y+r1*math.sin(jiao1)
     
            zuoqianx=x+r1*math.cos(jiao2)
            zuoqiany=y+r1*math.sin(jiao2)
     
            zuohoux=x+r2*math.cos(jiao3)
            zuohouy=y+r2*math.sin(jiao3)
     
            youhoux=x+r2*math.cos(jiao4)
            youhouy=y+r2*math.sin(jiao4)
     
            jiao5=math.atan((width/2)/(long-qianxuan-houxuan))  #以下描写车的四个轮子
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
    
    r1=math.sqrt((width/2)**2+(long-houxuan)**2) #以下描述车身的四个端点
    r2=math.sqrt((width/2)**2+houxuan**2)
    youqianx=x+r1*math.cos(jiao1)
    youqiany=y+r1*math.sin(jiao1)
   
    # 在此添加判决函数，判断是否第二阶段会碰到障碍物
    if (youqianx-x6)>=0 and (youqiany-y6)>=0:
        print "第二阶段碰障，最小半径泊车方法无法泊车"
        sys.exit(0)
   
    zuoqianx=x+r1*math.cos(jiao2)
    zuoqiany=y+r1*math.sin(jiao2)
    
    zuohoux=x+r2*math.cos(jiao3)
    zuohouy=y+r2*math.sin(jiao3)
    
    if (zuohoux-x9)>=0 and (zuohouy-y9)<=0:
        print "第二阶段碰到车位后侧，最小半径泊车方法无法泊车"
        sys.exit(0)
    
    youhoux=x+r2*math.cos(jiao4)
    youhouy=y+r2*math.sin(jiao4)
    
    # 在此添加判决函数，判断是否第二阶段会碰到车位的右侧
    if (youhoux-x7)>=0:
        print "第二阶段碰到车位的右侧，最小半径泊车方法无法泊车"
        sys.exit(0)

    jiao5=math.atan((width/2)/(long-qianxuan-houxuan))  #以下描写车的四个轮子
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
# 第三阶段轨迹，因为当终点时车身如果存在偏角，就需要矫正
if (t1-t2)>0 :
    x3=x2+2*r*math.cos(t1-t2)
    y3=y2+2*r*math.sin(t1-t2)
    for i in np.linspace((math.pi+t1-t2),math.pi,(t2-t1)/(-ds)):
        x=x3+r*math.cos(i)
        y=y3+r*math.sin(i)
     
        theta=i-(math.pi/2)#theta0为起始点车身偏角
     
        jiao1=math.atan((width/2)/(long-houxuan))
        jiao2=jiao1
        jiao3=math.atan((width/2)/houxuan)
        jiao4=jiao3
        jiao1=theta-jiao1
        jiao2=theta+jiao2
        jiao3=theta+math.pi-jiao3
        jiao4=theta+math.pi+jiao4
     
        r1=math.sqrt((width/2)**2+(long-houxuan)**2)   #以下描述车身的四个端点
        r2=math.sqrt((width/2)**2+houxuan**2)
        youqianx=x+r1*math.cos(jiao1)
        youqiany=y+r1*math.sin(jiao1)
     
        #在此添加判决函数，判断是否第三阶段会碰到障碍物
        if(youqianx-x6)>=0 and (youqiany-y6)>=0:
           print"第三阶段碰障，最小半径泊车方法无法泊车"
           sys.exit(0)
        zuoqianx=x+r1*math.cos(jiao2)
        zuoqiany=y+r1*math.sin(jiao2)
     
        zuohoux=x+r2*math.cos(jiao3)
        zuohouy=y+r2*math.sin(jiao3)
    
        youhoux=x+r2*math.cos(jiao4)
        youhouy=y+r2*math.sin(jiao4)
    
     
        jiao5=math.atan((width/2)/(long-qianxuan-houxuan))   #以下描写车的四个轮子
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

     #下面一段程序让其沿直道后退
    xt=x
    yt=y
    for j in np.arange(yt,yd,-2.5*ds):                                 
        x=xt
        y=j
        theta=math.pi/2  #theta0为起始点车身偏角
     
        jiao1=math.atan((width/2)/(long-houxuan))
        jiao2=jiao1
        jiao3=math.atan((width/2)/houxuan)
        jiao4=jiao3
        jiao1=theta-jiao1
        jiao2=theta+jiao2
        jiao3=theta+math.pi-jiao3
        jiao4=theta+math.pi+jiao4
     
        r1=math.sqrt((width/2)**2+(long-houxuan)**2)        #以下描述车身的四个端点
        r2=math.sqrt((width/2)**2+houxuan**2)
        youqianx=x+r1*math.cos(jiao1)
        youqiany=y+r1*math.sin(jiao1)
     
        zuoqianx=x+r1*math.cos(jiao2)
        zuoqiany=y+r1*math.sin(jiao2)
     
        zuohoux=x+r2*math.cos(jiao3)
        zuohouy=y+r2*math.sin(jiao3)
    
        youhoux=x+r2*math.cos(jiao4)
        youhouy=y+r2*math.sin(jiao4)
     
        jiao5=math.atan((width/2)/(long-qianxuan-houxuan))       #以下描写车的四个轮子
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
##############小车转向策略############        
s1=t1*r
s2=t2*r
s3=(t1-t2)*r
s4=yt-yd
s5=s1
s6=ys-yd
if (ys!=float("inf")):
    print "后右转s1=",s1,"后左转s5=",s5,"后退s6=",s6
elif (yt!=float("inf")):
    print "后右转s1=",s1,"后左转s2=",s2,"右前转s3=",s3,'后退s4=',s4
elif(ys==float("inf") and yt==float("inf") and t1-t2==0):
    print "后右转s1=",s1,"后左转s2=",s2 
    
#long=           #车长
#width=               #车宽
#houxuan=              #后悬
#x6=             #车库左前角横坐标
#y6=            #车库左前角纵坐标
#x7=             #车库右前角横坐标
#x9=           #车库左后角横坐标
#y9=             #车库左后角纵坐标
#ds=           #仿真步长
#r=                 #车辆的后轴中心点最小转弯半径
#xd=             #终点横坐标
#yd=                  #终点纵坐标

step=0.1                 # 步长
xx=np.arange((x6-width*5),(x6+step),step)                            # 预设可停车区域的横轴范围
lx=xx.shape[0]           #matlab里面存储的是数字还是数组？
yyy=np.arange(y6,(y6+2*long+step),step)
ly=yyy.shape[0]        # 预设可停车区域的纵轴范围
yy=np.tile(yyy,(lx,1))     #平铺矩阵增加了一个yyy变量 
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
        
        if(x0+(width/2)>x6):                                             #判断初始位置偏右
            yy[m,n]=25                        #？？？？？？？？？？是把[m,n]赋值25吧
        
        if((math.sqrt((x0-xd+r)**2+(y0-yd)**2)-3*r)>0):                         #判断距离过远
            yy[m,n]=25
       
        if((t1-t2)+(math.pi/8)<0 or (t1-t2)-(math.pi/8)>0):                         #判断偏角过大
             yy[m,n]=25
         
        for i in np.arange(math.pi,(math.pi+t1),ds):
            x=x1+r*math.cos(i)
            y=y1+r*math.sin(i)   
            theta=i-(math.pi/2)                                    #theta为起始点车身偏角          
            jiao8=theta-(math.pi/2)
            r4=width/2      
            yhoulunzx=x+r4*math.cos(jiao8);
            yhoulunzy=y+r4*math.sin(jiao8);       
            if(yhoulunzx-x6>=0 and yhoulunzy-y6>=0):                     #判断第一阶段碰障
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
            if(youqianx-x6>=0 and youqiany-y6>=0):                   # 判断第二阶段碰障
                yy[m,n]=25
            break
               
            zuohoux=x+r2*math.cos(jiao3)
            zuohouy=y+r2*math.sin(jiao3)
            if(zuohoux-x9>=0 and zuohouy-y9<=0):                         # 判断第二阶段碰到车位后侧
                yy[m,n]=25
            break
                  
            youhoux=x+r2*math.cos(jiao4)        
            if(youhoux-x7)>=0:                                          # 判断第二阶段碰到车位的右侧
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

             # 显示后轴中心点轨迹


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