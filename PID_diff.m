function varargout = PID_diff(varargin)
% PID_DIFF MATLAB code for PID_diff.fig
%      PID_DIFF, by itself, creates a new PID_DIFF or raises the existing
%      singleton*.
%
%      H = PID_DIFF returns the handle to a new PID_DIFF or the handle to
%      the existing singleton*.
%
%      PID_DIFF('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PID_DIFF.M with the given input arguments.
%
%      PID_DIFF('Property','Value',...) creates a new PID_DIFF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PID_diff_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PID_diff_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PID_diff

% Last Modified by GUIDE v2.5 26-Dec-2023 23:31:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PID_diff_OpeningFcn, ...
                   'gui_OutputFcn',  @PID_diff_OutputFcn, ...
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


% --- Executes just before PID_diff is made visible.
function PID_diff_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PID_diff (see VARARGIN)

% Choose default command line output for PID_diff
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

def_btn_Callback(hObject, eventdata, handles);
sub_btn_Callback(hObject, eventdata, handles);


% --- Outputs from this function are returned to the command line.
function varargout = PID_diff_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function kp_text_Callback(hObject, eventdata, handles)
% hObject    handle to kp_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kp_text as text
%        str2double(get(hObject,'String')) returns contents of kp_text as a double


% --- Executes during object creation, after setting all properties.
function kp_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kp_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ki_text_Callback(hObject, eventdata, handles)
% hObject    handle to ki_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ki_text as text
%        str2double(get(hObject,'String')) returns contents of ki_text as a double


% --- Executes during object creation, after setting all properties.
function ki_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ki_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kd_text_Callback(hObject, eventdata, handles)
% hObject    handle to kd_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kd_text as text
%        str2double(get(hObject,'String')) returns contents of kd_text as a double


% --- Executes during object creation, after setting all properties.
function kd_text_CreateFcn(hObject, ~, handles)
% hObject    handle to kd_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function noise_amp_text_Callback(hObject, eventdata, handles)
% hObject    handle to noise_amp_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of noise_amp_text as text
%        str2double(get(hObject,'String')) returns contents of noise_amp_text as a double


% --- Executes during object creation, after setting all properties.
function noise_amp_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noise_amp_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function noise_freq_text_Callback(hObject, eventdata, handles)
% hObject    handle to noise_freq_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of noise_freq_text as text
%        str2double(get(hObject,'String')) returns contents of noise_freq_text as a double


% --- Executes during object creation, after setting all properties.
function noise_freq_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noise_freq_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dis_in_amp_text_Callback(hObject, eventdata, handles)
% hObject    handle to dis_in_amp_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dis_in_amp_text as text
%        str2double(get(hObject,'String')) returns contents of dis_in_amp_text as a double


% --- Executes during object creation, after setting all properties.
function dis_in_amp_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dis_in_amp_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dis_in_freq_text_Callback(hObject, eventdata, handles)
% hObject    handle to dis_in_freq_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dis_in_freq_text as text
%        str2double(get(hObject,'String')) returns contents of dis_in_freq_text as a double


% --- Executes during object creation, after setting all properties.
function dis_in_freq_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dis_in_freq_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in clr_btn.
function clr_btn_Callback(hObject, eventdata, handles)
set(handles.kp_text,'string','');
set(handles.ki_text,'string','');
set(handles.kd_text,'string','');
set(handles.st_text,'string','');

set(handles.num_p_text,'string','');
set(handles.den_p_text,'string','');
set(handles.noise_amp_text,'string','0');
set(handles.noise_freq_text,'string','0');
set(handles.noise_var_text,'string','0');

set(handles.dis_in_amp_text,'string','0');
set(handles.dis_in_freq_text,'string','0');
set(handles.dis_out_amp_text,'string','0');
set(handles.dis_out_freq_text,'string','0');


% --- Executes on button press in def_btn.
function def_btn_Callback(hObject, eventdata, handles)
cla(handles.model_1_axes);
cla(handles.model_2_axes);
cla(handles.model_3_axes);
cla(handles.model_4_axes);
cla(handles.model_all_axes);

set(handles.num_p_text,'string',num2str([0 0 2 15]));
set(handles.den_p_text,'string',num2str([1 9 23 15]));
set(handles.kp_text,'string','10');
set(handles.ki_text,'string','3');
set(handles.kd_text,'string','5');
set(handles.st_text,'string','100');

set(handles.noise_amp_text,'string','0.2');
set(handles.noise_freq_text,'string','200');
set(handles.noise_var_text,'string','0.1');

set(handles.dis_in_amp_text,'string','0');
set(handles.dis_in_freq_text,'string','0.01');
set(handles.dis_out_amp_text,'string','0');
set(handles.dis_out_freq_text,'string','0.05');


% --- Executes on button press in sub_btn.
function sub_btn_Callback(hObject, eventdata, handles)

NUM_P=str2num(get(handles.num_p_text,'string'));
DEN_P=str2num(get(handles.den_p_text,'string'));
kp=str2num(get(handles.kp_text,'string'));
ki=str2num(get(handles.ki_text,'string'));
kd=str2num(get(handles.kd_text,'string'));
st=str2num(get(handles.st_text,'string'));

noise_amp=str2num(get(handles.noise_amp_text,'string'));
noise_freq=str2num(get(handles.noise_freq_text,'string'));
noise_var=str2num(get(handles.noise_var_text,'string'));

dis_in_amp=str2num(get(handles.dis_in_amp_text,'string'));
dis_in_freq=str2num(get(handles.dis_in_freq_text,'string'));
dis_out_amp=str2num(get(handles.dis_out_amp_text,'string'));
dis_out_freq=str2num(get(handles.dis_out_freq_text,'string'));

assignin('base','NUM_P',NUM_P);
assignin('base','DEN_P',DEN_P);

assignin('base','noise_amp',noise_amp);
assignin('base','noise_freq',noise_freq);
assignin('base','noise_var',noise_var);
assignin('base','dis_in_amp',dis_in_amp);
assignin('base','dis_in_freq',dis_in_freq);
assignin('base','dis_out_amp',dis_out_amp);
assignin('base','dis_out_freq',dis_out_freq);

assignin('base','kp',kp);
assignin('base','ki',ki);
assignin('base','kd',kd);
assignin('base','st',st);

sim('PID.mdl');
plot(handles.model_1_axes,ts1,yt1,ts1,ytp,'linewidth',2);
grid(handles.model_1_axes,'on');
title(handles.model_1_axes,'Step Response Of Model 1');
xlabel(handles.model_1_axes,'Time [sec]');
ylabel(handles.model_1_axes,'Amplitude');
legend(handles.model_1_axes,'Model 1','Planet Response','location','best');

plot(handles.model_2_axes,ts1,yt2,ts1,ytp,'linewidth',2);
grid(handles.model_2_axes,'on');
title(handles.model_2_axes,'Step Response Of Model 2');
xlabel(handles.model_2_axes,'Time [sec]');
ylabel(handles.model_2_axes,'Amplitude');
legend(handles.model_2_axes,'Model 2','Planet Response','location','best');

plot(handles.model_3_axes,ts1,yt3,ts1,ytp,'linewidth',2);
grid(handles.model_3_axes,'on');
title(handles.model_3_axes,'Step Response Of Model 3');
xlabel(handles.model_3_axes,'Time [sec]');
ylabel(handles.model_3_axes,'Amplitude');
legend(handles.model_3_axes,'Model 3','Planet Response','location','best');

plot(handles.model_4_axes,ts1,yt4,ts1,ytp,'linewidth',2);
grid(handles.model_4_axes,'on');
title(handles.model_4_axes,'Step Response Of Model 4');
xlabel(handles.model_4_axes,'Time [sec]');
ylabel(handles.model_4_axes,'Amplitude');
legend(handles.model_4_axes,'Model 4','Planet Response','location','best');

plot(handles.model_all_axes,ts1,yt1,ts1,yt2,ts1,yt3,ts1,yt4,ts1,ytp,'linewidth',2);
grid(handles.model_all_axes,'on');
title(handles.model_all_axes,'Step Response Of All Models');
xlabel(handles.model_all_axes,'Time [sec]');
ylabel(handles.model_all_axes,'Amplitude');
legend(handles.model_all_axes,'Model 1','Model 2','Model 3','Model 4','Planet Response','NumColumns',2,'location','best');

function st_text_Callback(hObject, eventdata, handles)
% hObject    handle to st_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes during object creation, after setting all properties.
function st_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to st_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function model_1_axes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to model_1_axes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: place code in OpeningFcn to populate model_1_axes


% --- Executes on button press in view_all.
function view_all_Callback(hObject, eventdata, handles)
% hObject    handle to view_all (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure(1)
imshow('models.png');


function dis_out_amp_text_Callback(hObject, eventdata, handles)
% hObject    handle to dis_out_amp_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dis_out_amp_text as text
%        str2double(get(hObject,'String')) returns contents of dis_out_amp_text as a double


% --- Executes during object creation, after setting all properties.
function dis_out_amp_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dis_out_amp_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dis_out_freq_text_Callback(hObject, eventdata, handles)
% hObject    handle to dis_out_freq_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dis_out_freq_text as text
%        str2double(get(hObject,'String')) returns contents of dis_out_freq_text as a double


% --- Executes during object creation, after setting all properties.
function dis_out_freq_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dis_out_freq_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function noise_var_text_Callback(hObject, eventdata, handles)
% hObject    handle to noise_var_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of noise_var_text as text
%        str2double(get(hObject,'String')) returns contents of noise_var_text as a double


% --- Executes during object creation, after setting all properties.
function noise_var_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noise_var_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function num_p_text_Callback(hObject, eventdata, handles)
% hObject    handle to num_p_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num_p_text as text
%        str2double(get(hObject,'String')) returns contents of num_p_text as a double


% --- Executes during object creation, after setting all properties.
function num_p_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num_p_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function den_p_text_Callback(hObject, eventdata, handles)
% hObject    handle to den_p_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of den_p_text as text
%        str2double(get(hObject,'String')) returns contents of den_p_text as a double


% --- Executes during object creation, after setting all properties.
function den_p_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to den_p_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
