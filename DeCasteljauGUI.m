function varargout = DeCasteljauGUI(varargin)
% DECASTELJAUGUI MATLAB code for DeCasteljauGUI.fig
%      DECASTELJAUGUI, by itself, creates a new DECASTELJAUGUI or raises the existing
%      singleton*.
%
%      H = DECASTELJAUGUI returns the handle to a new DECASTELJAUGUI or the handle to
%      the existing singleton*.
%
%      DECASTELJAUGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DECASTELJAUGUI.M with the given input arguments.
%
%      DECASTELJAUGUI('Property','Value',...) creates a new DECASTELJAUGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DeCasteljauGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DeCasteljauGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DeCasteljauGUI

% Last Modified by GUIDE v2.5 18-Mar-2023 11:35:37

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DeCasteljauGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @DeCasteljauGUI_OutputFcn, ...
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


% --- Executes just before DeCasteljauGUI is made visible.
function DeCasteljauGUI_OpeningFcn(hObject, eventdata, handles, varargin)
global b;
b = [];

handles.output = hObject;


guidata(hObject, handles);





function varargout = DeCasteljauGUI_OutputFcn(hObject, eventdata, handles) 
global b;
b = [];

varargout{1} = handles.output;


function pushbutton1_Callback(hObject, eventdata, handles)
global h1;
global b;
global t;
if isempty(b)
    f = errordlg('No points have been selected', 'Input Error', 'non-modal');
    return
end
set(handles.pushbutton6,'visible','off');
t = get(handles.edit1, 'string');
t = str2double(t);
if isnan(t) || t>1 || t<0
    f = errordlg('Must be assigned a value to t in the interval [0, 1]', 'Input Error', 'non-modal');
    return
end

cla reset;
hold on; grid on;
gca.YLimMode='manual';
axis([0 2 0 2])
plot(b(:, 1), b(:, 2), 'ro');
plot(b(:, 1), b(:, 2), 'b');
output = deCasteljau(b, t);
set(handles.edit7, 'string', output(1));
set(handles.edit8, 'string', output(2));
tt = linspace(0,1,101);
n = length(b);

x = zeros(length(n),2);
for i=0:n-1
    x = x + b(i+1,:).*bernstein(i, n-1, tt);
end
pause
h1 = plot(x(:,1), x(:,2), 'r--');
set(handles.pushbutton6,'visible','on');
set(handles.pushbutton8,'visible','on');
set(handles.pushbutton12,'visible','on');
set(handles.pushbutton14,'visible','on');





function edit1_Callback(hObject, eventdata, handles)




function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)





function edit5_Callback(hObject, eventdata, handles)



function edit5_CreateFcn(hObject, eventdata, handles)


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)



function edit6_CreateFcn(hObject, eventdata, handles)


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)




function edit7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)


function edit8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pushbutton2_Callback(hObject, eventdata, handles)
global b;
b = [];
cla reset;
hold on; grid on;
set(handles.pushbutton6,'visible','off');




% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)




function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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
    set(handles.uipanel1,'visible','on');
    set(handles.uipanel4,'visible','off');
    set(handles.pushbutton8,'visible','on');
    set(handles.pushbutton12,'visible','on');
    set(handles.pushbutton14,'visible','on');
    
elseif strcmp(buttonString, 'SURFACES')
    handles.pushbutton3.String = 'CURVES';
    set(handles.uipanel4,'visible','on');
    set(handles.uipanel1,'visible','off');
    set(handles.pushbutton8,'visible','off');
    set(handles.pushbutton12,'visible','off');
    set(handles.pushbutton14,'visible','off');
    
end




% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
global h2;
set(handles.pushbutton7,'visible','off');
u = get(handles.edit9, 'string');
u = str2double(u);
v = get(handles.edit13, 'string');
v = str2double(v);
n = get(handles.edit10, 'string');
n = str2double(n);
x = linspace(0, 1, n);
y = linspace(0, 1, n);
[Px, Py] = meshgrid(x, y);
Pz = rand(n);
cla reset;
hold on; grid on;
xyz = [Px Py Pz];
xyz = reshape(xyz, n, n, 3);
plot3(xyz(:, :, 1),xyz(:, :, 2), xyz(:, :, 3), 'ko'); 
pause
surf(Px, Py, Pz, 'FaceAlpha',0.3, 'facecolor', 'w');
pause
output = deCasteljauSurface(xyz, u, v);
set(handles.edit7, 'string', output(1));
set(handles.edit8, 'string', output(2));
pause
h2 = surf(xyz(:, :, 1), xyz(:, :, 2), xyz(:, :, 3));
set(handles.pushbutton7,'visible','on');



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


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
global h1;
buttonString = hObject.String;
handles = guihandles(hObject);
if strcmp(buttonString, 'DRAW CURVE')
    handles.pushbutton6.String = 'REMOVE CURVE';
    set(h1,'Visible','on')
    
elseif strcmp(buttonString, 'REMOVE CURVE')
    handles.pushbutton6.String = 'DRAW CURVE';
    set(h1,'Visible','off')
    
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
global h2;
buttonString = hObject.String;
handles = guihandles(hObject);
if strcmp(buttonString, 'DRAW SURFACE')
    handles.pushbutton7.String = 'REMOVE SURFACE';
    set(h2,'Visible','on')
    
elseif strcmp(buttonString, 'REMOVE SURFACE')
    handles.pushbutton7.String = 'DRAW SURFACE';
    set(h2,'Visible','off')
    
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)

global h1;
global b;
global t;
new_point = ginput(1);
set(handles.pushbutton6,'visible','off');
b = [b; new_point];
cla reset;
hold on; grid on;
gca.YLimMode='manual';
axis([0 2 0 2])
plot(b(:, 1), b(:, 2), 'ro');
plot(b(:, 1), b(:, 2), 'b');


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
data = get(handles.slider3, 'Value');
data = round(data, 2);
data = num2str(data);
set(handles.edit1, 'String', data);


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% REMOVE POINT
function pushbutton12_Callback(hObject, eventdata, handles)
global h1;
global b;
global t;
d = 0.04;
rmv = ginput(1);
set(handles.pushbutton6,'visible','off');
rmved = 0;
for i=length(b):-1:1
    %Visible Squares
    %square = [b(i, 1)-d, b(i, 2)-d; b(i, 1)+d, b(i, 2)-d; b(i, 1)+d, b(i, 2)+d; b(i, 1)-d, b(i, 2)+d; b(i, 1)-d, b(i, 2)-d];
    %plot(square(:, 1), square(:, 2), '-r')
    %pause
    if rmv(1) >= b(i, 1)-d && rmv(2) >= b(i, 2)-d && rmv(1) <= b(i, 1)+d && rmv(2) <= b(i, 2)+d
        
        b(i, :) = [];
        rmved = 1;
        break
    end
end
if rmved == 0
    disp("No point has been selected, try centering the cursor closest to the point you want to delete")
    f = errordlg('No point has been selected, try centering the cursor closest to the point you want to delete', 'Input Error', 'non-modal');
    return
end
cla reset;
hold on; grid on;
gca.YLimMode='manual';
axis([0 2 0 2])
plot(b(:, 1), b(:, 2), 'ro');
plot(b(:, 1), b(:, 2), 'b');


% MODIFY POINT
function pushbutton14_Callback(hObject, eventdata, handles)
global h1;
global b;
d = 0.04;
rmv = ginput(1);
set(handles.pushbutton6,'visible','off');
rmved = 0;
for i=length(b):-1:1
    
    if rmv(1) >= b(i, 1)-d && rmv(2) >= b(i, 2)-d && rmv(1) <= b(i, 1)+d && rmv(2) <= b(i, 2)+d
        new_point = ginput(1);
        b(i, :) = new_point;
        rmved = 1;
        break
    end
end
if rmved == 0
    disp("No point have been selected, try centering the cursor closest to the point you want to delete")
    f = errordlg('No point has been selected, try centering the cursor closest to the point you want to delete', 'Input Error', 'non-modal');
    return
end
cla reset;
hold on; grid on;
gca.YLimMode='manual';
axis([0 2 0 2])
plot(b(:, 1), b(:, 2), 'ro');
plot(b(:, 1), b(:, 2), 'b');


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
data = get(handles.slider4, 'Value');
data = round(data, 2);
data = num2str(data);
set(handles.edit9, 'String', data);


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
data = get(handles.slider5, 'Value');
data = round(data, 2);
data = num2str(data);
set(handles.edit13, 'String', data);


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
global b;
if length(b(:)) == 0
    b = [];
end
n = get(handles.edit6, 'string');
n = str2double(n);
hold on;
gca.YLimMode='manual';
axis([0 2 0 2])
for i=1:n
    new_point = ginput(1); 
    b = [b; new_point];
    plot(b(:, 1), b(:, 2), 'ro');
    plot(b(:, 1), b(:, 2), 'b');
end
cla reset;
hold on; grid on;
gca.YLimMode='manual';
axis([0 2 0 2]);
plot(c(:, 1), c(:, 2), 'ro');
plot(c(:, 1), c(:, 2), 'b');
