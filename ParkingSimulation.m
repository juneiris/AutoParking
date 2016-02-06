function varargout = ParkingSimulation(varargin)
% PARKINGSIMULATION MATLAB code for ParkingSimulation.fig
%      PARKINGSIMULATION, by itself, creates a new PARKINGSIMULATION or raises the existing
%      singleton*.
%
%      H = PARKINGSIMULATION returns the handle to a new PARKINGSIMULATION or the handle to
%      the existing singleton*.
%
%      PARKINGSIMULATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PARKINGSIMULATION.M with the given input arguments.
%
%      PARKINGSIMULATION('Property','Value',...) creates a new PARKINGSIMULATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ParkingSimulation_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ParkingSimulation_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ParkingSimulation

% Last Modified by GUIDE v2.5 08-Dec-2013 17:10:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ParkingSimulation_OpeningFcn, ...
                   'gui_OutputFcn',  @ParkingSimulation_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
% --- Executes just before ParkingSimulation is made visible.

function ParkingSimulation_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ParkingSimulation (see VARARGIN)

% Choose default command line output for ParkingSimulation
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% --- Outputs from this function are returned to the command line.

function varargout = ParkingSimulation_OutputFcn(~, ~,handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function chechang_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function chekuan_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function qianxuan_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function houxuan_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function banjing_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function pianjiao_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function zqx_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function yqx_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function zhx_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function yhx_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function zqy_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function yqy_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function zhy_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function yhy_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function qianpian_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function houpian_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function zuopian_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function cx_CreateFcn(hObject,  ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function cy_CreateFcn(hObject,  ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function buchang_CreateFcn(hObject, ~,~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end   
function log_CreateFcn(hObject, ~,~)  % 显示窗口
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end    

% --- Executes on button press in default.                        % 所有参数设为默认值
function default_Callback(~,~, handles) 
% hObject    handle to default (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.chechang,'string','2.7');
set(handles.chekuan,'string','1.6');
set(handles.qianxuan,'string','0.45');
set(handles.houxuan,'string','0.25');
set(handles.banjing,'string','0.25');
set(handles.pianjiao,'string','-0.4870');
set(handles.cx,'string','3.2');
set(handles.cy,'string','7.2');

set(handles.zqx,'string','8.5');
set(handles.zqy,'string','5');
set(handles.yqx,'string','11');
set(handles.yqy,'string','5');
set(handles.zhx,'string','8.5');
set(handles.zhy,'string','0');
set(handles.yhx,'string','11');
set(handles.yhy,'string','0');
set(handles.houpian,'string','0.6');
set(handles.qianpian,'string','1.85');
set(handles.zuopian,'string','-0.45');
set(handles.buchang,'string','0.03');

% --- Executes on button press in getstartpoint.                 % 标定初始点坐标
function getstartpoint_Callback(~,~,~)
% hObject    handle to getstartpoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x0; % 初始x坐标
global y0; % 初始y坐标
[x0,y0] = ginput(1);%获取起点坐标

function chechang_Callback(~,~,~)
function chekuan_Callback(~,~,~)
function qianxuan_Callback(~, ~,~)
function houxuan_Callback(~, ~,~)
function banjing_Callback(~, ~,~)
function pianjiao_Callback(~, ~,~)
function cx_Callback(~, ~,~)
function cy_Callback(~, ~,~)
function zqx_Callback(~, ~,~)
function yqx_Callback(~, ~,~)
function zhx_Callback(~, ~,~)
function yhx_Callback(~, ~,~)
function zqy_Callback(~, ~,~)
function yqy_Callback(~, ~,~)
function zhy_Callback(~, ~,~)
function yhy_Callback(~, ~,~)
function qianpian_Callback(~, ~,~)
function houpian_Callback(~, ~,~)
function zuopian_Callback(~, ~,~)
function buchang_Callback(~,~,~)

% --- Executes on button press in init.                           % 初始化
function init_Callback(~,~, handles)
% hObject    handle to init (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%% 定义全局变量
global long;% 车长
global width;% 车宽
global qianxuan;% 前悬
global houxuan;% 后悬
global lunjin;% 车轮半径
global fai;% 初始偏角
global x0; % 初始x坐标
global y0; % 初始y坐标
global x6;% 车库左前角横坐标
global y6;% 车库左前角纵坐标
global x7;% 车库右前角横坐标
global y7;% 车库右前角纵坐标
global x8;% 车库右后角横坐标
global y8;% 车库右后角纵坐标
global x9;% 车库左后角横坐标
global y9;% 车库左后角纵坐标
global hp;% 后偏距
global qp;% 前偏距
global zp;% 左偏距
global ds;% 仿真步长
global r;% 车辆的后轴中心点最小转弯半径
global xd;% 终点横坐标
global yd;% 终点纵坐标

axis([0,11,0,12]);
axis manual;
hold on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%参数集，这里存放的为车辆与车位已经仿真所需的主要参数

%手动输入参数集

long=str2double(get(handles.chechang,'string'));
width=str2double(get(handles.chekuan,'string'));
qianxuan=str2double(get(handles.qianxuan,'string'));
houxuan=str2double(get(handles.houxuan,'string'));
lunjin=str2double(get(handles.banjing,'string'));
fai=str2double(get(handles.pianjiao,'string'));
x0=str2double(get(handles.cx,'string'));
y0=str2double(get(handles.cy,'string'));

x6=str2double(get(handles.zqx,'string'));
y6=str2double(get(handles.zqy,'string'));
x7=str2double(get(handles.yqx,'string'));
y7=str2double(get(handles.yqy,'string'));
x9=str2double(get(handles.zhx,'string'));
y9=str2double(get(handles.zhy,'string'));
x8=str2double(get(handles.yhx,'string'));
y8=str2double(get(handles.yhy,'string'));
hp=str2double(get(handles.houpian,'string'));
qp=str2double(get(handles.qianpian,'string'));
zp=str2double(get(handles.zuopian,'string'));

ds=str2double(get(handles.buchang,'string'));

if(fai>0)
    set(handles.log,'string',char(get(handles.log,'string'),'初始偏角输入不正确，请重新输入'));
   return;
end

%自动生成参数集
r=(long-qianxuan-houxuan)/abs(tan(fai));% 车辆的后轴中心点转弯半径
xd=(x8+x9)/2;
yd=(y8+y9)/2+3*houxuan;
plot(xd,yd,'bo');                                %画终点坐标


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%根据车位的四个端点画出车位的轮廓
  
plot([x6,x7],[y6,y7],'-k');
plot([x7,x8],[y7,y8],'-k');
plot([x8,x9],[y8,y9],'-k');

set(handles.log,'string',char(get(handles.log,'string'),'初始化成功'));

% --- Executes on button press in simwithline.                    %画轨迹核心代码
function simwithline_Callback(~,~, handles) %#ok<*DEFNU>
% hObject    handle to simwithline (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%% 调用全局变量
global long;% 车长
global width;% 车宽
global qianxuan;% 前悬
global houxuan;% 后悬
global lunjin;% 车轮半径
global fai;% 初始偏角
global x0; % 初始x坐标
global y0; % 初始y坐标
global x6;% 车库左前角横坐标
global y6;% 车库左前角纵坐标
global x7;% 车库右前角横坐标
global y7;% 车库右前角纵坐标
global x8;% 车库右后角横坐标
global y8;% 车库右后角纵坐标
global x9;% 车库左后角横坐标
global y9;% 车库左后角纵坐标
global ds;% 仿真步长
global r;% 车辆的后轴中心点最小转弯半径
global xd;% 终点横坐标
global yd;% 终点纵坐标

global w1;% 后轴中心横坐标
global w2;% 后轴中心纵坐标

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ys=inf;
yt=inf;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if(fai>0)
    set(handles.log,'string',char(get(handles.log,'string'),'初始偏角输入不正确，请重新输入'));
   return;
end


%画轨迹,求t1,t2

plot(x0,y0,'bo');
w1=x0;
w2=y0;

m1=-(xd-x0-r)^2-3*r^2-(yd-y0)^2;
m2=4*r*(xd-x0-r);
m3=4*r*(yd-y0);
t1=-asin(m1/(sqrt(m2^2+m3^2)))+asin(m2/(sqrt(m2^2+m3^2)));
m4=yd-y0+2*r*sin(t1);
m5=asin(m4/r);
t2=t1-m5;

x1=x0+r;
y1=y0;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\
%约束空间生成
if((sqrt((x0-xd+r)^2+(y0-yd)^2)-3*r)>0)
    set(handles.log,'string',char(get(handles.log,'string'),'距离过远，最小半径泊车方法无法泊车'));
   return;
end
if((t1-t2)+(pi/8)<0 || (t1-t2)-(pi/8)>0)
    set(handles.log,'string',char(get(handles.log,'string'),'终点车身偏角过大，最小半径泊车方法无法泊车'));
    return;
end

%第一阶段轨迹
x1=x0+r;
y1=y0;
fai1=fai;
for i=pi:ds:(pi+t1)
     x=x1+r*cos(i);
     y=y1+r*sin(i);
     
     theta=i-(pi/2);%theta0为起始点车身偏角
     
     jiao1=atan((width/2)/(long-houxuan));
     jiao2=jiao1;
     jiao3=atan((width/2)/houxuan);
     jiao4=jiao3;
     jiao1=theta-jiao1;
     jiao2=theta+jiao2;
     jiao3=theta+pi-jiao3;
     jiao4=theta+pi+jiao4;
     
     r1=sqrt((width/2)^2+(long-houxuan)^2);%以下描述车身的四个端点
     r2=sqrt((width/2)^2+houxuan^2);
     youqianx=x+r1*cos(jiao1);
     youqiany=y+r1*sin(jiao1);
     
     zuoqianx=x+r1*cos(jiao2);
     zuoqiany=y+r1*sin(jiao2);
     
     zuohoux=x+r2*cos(jiao3);
     zuohouy=y+r2*sin(jiao3);
     
     youhoux=x+r2*cos(jiao4);
     youhouy=y+r2*sin(jiao4);
     
     plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
     plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
     plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
     plot([youhoux,youqianx],[youhouy,youqiany],'-r');
         
     jiao5=atan((width/2)/(long-qianxuan-houxuan));%以下描写车的四个轮子
     jiao6=jiao5;
     jiao5=theta-jiao5;
     jiao6=theta+jiao6;
     jiao7=theta+(pi/2);
     jiao8=theta-(pi/2);
     
     jiao9=theta+fai1;
     jiaoa=theta;
     
     r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
     r4=width/2;
     
     yqianlunzx=x+r3*cos(jiao5);
     yqianlunzy=y+r3*sin(jiao5);
     yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
     yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
     yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
     yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
     
     
     zqianlunzx=x+r3*cos(jiao6);
     zqianlunzy=y+r3*sin(jiao6);
     zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
     zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
     zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
     zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
     
     
     zhoulunzx=x+r4*cos(jiao7);
     zhoulunzy=y+r4*sin(jiao7);
     zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
     zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
     zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
     zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
     
     
     yhoulunzx=x+r4*cos(jiao8);
     yhoulunzy=y+r4*sin(jiao8);
     yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
     yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
     yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
     yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
     
     plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
     plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
     plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
     plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
     w1=[w1,(zhoulunzx+yhoulunzx)/2]; 
     w2=[w2,(zhoulunzy+yhoulunzy)/2]; 
     %在此添加判决函数，判断是否第一阶段会碰到障碍物
     if(yhoulunzx-x6>=0 && yhoulunzy-y6>=0)
        set(handles.log,'string',char(get(handles.log,'string'),'第一阶段碰障，最小半径泊车方法无法泊车'));
         return;
     end
     
     pause(0.01);
    
end

%第二阶段轨迹
x2=x1+2*r*cos(pi+t1);
y2=y1+2*r*sin(pi+t1);
fai2=-fai;      
for i=t1:-ds:(t1-t2)
    x=x2+r*cos(i);
    y=y2+r*sin(i);
    theta=(pi/2)+i;
     if(theta-(pi/2)<=0)
         xs=x;
         ys=y;
         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
         %终点偏角为负，因此下面一段为矫正让其直行
         for j=ys:-2.5*ds:yd                                 
             x=xs;
             y=j;
             theta=pi/2;%theta0为起始点车身偏角
     
             jiao1=atan((width/2)/(long-houxuan));
             jiao2=jiao1;
             jiao3=atan((width/2)/houxuan);
             jiao4=jiao3;
             jiao1=theta-jiao1;
             jiao2=theta+jiao2;
             jiao3=theta+pi-jiao3;
             jiao4=theta+pi+jiao4;
     
             r1=sqrt((width/2)^2+(long-houxuan)^2);%以下描述车身的四个端点
             r2=sqrt((width/2)^2+houxuan^2);
             youqianx=x+r1*cos(jiao1);
             youqiany=y+r1*sin(jiao1);
     
             zuoqianx=x+r1*cos(jiao2);
             zuoqiany=y+r1*sin(jiao2);
     
             zuohoux=x+r2*cos(jiao3);
             zuohouy=y+r2*sin(jiao3);
     
             youhoux=x+r2*cos(jiao4);
             youhouy=y+r2*sin(jiao4);
     
            plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
            plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
            plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
            plot([youhoux,youqianx],[youhouy,youqiany],'-r');
      
     
            jiao5=atan((width/2)/(long-qianxuan-houxuan));%以下描写车的四个轮子
            jiao6=jiao5;
            jiao5=theta-jiao5;
            jiao6=theta+jiao6;
            jiao7=theta+(pi/2);
            jiao8=theta-(pi/2);
     
            jiao9=theta;
            jiaoa=theta;
     
            r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
            r4=width/2;
     
            yqianlunzx=x+r3*cos(jiao5);
            yqianlunzy=y+r3*sin(jiao5);
            yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
            yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
            yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
            yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
            
     
           zqianlunzx=x+r3*cos(jiao6);
           zqianlunzy=y+r3*sin(jiao6);
           zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
           zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
           zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
           zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
           
     
           zhoulunzx=x+r4*cos(jiao7);
           zhoulunzy=y+r4*sin(jiao7);
           zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
           zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
           zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
           zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
           
     
           yhoulunzx=x+r4*cos(jiao8);
           yhoulunzy=y+r4*sin(jiao8);
           yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
           yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
           yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
           yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
           
           plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
           plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
           plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
           plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
           
           %pause(0.1);
     
         end
         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
         break;
     end
  
    jiao1=atan((width/2)/(long-houxuan));
    jiao2=jiao1;
    jiao3=atan((width/2)/houxuan);
    jiao4=jiao3;
    jiao1=theta-jiao1;
    jiao2=theta+jiao2;
    jiao3=theta+pi-jiao3;
    jiao4=theta+pi+jiao4;
    
    r1=sqrt((width/2)^2+(long-houxuan)^2);%以下描述车身的四个端点
    r2=sqrt((width/2)^2+houxuan^2);
    youqianx=x+r1*cos(jiao1);
    youqiany=y+r1*sin(jiao1);
   
    %在此添加判决函数，判断是否第二阶段会碰到障碍物
     if(youqianx-x6>=0 && youqiany-y6>=0)
        set(handles.log,'string',char(get(handles.log,'string'),'第二阶段碰障，最小半径泊车方法无法泊车'));
        return;
     end
   
    zuoqianx=x+r1*cos(jiao2);
    zuoqiany=y+r1*sin(jiao2);
    
    zuohoux=x+r2*cos(jiao3);
    zuohouy=y+r2*sin(jiao3);
    
     %在此添加判决函数，判断是否第二阶段会碰到车位后侧
     if(zuohoux-x9>=0 && zuohouy-y9<=0)
        set(handles.log,'string',char(get(handles.log,'string'),'第二阶段碰到车位后侧，最小半径泊车方法无法泊车'));
        return;
     end
    
    youhoux=x+r2*cos(jiao4);
    youhouy=y+r2*sin(jiao4);
    
     %在此添加判决函数，判断是否第二阶段会碰到车位的右侧
     if(youhoux-x7>=0)
        set(handles.log,'string',char(get(handles.log,'string'),'第二阶段碰到车位的右侧，最小半径泊车方法无法泊车'));
        return;
     end
    
    plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
    plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
    plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
    plot([youhoux,youqianx],[youhouy,youqiany],'-r');
    
    jiao5=atan((width/2)/(long-qianxuan-houxuan));%以下描写车的四个轮子
    jiao6=jiao5;
    jiao5=theta-jiao5;
    jiao6=theta+jiao6;
    jiao7=theta+(pi/2);
    jiao8=theta-(pi/2);
    
    jiao9=theta+fai2;
    jiaoa=theta;
    
    r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
    r4=width/2;
    
    yqianlunzx=x+r3*cos(jiao5);
    yqianlunzy=y+r3*sin(jiao5);
    yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
    yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
    yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
    yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
    
    
    zqianlunzx=x+r3*cos(jiao6);
    zqianlunzy=y+r3*sin(jiao6);
    zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
    zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
    zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
    zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
    
    
    zhoulunzx=x+r4*cos(jiao7);
    zhoulunzy=y+r4*sin(jiao7);
    zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
    zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
    zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
    zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
    
    
    yhoulunzx=x+r4*cos(jiao8);
    yhoulunzy=y+r4*sin(jiao8);
    yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
    yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
    yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
    yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
    
    plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
    plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
    plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
    plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
    w1=[w1,(zhoulunzx+yhoulunzx)/2]; 
    w2=[w2,(zhoulunzy+yhoulunzy)/2];
    pause(0.01) ;
    
end

%第三阶段轨迹，因为当终点时车身如果存在偏角，就需要矫正
  if((t1-t2)>0)
      x3=x2+2*r*cos(t1-t2);
      y3=y2+2*r*sin(t1-t2);
      for i=(pi+t1-t2):-ds:pi
       
     x=x3+r*cos(i);
     y=y3+r*sin(i);
     
     theta=i-(pi/2);%theta0为起始点车身偏角
     
     jiao1=atan((width/2)/(long-houxuan));
     jiao2=jiao1;
     jiao3=atan((width/2)/houxuan);
     jiao4=jiao3;
     jiao1=theta-jiao1;
     jiao2=theta+jiao2;
     jiao3=theta+pi-jiao3;
     jiao4=theta+pi+jiao4;
     
     r1=sqrt((width/2)^2+(long-houxuan)^2);%以下描述车身的四个端点
     r2=sqrt((width/2)^2+houxuan^2);
     youqianx=x+r1*cos(jiao1);
     youqiany=y+r1*sin(jiao1);
     
     %在此添加判决函数，判断是否第三阶段会碰到障碍物
     if(youqianx-x6>=0 && youqiany-y6>=0)
        set(handles.log,'string',char(get(handles.log,'string'),'第三阶段碰障，最小半径泊车方法无法泊车'));
        return;
     end
     
     zuoqianx=x+r1*cos(jiao2);
     zuoqiany=y+r1*sin(jiao2);
     
     zuohoux=x+r2*cos(jiao3);
     zuohouy=y+r2*sin(jiao3);
     
     youhoux=x+r2*cos(jiao4);
     youhouy=y+r2*sin(jiao4);
     
     plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
     plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
     plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
     plot([youhoux,youqianx],[youhouy,youqiany],'-r');
      
     
     jiao5=atan((width/2)/(long-qianxuan-houxuan));%以下描写车的四个轮子
     jiao6=jiao5;
     jiao5=theta-jiao5;
     jiao6=theta+jiao6;
     jiao7=theta+(pi/2);
     jiao8=theta-(pi/2);
     
     jiao9=theta+fai1;
     jiaoa=theta;
     
     r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
     r4=width/2;
     
     yqianlunzx=x+r3*cos(jiao5);
     yqianlunzy=y+r3*sin(jiao5);
     yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
     yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
     yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
     yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
     
     
     zqianlunzx=x+r3*cos(jiao6);
     zqianlunzy=y+r3*sin(jiao6);
     zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
     zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
     zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
     zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
     
     
     zhoulunzx=x+r4*cos(jiao7);
     zhoulunzy=y+r4*sin(jiao7);
     zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
     zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
     zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
     zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
     
     
     yhoulunzx=x+r4*cos(jiao8);
     yhoulunzy=y+r4*sin(jiao8);
     yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
     yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
     yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
     yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
     
     plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
     plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
     plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
     plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
     w1=[w1,(zhoulunzx+yhoulunzx)/2]; 
     w2=[w2,(zhoulunzy+yhoulunzy)/2];
     pause(0.1);
    
     end
       %下面一段程序让其沿直道后退
         xt=x;
         yt=y;
         for j=yt:-2.5*ds:yd                                 
             x=xt;
             y=j;
             theta=pi/2;%theta0为起始点车身偏角
     
             jiao1=atan((width/2)/(long-houxuan));
             jiao2=jiao1;
             jiao3=atan((width/2)/houxuan);
             jiao4=jiao3;
             jiao1=theta-jiao1;
             jiao2=theta+jiao2;
             jiao3=theta+pi-jiao3;
             jiao4=theta+pi+jiao4;
     
             r1=sqrt((width/2)^2+(long-houxuan)^2);%以下描述车身的四个端点
             r2=sqrt((width/2)^2+houxuan^2);
             youqianx=x+r1*cos(jiao1);
             youqiany=y+r1*sin(jiao1);
     
             zuoqianx=x+r1*cos(jiao2);
             zuoqiany=y+r1*sin(jiao2);
     
             zuohoux=x+r2*cos(jiao3);
             zuohouy=y+r2*sin(jiao3);
     
             youhoux=x+r2*cos(jiao4);
             youhouy=y+r2*sin(jiao4);
     
            plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
            plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
            plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
            plot([youhoux,youqianx],[youhouy,youqiany],'-r');
      
     
            jiao5=atan((width/2)/(long-qianxuan-houxuan));%以下描写车的四个轮子
            jiao6=jiao5;
            jiao5=theta-jiao5;
            jiao6=theta+jiao6;
            jiao7=theta+(pi/2);
            jiao8=theta-(pi/2);
     
            jiao9=theta;
            jiaoa=theta;
     
            r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
            r4=width/2;
     
            yqianlunzx=x+r3*cos(jiao5);
            yqianlunzy=y+r3*sin(jiao5);
            yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
            yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
            yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
            yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
            
     
           zqianlunzx=x+r3*cos(jiao6);
           zqianlunzy=y+r3*sin(jiao6);
           zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
           zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
           zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
           zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
           
     
           zhoulunzx=x+r4*cos(jiao7);
           zhoulunzy=y+r4*sin(jiao7);
           zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
           zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
           zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
           zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
           
     
           yhoulunzx=x+r4*cos(jiao8);
           yhoulunzy=y+r4*sin(jiao8);
           yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
           yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
           yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
           yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
           
           plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
           plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
           plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
           plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
           w1=[w1,(zhoulunzx+yhoulunzx)/2]; 
           w2=[w2,(zhoulunzy+yhoulunzy)/2]; 
           pause(0.1);
     
         end
      
  end
    
  %下面一段程序用来显示小车转向策略
    s1=t1*r;
    s2=t2*r;
    s3=(t1-t2)*r;
    s4=yt-yd;
    s5=s1;
    s6=ys-yd;
        if(ys~=inf)
            set(handles.log,'string',char(get(handles.log,'string'),'最小半径泊车方法：','后右转s1=',sprintf('%f',s1),'后左转s5=',sprintf('%f',s5),'后退s6=',sprintf('%f',s6)));
        elseif(yt~=inf)
            set(handles.log,'string',char(get(handles.log,'string'),'最小半径泊车方法：','后右转s1=',sprintf('%f',s1),'后左转s2=',sprintf('%f',s2),'右前转s3=',sprintf('%f',s3),'后退s4=',sprintf('%f',s4)));
        elseif(ys==inf && yt==inf && t1-t2==0)
            set(handles.log,'string',char(get(handles.log,'string'),'最小半径泊车方法：','后右转s1=',sprintf('%f',s1),'后左转s2=',sprintf('%f',s2)));
        end   

% --- Executes on button press in areadisplay.                    % 计算可停车区域
function areadisplay_Callback(~,~,~)
tic;

% hObject    handle to areadisplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global long;% 车长
global width;% 车宽
global houxuan;% 后悬
global x6;% 车库左前角横坐标
global y6;% 车库左前角纵坐标
global x7;% 车库右前角横坐标
global x9;% 车库左后角横坐标
global y9;% 车库左后角纵坐标
global ds;% 仿真步长
global r;% 车辆的后轴中心点最小转弯半径
global xd;% 终点横坐标
global yd;% 终点纵坐标

step=0.05;                  % 步长
xx=(x6-width*5):step:x6;                             % 预设可停车区域的横轴范围
lx=length(xx);
ly=length( y6:step:(y6+2*long) );         % 预设可停车区域的纵轴范围
yy=repmat(y6:step:(y6+2*long),lx,1);       
x0=x6-width*5;
m=1;
while m<=lx
    y0=y6;
    n=1;
    while n<=ly
        m1=-(xd-x0-r)^2-3*r^2-(yd-y0)^2;
        m2=4*r*(xd-x0-r);
        m3=4*r*(yd-y0);
        t1=-asin(m1/(sqrt(m2^2+m3^2)))+asin(m2/(sqrt(m2^2+m3^2)));
        m4=yd-y0+2*r*sin(t1);
        m5=asin(m4/r);
        t2=t1-m5;
        x1=x0+r;
        y1=y0;
        
        if(x0+(width/2)>x6)                                             %判断初始位置偏右
            yy(m,n)=25;
        end
        if((sqrt((x0-xd+r)^2+(y0-yd)^2)-3*r)>0)                         %判断距离过远
            yy(m,n)=25;
        end
        if((t1-t2)+(pi/8)<0 ||(t1-t2)-(pi/8)>0)                         %判断偏角过大
             yy(m,n)=25;
        end    
        
        for i=pi:ds:(pi+t1)
            x=x1+r*cos(i);
            y=y1+r*sin(i);   
            theta=i-(pi/2);%theta为起始点车身偏角          
            jiao8=theta-(pi/2);
            r4=width/2;       
            yhoulunzx=x+r4*cos(jiao8);
            yhoulunzy=y+r4*sin(jiao8);       
            if(yhoulunzx-x6>=0 && yhoulunzy-y6>=0)                     %判断第一阶段碰障
                yy(m,n)=25; 
                break;
            end
        end
        
        x2=x1+2*r*cos(pi+t1);
        y2=y1+2*r*sin(pi+t1); 
        for i=t1:-ds:(t1-t2)
            x=x2+r*cos(i);
            y=y2+r*sin(i);
            theta=(pi/2)+i;
            jiao1=atan((width/2)/(long-houxuan));
            jiao3=atan((width/2)/houxuan);
            jiao4=jiao3;
            jiao1=theta-jiao1;
            jiao3=theta+pi-jiao3;
            jiao4=theta+pi+jiao4;          
            r1=sqrt((width/2)^2+(long-houxuan)^2);
            r2=sqrt((width/2)^2+houxuan^2);
            youqianx=x+r1*cos(jiao1);
            youqiany=y+r1*sin(jiao1);
            if(youqianx-x6>=0 && youqiany-y6>=0)                        %判断第二阶段碰障
                yy(m,n)=25; 
                break;
            end       
            zuohoux=x+r2*cos(jiao3);
            zuohouy=y+r2*sin(jiao3);
            if(zuohoux-x9>=0 && zuohouy-y9<=0)                         %判断第二阶段碰到车位后侧
                yy(m,n)=25;
                break;
            end              
            youhoux=x+r2*cos(jiao4);          
            if(youhoux-x7>=0)                                          %判断第二阶段碰到车位的右侧
                yy(m,n)=25; 
                break;
            end
        end
        y0=y0+step;
        n=n+1;
    end
    x0=x0+step;
    m=m+1;
end
plot(xx,yy,'.b');
save('matlab_area','xx','yy');                        % xx,yy表示可停车区域的坐标集
toc

% --- Executes on button press in center.                        % 显示后轴中心点轨迹
function center_Callback(~,~,~)
% hObject    handle to center (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global w1;
global w2;
plot(w1,w2,'y','LineWidth',5);

% --- Executes on button press in getcoordinate.                 % 仿真传感器的实测参数,再根据实测参数回调仿真小车轨迹坐标
function getcoordinate_Callback(~,~,~)
% hObject    handle to getcoordinate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global hp;% 后偏距
global qp;% 前偏距
global zp;% 左偏距
global x7;
global w1;
global w2;

% 仿真计算超声波和陀螺仪的测量参数
n=length(w1);
k(1) = inf;                     % k表示车尾前向斜率
theta(1) = 0;                   % 小车转角
l1(1) = w2(1);               % 车尾部超声波定位距离
check_1(1) = 2;                 % 判断车尾部超声波与反射板交点, 数组元素1,2,3,4分别表示交于从左到右第1,2,3,4块反射板
l2(1) = w1(1);              % 左侧向超声波定位距离     
check_2(1) = 1;                 % 判断左侧向超声波与反射板交点
l3(1) = inf;                    % 车头部超声波定位距离
check_3(1) = 4;                 % 判断车头部超声波与反射板交点
for p=2:n
    if abs( w1(p)-w1(p-1) )<0.0001                                          %斜率不存在
        theta(p) = 0;
        l1(p) = w2(p);                
        check_1(p) = 2;             
        l2(p) = w1(p);                
        check_2(p) = 1;              
        l3(p) = inf;               
        check_3(p) = 4;             
        continue;
    end    
    if abs( w2(p)-w2(p-1) )<0.0001                                           % 斜率为零
        theta(p) = pi/2;
        l1(p) = x7-w1(p);             % x7表示右侧反射板横坐标
        check_1(p) = 3;
        l2(p) = w2(p);
        check_2(p) = 2;
        l3(p) = w1(p);
        check_3(p) = 1;
        continue;
    end
    
    k(p) = ( w2(p)-w2(p-1) )/( w1(p)-w1(p-1) ); 
    theta(p) =  pi/2+atan( k(p) );
    if k(p)<0
        if x7>=w1(p) + w2(p)*tan(theta(p))                      % 车尾超声波交于第二块板
            l1(p) = w2(p)/cos( theta(p) );
            check_1(p) = 2;
        else
            l1(p) = ( x7-w1(p) )/sin( theta(p) );       % 车尾超声波交于第三块板
            check_1(p) = 3;
        end
        
        if w2(p)>=w1(p)*tan(theta(p))                      % 左侧超声波交于第一块板
            l2(p) = w1(p)/cos( theta(p) );
            check_2(p) = 1;
        else
            l2(p) = w2(p)/sin( theta(p) );           % 左侧超声波交于第二块板
            check_2(p) = 2;
        end
        
        l3(p) = w1(p)/sin( theta(p) );
        check_3(p) = 1;                             % 车头超声波交于第一块板
        continue;
    end
    
    if k(p)>0
        l1(p) = ( x7-w1(p) )/cos( theta(p)-pi/2 );
        check_1(p) = 3;
        if x7-w1(p)-w2(p)*tan( theta(p)-pi/2 )>=0
            l2(p) = w2(p)/cos( theta(p)-pi/2 );
            check_2(p) = 2;
        else
            l2(p) = w1(p)/sin( theta(p)-pi/2 );
            check_2(p) = 3;
        end
        if w1(p)-w2(p)/tan( theta(p)-pi/2 )>=0
            l3(p) = w2(p)/sin( theta(p)-pi/2 );
            check_3(p) = 2;
        else
            l3(p) = w1(p)/cos( theta(p)-pi/2 );
            check_3(p) = 1;
        end        
    end      
end
l1=l1+hp;                                                               % 偏距参数修正
l2=l2+zp;
l3=l3-qp;

% 根据仿真参数计算小车坐标
x(1)=w1(1);
y(1)=w2(1);
l1=l1-hp;                                                               % 偏距参数修正
l2=l2-zp;
l3=l3+qp;
maxl2=find( imregionalmax(l2)==1 );
maxl1=find( imregionalmin( diff(l1,1) )==1 );

if maxl2(1)<5
    maxl2(1)=[];
end
if maxl1(1)<5
    maxl1(1)=[];
end

for i=2:n
    if i<=maxl2(1) || i>=maxl2(end)                                     % 第一,第五阶段
        x(i)=l2(i)*cos(theta(i));
        y(i)=l1(i)*cos(theta(i));
        continue;
    end
    if ( i>maxl2(1) && i<maxl1(1) ) || ( i>l1(2) && i<maxl2(end) )      % 第二,第四阶段
        x(i)=l3(i)*sin(theta(i));
        y(i)=l2(i)*sin(theta(i));
        continue;
    end
    if i>l2(1) && i<l1(2)                                               % 第三阶段
        x(i)=x7-s1(i)*sin(theta(i));
        y(i)=s2(i)*sin(theta(i));
    end
end


save('matlab_coordinate','w1','w2','theta','l1','l2','l3','x','y');   % 输出仿真结果
                                                                 % w1,w2表示小车实际坐标,theta表示偏角,l1,l2,l3表示三个超声波返回的长度,x,y表示计算出的估计坐标

% --- Executes on button press in stopsim.                       % 停止仿真
function stopsim_Callback(~,~,~)
% hObject    handle to stopsim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset;
clear all;

% --- Executes on button press in pushbutton19.                  % 备用
function pushbutton19_Callback(~,~,~)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
