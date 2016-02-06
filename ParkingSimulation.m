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
function log_CreateFcn(hObject, ~,~)  % ��ʾ����
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end    

% --- Executes on button press in default.                        % ���в�����ΪĬ��ֵ
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

% --- Executes on button press in getstartpoint.                 % �궨��ʼ������
function getstartpoint_Callback(~,~,~)
% hObject    handle to getstartpoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x0; % ��ʼx����
global y0; % ��ʼy����
[x0,y0] = ginput(1);%��ȡ�������

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

% --- Executes on button press in init.                           % ��ʼ��
function init_Callback(~,~, handles)
% hObject    handle to init (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%% ����ȫ�ֱ���
global long;% ����
global width;% ����
global qianxuan;% ǰ��
global houxuan;% ����
global lunjin;% ���ְ뾶
global fai;% ��ʼƫ��
global x0; % ��ʼx����
global y0; % ��ʼy����
global x6;% ������ǰ�Ǻ�����
global y6;% ������ǰ��������
global x7;% ������ǰ�Ǻ�����
global y7;% ������ǰ��������
global x8;% �����Һ�Ǻ�����
global y8;% �����Һ��������
global x9;% �������Ǻ�����
global y9;% ��������������
global hp;% ��ƫ��
global qp;% ǰƫ��
global zp;% ��ƫ��
global ds;% ���沽��
global r;% �����ĺ������ĵ���Сת��뾶
global xd;% �յ������
global yd;% �յ�������

axis([0,11,0,12]);
axis manual;
hold on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�������������ŵ�Ϊ�����복λ�Ѿ������������Ҫ����

%�ֶ����������

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
    set(handles.log,'string',char(get(handles.log,'string'),'��ʼƫ�����벻��ȷ������������'));
   return;
end

%�Զ����ɲ�����
r=(long-qianxuan-houxuan)/abs(tan(fai));% �����ĺ������ĵ�ת��뾶
xd=(x8+x9)/2;
yd=(y8+y9)/2+3*houxuan;
plot(xd,yd,'bo');                                %���յ�����


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%���ݳ�λ���ĸ��˵㻭����λ������
  
plot([x6,x7],[y6,y7],'-k');
plot([x7,x8],[y7,y8],'-k');
plot([x8,x9],[y8,y9],'-k');

set(handles.log,'string',char(get(handles.log,'string'),'��ʼ���ɹ�'));

% --- Executes on button press in simwithline.                    %���켣���Ĵ���
function simwithline_Callback(~,~, handles) %#ok<*DEFNU>
% hObject    handle to simwithline (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%% ����ȫ�ֱ���
global long;% ����
global width;% ����
global qianxuan;% ǰ��
global houxuan;% ����
global lunjin;% ���ְ뾶
global fai;% ��ʼƫ��
global x0; % ��ʼx����
global y0; % ��ʼy����
global x6;% ������ǰ�Ǻ�����
global y6;% ������ǰ��������
global x7;% ������ǰ�Ǻ�����
global y7;% ������ǰ��������
global x8;% �����Һ�Ǻ�����
global y8;% �����Һ��������
global x9;% �������Ǻ�����
global y9;% ��������������
global ds;% ���沽��
global r;% �����ĺ������ĵ���Сת��뾶
global xd;% �յ������
global yd;% �յ�������

global w1;% �������ĺ�����
global w2;% ��������������

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ys=inf;
yt=inf;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if(fai>0)
    set(handles.log,'string',char(get(handles.log,'string'),'��ʼƫ�����벻��ȷ������������'));
   return;
end


%���켣,��t1,t2

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
%Լ���ռ�����
if((sqrt((x0-xd+r)^2+(y0-yd)^2)-3*r)>0)
    set(handles.log,'string',char(get(handles.log,'string'),'�����Զ����С�뾶���������޷�����'));
   return;
end
if((t1-t2)+(pi/8)<0 || (t1-t2)-(pi/8)>0)
    set(handles.log,'string',char(get(handles.log,'string'),'�յ㳵��ƫ�ǹ�����С�뾶���������޷�����'));
    return;
end

%��һ�׶ι켣
x1=x0+r;
y1=y0;
fai1=fai;
for i=pi:ds:(pi+t1)
     x=x1+r*cos(i);
     y=y1+r*sin(i);
     
     theta=i-(pi/2);%theta0Ϊ��ʼ�㳵��ƫ��
     
     jiao1=atan((width/2)/(long-houxuan));
     jiao2=jiao1;
     jiao3=atan((width/2)/houxuan);
     jiao4=jiao3;
     jiao1=theta-jiao1;
     jiao2=theta+jiao2;
     jiao3=theta+pi-jiao3;
     jiao4=theta+pi+jiao4;
     
     r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
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
         
     jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
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
     %�ڴ�����о��������ж��Ƿ��һ�׶λ������ϰ���
     if(yhoulunzx-x6>=0 && yhoulunzy-y6>=0)
        set(handles.log,'string',char(get(handles.log,'string'),'��һ�׶����ϣ���С�뾶���������޷�����'));
         return;
     end
     
     pause(0.01);
    
end

%�ڶ��׶ι켣
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
         %�յ�ƫ��Ϊ�����������һ��Ϊ��������ֱ��
         for j=ys:-2.5*ds:yd                                 
             x=xs;
             y=j;
             theta=pi/2;%theta0Ϊ��ʼ�㳵��ƫ��
     
             jiao1=atan((width/2)/(long-houxuan));
             jiao2=jiao1;
             jiao3=atan((width/2)/houxuan);
             jiao4=jiao3;
             jiao1=theta-jiao1;
             jiao2=theta+jiao2;
             jiao3=theta+pi-jiao3;
             jiao4=theta+pi+jiao4;
     
             r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
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
      
     
            jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
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
    
    r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
    r2=sqrt((width/2)^2+houxuan^2);
    youqianx=x+r1*cos(jiao1);
    youqiany=y+r1*sin(jiao1);
   
    %�ڴ�����о��������ж��Ƿ�ڶ��׶λ������ϰ���
     if(youqianx-x6>=0 && youqiany-y6>=0)
        set(handles.log,'string',char(get(handles.log,'string'),'�ڶ��׶����ϣ���С�뾶���������޷�����'));
        return;
     end
   
    zuoqianx=x+r1*cos(jiao2);
    zuoqiany=y+r1*sin(jiao2);
    
    zuohoux=x+r2*cos(jiao3);
    zuohouy=y+r2*sin(jiao3);
    
     %�ڴ�����о��������ж��Ƿ�ڶ��׶λ�������λ���
     if(zuohoux-x9>=0 && zuohouy-y9<=0)
        set(handles.log,'string',char(get(handles.log,'string'),'�ڶ��׶�������λ��࣬��С�뾶���������޷�����'));
        return;
     end
    
    youhoux=x+r2*cos(jiao4);
    youhouy=y+r2*sin(jiao4);
    
     %�ڴ�����о��������ж��Ƿ�ڶ��׶λ�������λ���Ҳ�
     if(youhoux-x7>=0)
        set(handles.log,'string',char(get(handles.log,'string'),'�ڶ��׶�������λ���Ҳ࣬��С�뾶���������޷�����'));
        return;
     end
    
    plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
    plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
    plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
    plot([youhoux,youqianx],[youhouy,youqiany],'-r');
    
    jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
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

%�����׶ι켣����Ϊ���յ�ʱ�����������ƫ�ǣ�����Ҫ����
  if((t1-t2)>0)
      x3=x2+2*r*cos(t1-t2);
      y3=y2+2*r*sin(t1-t2);
      for i=(pi+t1-t2):-ds:pi
       
     x=x3+r*cos(i);
     y=y3+r*sin(i);
     
     theta=i-(pi/2);%theta0Ϊ��ʼ�㳵��ƫ��
     
     jiao1=atan((width/2)/(long-houxuan));
     jiao2=jiao1;
     jiao3=atan((width/2)/houxuan);
     jiao4=jiao3;
     jiao1=theta-jiao1;
     jiao2=theta+jiao2;
     jiao3=theta+pi-jiao3;
     jiao4=theta+pi+jiao4;
     
     r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
     r2=sqrt((width/2)^2+houxuan^2);
     youqianx=x+r1*cos(jiao1);
     youqiany=y+r1*sin(jiao1);
     
     %�ڴ�����о��������ж��Ƿ�����׶λ������ϰ���
     if(youqianx-x6>=0 && youqiany-y6>=0)
        set(handles.log,'string',char(get(handles.log,'string'),'�����׶����ϣ���С�뾶���������޷�����'));
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
      
     
     jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
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
       %����һ�γ���������ֱ������
         xt=x;
         yt=y;
         for j=yt:-2.5*ds:yd                                 
             x=xt;
             y=j;
             theta=pi/2;%theta0Ϊ��ʼ�㳵��ƫ��
     
             jiao1=atan((width/2)/(long-houxuan));
             jiao2=jiao1;
             jiao3=atan((width/2)/houxuan);
             jiao4=jiao3;
             jiao1=theta-jiao1;
             jiao2=theta+jiao2;
             jiao3=theta+pi-jiao3;
             jiao4=theta+pi+jiao4;
     
             r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
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
      
     
            jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
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
    
  %����һ�γ���������ʾС��ת�����
    s1=t1*r;
    s2=t2*r;
    s3=(t1-t2)*r;
    s4=yt-yd;
    s5=s1;
    s6=ys-yd;
        if(ys~=inf)
            set(handles.log,'string',char(get(handles.log,'string'),'��С�뾶����������','����תs1=',sprintf('%f',s1),'����תs5=',sprintf('%f',s5),'����s6=',sprintf('%f',s6)));
        elseif(yt~=inf)
            set(handles.log,'string',char(get(handles.log,'string'),'��С�뾶����������','����תs1=',sprintf('%f',s1),'����תs2=',sprintf('%f',s2),'��ǰתs3=',sprintf('%f',s3),'����s4=',sprintf('%f',s4)));
        elseif(ys==inf && yt==inf && t1-t2==0)
            set(handles.log,'string',char(get(handles.log,'string'),'��С�뾶����������','����תs1=',sprintf('%f',s1),'����תs2=',sprintf('%f',s2)));
        end   

% --- Executes on button press in areadisplay.                    % �����ͣ������
function areadisplay_Callback(~,~,~)
tic;

% hObject    handle to areadisplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global long;% ����
global width;% ����
global houxuan;% ����
global x6;% ������ǰ�Ǻ�����
global y6;% ������ǰ��������
global x7;% ������ǰ�Ǻ�����
global x9;% �������Ǻ�����
global y9;% ��������������
global ds;% ���沽��
global r;% �����ĺ������ĵ���Сת��뾶
global xd;% �յ������
global yd;% �յ�������

step=0.05;                  % ����
xx=(x6-width*5):step:x6;                             % Ԥ���ͣ������ĺ��᷶Χ
lx=length(xx);
ly=length( y6:step:(y6+2*long) );         % Ԥ���ͣ����������᷶Χ
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
        
        if(x0+(width/2)>x6)                                             %�жϳ�ʼλ��ƫ��
            yy(m,n)=25;
        end
        if((sqrt((x0-xd+r)^2+(y0-yd)^2)-3*r)>0)                         %�жϾ����Զ
            yy(m,n)=25;
        end
        if((t1-t2)+(pi/8)<0 ||(t1-t2)-(pi/8)>0)                         %�ж�ƫ�ǹ���
             yy(m,n)=25;
        end    
        
        for i=pi:ds:(pi+t1)
            x=x1+r*cos(i);
            y=y1+r*sin(i);   
            theta=i-(pi/2);%thetaΪ��ʼ�㳵��ƫ��          
            jiao8=theta-(pi/2);
            r4=width/2;       
            yhoulunzx=x+r4*cos(jiao8);
            yhoulunzy=y+r4*sin(jiao8);       
            if(yhoulunzx-x6>=0 && yhoulunzy-y6>=0)                     %�жϵ�һ�׶�����
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
            if(youqianx-x6>=0 && youqiany-y6>=0)                        %�жϵڶ��׶�����
                yy(m,n)=25; 
                break;
            end       
            zuohoux=x+r2*cos(jiao3);
            zuohouy=y+r2*sin(jiao3);
            if(zuohoux-x9>=0 && zuohouy-y9<=0)                         %�жϵڶ��׶�������λ���
                yy(m,n)=25;
                break;
            end              
            youhoux=x+r2*cos(jiao4);          
            if(youhoux-x7>=0)                                          %�жϵڶ��׶�������λ���Ҳ�
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
save('matlab_area','xx','yy');                        % xx,yy��ʾ��ͣ����������꼯
toc

% --- Executes on button press in center.                        % ��ʾ�������ĵ�켣
function center_Callback(~,~,~)
% hObject    handle to center (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global w1;
global w2;
plot(w1,w2,'y','LineWidth',5);

% --- Executes on button press in getcoordinate.                 % ���洫������ʵ�����,�ٸ���ʵ������ص�����С���켣����
function getcoordinate_Callback(~,~,~)
% hObject    handle to getcoordinate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global hp;% ��ƫ��
global qp;% ǰƫ��
global zp;% ��ƫ��
global x7;
global w1;
global w2;

% ������㳬�����������ǵĲ�������
n=length(w1);
k(1) = inf;                     % k��ʾ��βǰ��б��
theta(1) = 0;                   % С��ת��
l1(1) = w2(1);               % ��β����������λ����
check_1(1) = 2;                 % �жϳ�β���������뷴��彻��, ����Ԫ��1,2,3,4�ֱ��ʾ���ڴ����ҵ�1,2,3,4�鷴���
l2(1) = w1(1);              % �����������λ����     
check_2(1) = 1;                 % �ж�����������뷴��彻��
l3(1) = inf;                    % ��ͷ����������λ����
check_3(1) = 4;                 % �жϳ�ͷ���������뷴��彻��
for p=2:n
    if abs( w1(p)-w1(p-1) )<0.0001                                          %б�ʲ�����
        theta(p) = 0;
        l1(p) = w2(p);                
        check_1(p) = 2;             
        l2(p) = w1(p);                
        check_2(p) = 1;              
        l3(p) = inf;               
        check_3(p) = 4;             
        continue;
    end    
    if abs( w2(p)-w2(p-1) )<0.0001                                           % б��Ϊ��
        theta(p) = pi/2;
        l1(p) = x7-w1(p);             % x7��ʾ�Ҳ෴��������
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
        if x7>=w1(p) + w2(p)*tan(theta(p))                      % ��β���������ڵڶ����
            l1(p) = w2(p)/cos( theta(p) );
            check_1(p) = 2;
        else
            l1(p) = ( x7-w1(p) )/sin( theta(p) );       % ��β���������ڵ������
            check_1(p) = 3;
        end
        
        if w2(p)>=w1(p)*tan(theta(p))                      % ��೬�������ڵ�һ���
            l2(p) = w1(p)/cos( theta(p) );
            check_2(p) = 1;
        else
            l2(p) = w2(p)/sin( theta(p) );           % ��೬�������ڵڶ����
            check_2(p) = 2;
        end
        
        l3(p) = w1(p)/sin( theta(p) );
        check_3(p) = 1;                             % ��ͷ���������ڵ�һ���
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
l1=l1+hp;                                                               % ƫ���������
l2=l2+zp;
l3=l3-qp;

% ���ݷ����������С������
x(1)=w1(1);
y(1)=w2(1);
l1=l1-hp;                                                               % ƫ���������
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
    if i<=maxl2(1) || i>=maxl2(end)                                     % ��һ,����׶�
        x(i)=l2(i)*cos(theta(i));
        y(i)=l1(i)*cos(theta(i));
        continue;
    end
    if ( i>maxl2(1) && i<maxl1(1) ) || ( i>l1(2) && i<maxl2(end) )      % �ڶ�,���Ľ׶�
        x(i)=l3(i)*sin(theta(i));
        y(i)=l2(i)*sin(theta(i));
        continue;
    end
    if i>l2(1) && i<l1(2)                                               % �����׶�
        x(i)=x7-s1(i)*sin(theta(i));
        y(i)=s2(i)*sin(theta(i));
    end
end


save('matlab_coordinate','w1','w2','theta','l1','l2','l3','x','y');   % ���������
                                                                 % w1,w2��ʾС��ʵ������,theta��ʾƫ��,l1,l2,l3��ʾ�������������صĳ���,x,y��ʾ������Ĺ�������

% --- Executes on button press in stopsim.                       % ֹͣ����
function stopsim_Callback(~,~,~)
% hObject    handle to stopsim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset;
clear all;

% --- Executes on button press in pushbutton19.                  % ����
function pushbutton19_Callback(~,~,~)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
