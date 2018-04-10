function varargout = Cardiac_defib(varargin)
% CARDIAC_DEFIB MATLAB code for Cardiac_defib.fig
%      CARDIAC_DEFIB, by itself, creates a new CARDIAC_DEFIB or raises the existing
%      singleton*.
%
%      H = CARDIAC_DEFIB returns the handle to a new CARDIAC_DEFIB or the handle to
%      the existing singleton*.
%
%      CARDIAC_DEFIB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CARDIAC_DEFIB.M with the given input arguments.
%
%      CARDIAC_DEFIB('Property','Value',...) creates a new CARDIAC_DEFIB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Cardiac_defib_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Cardiac_defib_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Cardiac_defib

% Last Modified by GUIDE v2.5 01-Dec-2016 14:27:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Cardiac_defib_OpeningFcn, ...
                   'gui_OutputFcn',  @Cardiac_defib_OutputFcn, ...
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


% --- Executes just before Cardiac_defib is made visible.
function Cardiac_defib_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Cardiac_defib (see VARARGIN)

% Choose default command line output for Cardiac_defib
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Cardiac_defib wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Cardiac_defib_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.v0,'String',num2str(0));
set(handles.v1,'String',num2str(1000));
set(handles.v2,'String',num2str(980));
set(handles.v3,'String',num2str(960));
set(handles.v4,'String',num2str(950));
set(handles.v5,'String',num2str(940));
set(handles.v6,'String',num2str(0));
set(handles.c0,'String',num2str(0));
set(handles.c1,'String',num2str(30));
set(handles.c2,'String',num2str(28));
set(handles.c3,'String',num2str(26));
set(handles.c4,'String',num2str(25));
set(handles.c5,'String',num2str(24));
set(handles.c6,'String',num2str(0));
set(handles.text12,'String','     ');
set(handles.error,'String','      ');
plot(0,0,'-k');

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

v1=str2num(get(handles.v0,'String'));
v2=str2num(get(handles.v1,'String'));
v3=str2num(get(handles.v2,'String'));
v4=str2num(get(handles.v3,'String'));
v5=str2num(get(handles.v4,'String'));
v6=str2num(get(handles.v5,'String'));
v7=str2num(get(handles.v6,'String'));
c1=str2num(get(handles.c0,'String'));
c2=str2num(get(handles.c1,'String'));
c3=str2num(get(handles.c2,'String'));
c4=str2num(get(handles.c3,'String'));
c5=str2num(get(handles.c4,'String'));
c6=str2num(get(handles.c5,'String'));
c7=str2num(get(handles.c6,'String'));

if size(v1)==0;
    set(handles.error,'String','V1 not a number');
    plot(0,0,'-k');
elseif size(v2)==0;
    set(handles.error,'String','V2 not a number');
    plot(0,0,'-k');
elseif size(v3)==0;
    set(handles.error,'String','V3 not a number');
    plot(0,0,'-k');
elseif size(v4)==0;
    set(handles.error,'String','V4 not a number');
    plot(0,0,'-k');
elseif size(v5)==0;
    set(handles.error,'String','V5 not a number');
    plot(0,0,'-k');
elseif size(v6)==0;
    set(handles.error,'String','V6 not a number');
    plot(0,0,'-k');
elseif size(v7)==0;
    set(handles.error,'String','V7 not a number');
    plot(0,0,'-k');
elseif size(c1)==0;
    set(handles.error,'String','C1 not a number');
    plot(0,0,'-k');
elseif size(c2)==0;
    set(handles.error,'String','C2 not a number');
    plot(0,0,'-k');
elseif size(c3)==0;
    set(handles.error,'String','C3 not a number');
    plot(0,0,'-k');
elseif size(c4)==0;
    set(handles.error,'String','C4 not a number');
    plot(0,0,'-k');
elseif size(c5)==0;
    set(handles.error,'String','C5 not a number');
    plot(0,0,'-k');
elseif size(c6)==0;
    set(handles.error,'String','C6 not a number');
    plot(0,0,'-k');
elseif size(c7)==0;
    set(handles.error,'String','C7 not a number');
    plot(0,0,'-k');
else
set(handles.error,'String','     ');
time=[0,1,2,4,6,8,9];
power=[v1*c1,v2*c2,v3*c3,v4*c4,v5*c5,v6*c6,v7*c7]
plot(time,power/1000,'-or')
xlabel('time in milliseconds');
ylabel('Instant Power (watts)');
title('Power')  
end



function c0_Callback(hObject, eventdata, handles)
% hObject    handle to c0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c0 as text
%        str2double(get(hObject,'String')) returns contents of c0 as a double


% --- Executes during object creation, after setting all properties.
function c0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c1_Callback(hObject, eventdata, handles)
% hObject    handle to c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c1 as text
%        str2double(get(hObject,'String')) returns contents of c1 as a double


% --- Executes during object creation, after setting all properties.
function c1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c2_Callback(hObject, eventdata, handles)
% hObject    handle to c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c2 as text
%        str2double(get(hObject,'String')) returns contents of c2 as a double


% --- Executes during object creation, after setting all properties.
function c2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c3_Callback(hObject, eventdata, handles)
% hObject    handle to c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c3 as text
%        str2double(get(hObject,'String')) returns contents of c3 as a double


% --- Executes during object creation, after setting all properties.
function c3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c4_Callback(hObject, eventdata, handles)
% hObject    handle to c4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c4 as text
%        str2double(get(hObject,'String')) returns contents of c4 as a double


% --- Executes during object creation, after setting all properties.
function c4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c5_Callback(hObject, eventdata, handles)
% hObject    handle to c5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c5 as text
%        str2double(get(hObject,'String')) returns contents of c5 as a double


% --- Executes during object creation, after setting all properties.
function c5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c6_Callback(hObject, eventdata, handles)
% hObject    handle to c6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c6 as text
%        str2double(get(hObject,'String')) returns contents of c6 as a double


% --- Executes during object creation, after setting all properties.
function c6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v0_Callback(hObject, eventdata, handles)
% hObject    handle to v0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v0 as text
%        str2double(get(hObject,'String')) returns contents of v0 as a double


% --- Executes during object creation, after setting all properties.
function v0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v1_Callback(hObject, eventdata, handles)
% hObject    handle to v1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v1 as text
%        str2double(get(hObject,'String')) returns contents of v1 as a double


% --- Executes during object creation, after setting all properties.
function v1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v2_Callback(hObject, eventdata, handles)
% hObject    handle to v2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v2 as text
%        str2double(get(hObject,'String')) returns contents of v2 as a double


% --- Executes during object creation, after setting all properties.
function v2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v3_Callback(hObject, eventdata, handles)
% hObject    handle to v3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v3 as text
%        str2double(get(hObject,'String')) returns contents of v3 as a double


% --- Executes during object creation, after setting all properties.
function v3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v4_Callback(hObject, eventdata, handles)
% hObject    handle to v4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v4 as text
%        str2double(get(hObject,'String')) returns contents of v4 as a double


% --- Executes during object creation, after setting all properties.
function v4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v5_Callback(hObject, eventdata, handles)
% hObject    handle to v5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v5 as text
%        str2double(get(hObject,'String')) returns contents of v5 as a double


% --- Executes during object creation, after setting all properties.
function v5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v6_Callback(hObject, eventdata, handles)
% hObject    handle to v6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v6 as text
%        str2double(get(hObject,'String')) returns contents of v6 as a double


% --- Executes during object creation, after setting all properties.
function v6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




%%%%% left to do : 
%%% create two original GUI features  (help menu? and ?)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h=msgbox('This simple GUI allows the user to enter in voltage and current reading for a patient on a defibrilator, and outputs a plot, and the total amount of joules that the patient recieved. To use this GUI, please enter in the voltages and currents at the given time. The GUI will use a combination of Simpsons 3/8 rule, Simpsons 1/3 rule, and trapezoid rule to output the joules discharged. ','This GUI')


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
if get(hObject,'Value')== get(hObject,'Max')
    v1=str2num(get(handles.v0,'String'));
v2=str2num(get(handles.v1,'String'));
v3=str2num(get(handles.v2,'String'));
v4=str2num(get(handles.v3,'String'));
v5=str2num(get(handles.v4,'String'));
v6=str2num(get(handles.v5,'String'));
v7=str2num(get(handles.v6,'String'));
c1=str2num(get(handles.c0,'String'));
c2=str2num(get(handles.c1,'String'));
c3=str2num(get(handles.c2,'String'));
c4=str2num(get(handles.c3,'String'));
c5=str2num(get(handles.c4,'String'));
c6=str2num(get(handles.c5,'String'));
c7=str2num(get(handles.c6,'String'));

if size(v1)==0;
    set(handles.error,'String','V1 not a number');
    set(handles.text12,'String','Check warnings');
elseif size(v2)==0;
    set(handles.error,'String','V2 not a number');
    set(handles.text12,'String','Check warnings');
elseif size(v3)==0;
    set(handles.error,'String','V3 not a number');
    set(handles.text12,'String','Check warnings');
elseif size(v4)==0;
    set(handles.error,'String','V4 not a number');
    set(handles.text12,'String','Check warnings');
elseif size(v5)==0;
    set(handles.error,'String','V5 not a number');
    set(handles.text12,'String','Check warnings');
elseif size(v6)==0;
    set(handles.error,'String','V6 not a number');
    set(handles.text12,'String','Check warnings');
elseif size(v7)==0;
    set(handles.error,'String','V7 not a number');
    set(handles.text12,'String','Check warnings');
elseif size(c1)==0;
    set(handles.error,'String','C1 not a number');
    set(handles.text12,'String','Check warnings');
elseif size(c2)==0;
    set(handles.error,'String','C2 not a number');
    set(handles.text12,'String','Check warnings');
elseif size(c3)==0;
    set(handles.error,'String','C3 not a number');
    set(handles.text12,'String','Check warnings');
elseif size(c4)==0;
    set(handles.error,'String','C4 not a number');
    set(handles.text12,'String','Check warnings');
elseif size(c5)==0;
    set(handles.error,'String','C5 not a number');
    set(handles.text12,'String','Check warnings');
elseif size(c6)==0;
    set(handles.error,'String','C6 not a number');
    set(handles.text12,'String','Check warnings');
elseif size(c7)==0;
    set(handles.error,'String','C7 not a number');
    set(handles.text12,'String','Check warnings');
else
set(handles.error,'String','     ');
time=[0,1,2,4,6,8,9];
power=[v1*c1,v2*c2,v3*c3,v4*c4,v5*c5,v6*c6,v7*c7]
I1= (1/3)*(power(1) + 4*power(2) + power(3)); % simpsons 1/3 rule
I2= (3/8)*(2)*(power(3) + 3*power(4) + 3*power(5) + power(6)); %simpsons 3/8 rule
I3=1*((power(6) + power(7))/2); %trapezoid rule 
total= (I1+I2+I3)/1000 % sum the integrals to get the estimated area under the curve, which is equal to the energy per discharge. divide by 1000 to get it in seconds
set(handles.text12,'String',num2str(total));
end

else
    set(handles.text12,'String','     ');
end
    
