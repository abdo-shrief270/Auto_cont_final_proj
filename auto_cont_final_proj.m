function varargout = auto_cont_final_proj(varargin)
% AUTO_CONT_FINAL_PROJ MATLAB code for auto_cont_final_proj.fig
%      AUTO_CONT_FINAL_PROJ, by itself, creates a new AUTO_CONT_FINAL_PROJ or raises the existing
%      singleton*.
%
%      H = AUTO_CONT_FINAL_PROJ returns the handle to a new AUTO_CONT_FINAL_PROJ or the handle to
%      the existing singleton*.
%
%      AUTO_CONT_FINAL_PROJ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AUTO_CONT_FINAL_PROJ.M with the given input arguments.
%
%      AUTO_CONT_FINAL_PROJ('Property','Value',...) creates a new AUTO_CONT_FINAL_PROJ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before auto_cont_final_proj_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to auto_cont_final_proj_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help auto_cont_final_proj

% Last Modified by GUIDE v2.5 27-Dec-2023 00:08:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @auto_cont_final_proj_OpeningFcn, ...
                   'gui_OutputFcn',  @auto_cont_final_proj_OutputFcn, ...
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


% --- Executes just before auto_cont_final_proj is made visible.
function auto_cont_final_proj_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to auto_cont_final_proj (see VARARGIN)

% Choose default command line output for auto_cont_final_proj
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes auto_cont_final_proj wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = auto_cont_final_proj_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radio_time.
function radio_time_Callback(hObject, eventdata, handles)
% hObject    handle to radio_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radio_time


% --- Executes on button press in radio_s.
function radio_s_Callback(hObject, eventdata, handles)
% hObject    handle to radio_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radio_s


% --- Executes on button press in radio_nd.
function radio_nd_Callback(hObject, eventdata, handles)
% hObject    handle to radio_nd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radio_nd



function edit_gt_Callback(hObject, eventdata, handles)
% hObject    handle to edit_gt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_gt as text
%        str2double(get(hObject,'String')) returns contents of edit_gt as a double


% --- Executes during object creation, after setting all properties.
function edit_gt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_gt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_gs_Callback(hObject, eventdata, handles)
% hObject    handle to edit_gs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_gs as text
%        str2double(get(hObject,'String')) returns contents of edit_gs as a double


% --- Executes during object creation, after setting all properties.
function edit_gs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_gs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_num_Callback(hObject, eventdata, handles)
% hObject    handle to edit_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_num as text
%        str2double(get(hObject,'String')) returns contents of edit_num as a double


% --- Executes during object creation, after setting all properties.
function edit_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_den_Callback(hObject, eventdata, handles)
% hObject    handle to edit_den (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_den as text
%        str2double(get(hObject,'String')) returns contents of edit_den as a double


% --- Executes during object creation, after setting all properties.
function edit_den_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_den (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit_kp_Callback(hObject, eventdata, handles)
% hObject    handle to edit_kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_kp as text
%        str2double(get(hObject,'String')) returns contents of edit_kp as a double


% --- Executes during object creation, after setting all properties.
function edit_kp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_kv_Callback(hObject, eventdata, handles)
% hObject    handle to edit_kv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_kv as text
%        str2double(get(hObject,'String')) returns contents of edit_kv as a double


% --- Executes during object creation, after setting all properties.
function edit_kv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_kv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_ka_Callback(hObject, eventdata, handles)
% hObject    handle to edit_ka (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_ka as text
%        str2double(get(hObject,'String')) returns contents of edit_ka as a double


% --- Executes during object creation, after setting all properties.
function edit_ka_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_ka (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_esskp_Callback(hObject, eventdata, handles)
% hObject    handle to edit_esskp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_esskp as text
%        str2double(get(hObject,'String')) returns contents of edit_esskp as a double


% --- Executes during object creation, after setting all properties.
function edit_esskp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_esskp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_esskv_Callback(hObject, eventdata, handles)
% hObject    handle to edit_esskv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_esskv as text
%        str2double(get(hObject,'String')) returns contents of edit_esskv as a double


% --- Executes during object creation, after setting all properties.
function edit_esskv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_esskv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_esska_Callback(hObject, eventdata, handles)
% hObject    handle to edit_esska (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_esska as text
%        str2double(get(hObject,'String')) returns contents of edit_esska as a double

function axes_time_CreateFcn(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.

function axes_time_DeleteFcn(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.


function edit_esska_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_esska (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in push_clear.
function push_clear_Callback(hObject, eventdata, handles)
clc

set(handles.kp_text,'string','0');                              
set(handles.kv_text,'string','0');                        
set(handles.ka_text,'string','0');                        
set(handles.ess1_text,'string','0');                   
set(handles.ess2_text,'string','0');                    
set(handles.ess3_text,'string','0');                     

set(handles.edit_num, 'string','');
set(handles.edit_den, 'string',''); 
set(handles.gs_fun_edit, 'string',''); 

cla(handles.axes_time)
cla(handles.axes_freq)
cla(handles.axes_pzmap)
cla(handles.axes_locus)
grid off;

function push_default_Callback(hObject, eventdata, handles)
numden_Callback(hObject, eventdata, handles);
push_clear_Callback(hObject, eventdata, handles);
num=[1 0];
den=[1 1];
set(handles.edit_num,'string',num2str(num));
set(handles.edit_den,'string',num2str(den));

% --- Executes on button press in push_submit.
function push_submit_Callback(hObject, eventdata, handles)
s=tf('s');
if handles.numden.Value ==1
    num= str2num(get(handles.edit_num, 'string'));
    den= str2num(get(handles.edit_den, 'string')); 
    g=tf(num,den);
else
    g=tf(eval(get(handles.gs_fun_edit,'string')));
end
 kp=dcgain(g);
 esskp=1/(1+kp);

 kv=dcgain(s*g);
 esskv=1/kv;

 ka=dcgain(s^2*g);
 esska=1/ka;

 set(handles.kp_text,'string',num2str(kp));                              %to show the result of kp
 set(handles.kv_text,'string',num2str(kv));                              %to show the result of kv
 set(handles.ka_text,'string',num2str(ka));                              %to show the result of ka

set(handles.ess1_text,'string',num2str(esskp));                        %to show the result of ess of kp
set(handles.ess2_text,'string',num2str(esskv));                        %to show the result of ess of kv
set(handles.ess3_text,'string',num2str(esska));                        %to show the result of ess of ka
%% Plotting

%% Time Response
axes(handles.axes_time);
step(g);
grid on;

%% Frequency Response
axes(handles.axes_freq);
bode(g);
grid on;

%% Pole-Zero Map
axes(handles.axes_pzmap);
pzmap(g);
grid on;

%% Root Locus
axes(handles.axes_locus);
rlocus(g);
grid on;


% --- Executes on button press in conv_btn_lap.
function conv_btn_lap_Callback(hObject, eventdata, handles)
syms t s
s=tf('s');
gt=str2sym(get(handles.edit_gt,'string'));
gs=str2sym(get(handles.edit_gs,'string'));

if isempty(gt)
    gt=ilaplace(gs);
    set(handles.edit_gt,'string',string(gt));
else
    gs=laplace(gt);
    set(handles.edit_gs,'string',string(gs));
end


% --- Executes on button press in def_btn_lap.
function def_btn_lap_Callback(hObject, eventdata, handles)
set(handles.edit_gt,'string','t');
set(handles.edit_gs,'string','');


% --- Executes on button press in clr_btn_lap.
function clr_btn_lap_Callback(hObject, eventdata, handles)
set(handles.edit_gt,'string','');
set(handles.edit_gs,'string','');



function gs_fun_edit_Callback(hObject, eventdata, handles)
% hObject    handle to gs_fun_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gs_fun_edit as text
%        str2double(get(hObject,'String')) returns contents of gs_fun_edit as a double


% --- Executes during object creation, after setting all properties.
function gs_fun_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gs_fun_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in numden.
function numden_Callback(hObject, eventdata, handles)

set(handles.numden,'Value',1);
set(handles.num_lab,'enable','on');
set(handles.den_lab,'enable','on');
set(handles.edit_num,'enable','on');
set(handles.edit_den,'enable','on');
set(handles.gs_fun_edit,'enable','off');
set(handles.gs_lab,'enable','off');


% --- Executes on button press in fun.
function fun_Callback(hObject, eventdata, handles)

set(handles.fun,'Value',1);
set(handles.num_lab,'enable','off');
set(handles.den_lab,'enable','off');
set(handles.edit_num,'enable','off');
set(handles.edit_den,'enable','off');
set(handles.gs_fun_edit,'enable','on');
set(handles.gs_lab,'enable','on');


% --- Executes on button press in pid_diff_btn.
function pid_diff_btn_Callback(hObject, eventdata, handles)
PID_diff