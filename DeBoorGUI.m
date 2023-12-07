function varargout = DeBoorGUI(varargin)
% DEBOORGUI MATLAB code for DeBoorGUI.fig
%      DEBOORGUI, by itself, creates a new DEBOORGUI or raises the existing
%      singleton*.
%
%      H = DEBOORGUI returns the handle to a new DEBOORGUI or the handle to
%      the existing singleton*.
%
%      DEBOORGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEBOORGUI.M with the given input arguments.
%
%      DEBOORGUI('Property','Value',...) creates a new DEBOORGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DeBoorGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DeBoorGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DeBoorGUI

% Last Modified by GUIDE v2.5 15-May-2023 17:55:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DeBoorGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @DeBoorGUI_OutputFcn, ...
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


function DeBoorGUI_OpeningFcn(hObject, eventdata, handles, varargin)

global c;
c = [];

% Choose default command line output for DeBoorGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);



function varargout = DeBoorGUI_OutputFcn(hObject, eventdata, handles) 
global c;
c = [];

varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)




function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global c;
c = [];
cla reset; grid on;



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
buttonString = hObject.String;
handles = guihandles(hObject);
if strcmp(buttonString, 'CURVES')
    handles.pushbutton3.String = 'SURFACES';
    set(handles.uipanel4,'visible','on');
    set(handles.uipanel6,'visible','off');
    set(handles.pushbutton10,'visible','on');
    set(handles.pushbutton11,'visible','on');
    set(handles.pushbutton14,'visible','on');
    
elseif strcmp(buttonString, 'SURFACES')
    handles.pushbutton3.String = 'CURVES';
    set(handles.uipanel6,'visible','on');
    set(handles.uipanel4,'visible','off');
    set(handles.pushbutton10,'visible','off');
    set(handles.pushbutton11,'visible','off');
    set(handles.pushbutton14,'visible','off');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton4_Callback(hObject, eventdata, handles)
global h1;
global t;
global m;
global n;
global knots;
global c;

if isempty(c)
    f = errordlg('No points have been selected', 'Input Error', 'non-modal');
    return
end
set(handles.pushbutton7, 'visible','off');
cla reset; 
hold on; grid on;
axis([0 2 0 2]);
plot(c(:, 1), c(:, 2), 'ro');
plot(c(:, 1), c(:, 2), 'b');

t = get(handles.edit9, 'string');
t = str2double(t);
m = get(handles.edit10, 'string');
m = str2double(m);

n = length(c) - m + 1;
lowerBound = get(handles.edit13, 'string');
lowerBound = str2double(lowerBound);
upperBound = get(handles.edit14, 'string');
upperBound = str2double(upperBound);
if isnan(t) 
    f = errordlg('t value is missing', 'Input Error', 'non-modal');
    return
end
if t>upperBound || t<lowerBound
    f = errordlg(cat(5, 'Must be assigned a value to t in the interval [', lowerBound, ', ', upperBound, ']'), 'Input Error', 'non-modal');
    return
end
if m > length(c) - 1 
    f = errordlg('The Degree of the curve must be lower than the number of points', 'Input Error', 'non-modal');
    return
end
knots = linspace(lowerBound, upperBound, n);
%knots = linspace(min(c(:, 1)), max(c(:, 1)), n);
leftVector = linspace(lowerBound - m, lowerBound - 1, m);
rightVector = linspace(upperBound + 1, upperBound + m, m);
rep = ones(1, length(knots));
rep(1) = m;
rep(end) = m;
knots = repelem(knots, rep);
%knots = [leftVector knots rightVector];
output = deBoor(t, knots, c, m);
set(handles.edit7, 'string', output(1));
set(handles.edit8, 'string', output(2));
pause
D = BSpline(c, 'order', m+1);
h1 = plot(D(:,1), D(:,2), '-r');

set(handles.pushbutton7,'visible','on');
set(handles.pushbutton10,'visible','on');
set(handles.pushbutton11,'visible','on');


function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
global h1;
buttonString = hObject.String;
handles = guihandles(hObject);
if strcmp(buttonString, 'DRAW CURVE')
    handles.pushbutton7.String = 'REMOVE CURVE';
    set(h1,'Visible','on')
    
elseif strcmp(buttonString, 'REMOVE CURVE')
    handles.pushbutton7.String = 'DRAW CURVE';
    set(h1,'Visible','off')
    
end



% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)

global h1;
global t;
global m;
global n;
global knots;
global c;
gca.YLimMode='manual';
axis([0 2 0 2]);
new_point = ginput(1);
set(handles.pushbutton7,'visible','off');
c = [c; new_point];
cla reset;
hold on; grid on;
gca.YLimMode='manual';
axis([0 2 0 2]);
plot(c(:, 1), c(:, 2), 'ro');
plot(c(:, 1), c(:, 2), 'b');

function pushbutton6_Callback(hObject, eventdata, handles)
global h2;
global u;
global v;
global m;
global n;
global num_points;
global knots;
set(handles.pushbutton9, 'visible','off');
u = get(handles.edit21, 'string');
u = str2double(u);
v = get(handles.edit27, 'string');
v = str2double(v);
m = get(handles.edit22, 'string');
m = str2double(m);
num_points = get(handles.edit24, 'string');
num_points = str2double(num_points);
n = get(handles.edit28, 'string');
n = str2double(n);
lowerBound = get(handles.edit25, 'string');
lowerBound = str2double(lowerBound);
upperBound = get(handles.edit26, 'string');
upperBound = str2double(upperBound);
if isnan(u) 
    f = errordlg('u value is missing', 'Input Error', 'non-modal');
    return
end
if u>upperBound || u<lowerBound
    f = errordlg(cat(5, 'Must be assigned a value to u in the interval [', lowerBound, ', ', upperBound, ']'), 'Input Error', 'non-modal');
    return
end
if isnan(v) 
    f = errordlg('v value is missing', 'Input Error', 'non-modal');
    return
end
if v>upperBound || v<lowerBound
    f = errordlg(cat(5, 'Must be assigned a value to v in the interval [', lowerBound, ', ', upperBound, ']'), 'Input Error', 'non-modal');
    return
end
knots = linspace(lowerBound, upperBound, n);
rep = ones(1, length(knots));
rep(1) = m;
rep(end) = m;
knots = repelem(knots, rep);
x = linspace(0, 1, num_points);
y = linspace(0, 1, num_points);
[Px, Py] = meshgrid(x, y);
Pz = rand(num_points);
cla reset;
hold on; grid on;
xyz = [Px Py Pz];
xyz = reshape(xyz, num_points, num_points, 3);
plot3(xyz(:, :, 1),xyz(:, :, 2), xyz(:, :, 3), 'ko'); 
pause
surf(Px, Py, Pz, 'FaceAlpha', 0.3, 'facecolor', 'w');
pause
output = deBoorSurface(u, v, knots, xyz, m);
set(handles.edit7, 'string', output(1));
set(handles.edit8, 'string', output(2));
pause
h2 = surf(xyz(:, :, 1), xyz(:, :, 2), xyz(:, :, 3));
set(handles.pushbutton9,'visible','on');



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
global h1;
global t;
global m;
global n;
global knots;
global c;
d = 0.04;
rmv = ginput(1);
set(handles.pushbutton7,'visible','off');
rmved = 0;
for i=1:length(c)
    
    if rmv(1) >= c(i, 1)-d && rmv(2) >= c(i, 2)-d && rmv(1) <= c(i, 1)+d && rmv(2) <= c(i, 2)+d
        c(i, :) = [];
        rmved = 1;
        break
    end
end
if rmved == 0
    plot(rmv(1), rmv(2), 'gro');
    disp("No points have been selected, try centering the cursor closest to the point you want to delete")
end
cla reset;
cla reset;
hold on; grid on;
gca.YLimMode='manual';
axis([0 2 0 2]);
plot(c(:, 1), c(:, 2), 'ro');
plot(c(:, 1), c(:, 2), 'b');


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
global c;
if length(c(:)) == 0
    c = [];
end
num_points = get(handles.edit12, 'string');
num_points = str2double(num_points);
if isnan(num_points)
    f = errordlg('Enter the number of points you want', 'Input Error', 'non-modal');
    return
end
gca.YLimMode='manual';
axis([0 2 0 2])
for i=1:num_points
    new_point = ginput(1); 
    c = [c; new_point];
    plot(c(:, 1), c(:, 2), 'ro');
    plot(c(:, 1), c(:, 2), 'b');
end
cla reset;
hold on; grid on;
gca.YLimMode='manual';
axis([0 2 0 2]);
plot(c(:, 1), c(:, 2), 'ro');
plot(c(:, 1), c(:, 2), 'b');


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)

global h1;
global t;
global m;
global n;
global knots;
global c;
d = 0.04;
rmv = ginput(1);
set(handles.pushbutton7,'visible','off');
rmved = 0;
for i=1:length(c)
    
    if rmv(1) >= c(i, 1)-d && rmv(2) >= c(i, 2)-d && rmv(1) <= c(i, 1)+d && rmv(2) <= c(i, 2)+d
        c(i, :) = ginput(1);
        rmved = 1;
        break
    end
end
if rmved == 0
    plot(rmv(1), rmv(2), 'gro');
    disp("No points have been selected, try centering the cursor closest to the point you want to delete")
end
cla reset;
hold on; grid on;
gca.YLimMode='manual';
axis([0 2 0 2]);
plot(c(:, 1), c(:, 2), 'ro');
plot(c(:, 1), c(:, 2), 'b');



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double


% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
