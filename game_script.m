% game_script.m
% Written by: Daniel Lui
% 
% This is a generic text based fighting game written in 
% MATLAB. I was bored in class and decided to write this 
% just for fun and to show that it could be done. 

% Clears everything
clearvars 
clc

% Initalizes hitpoints at 100 for both players
hp1=100; hp2=100;


while hp1>=0 || hp2>=0

disp('Player 1 Turn')
disp('1. Punch')
disp('2. Kick')
disp('3. Scream')
move1=input('Select move: ');


if move1==1
    dmg2=5+floor(5*rand);
elseif move1==2    
    dmg2=3+floor(10*rand);
elseif move1==3
    a=ceil(10*rand);
    if a==4
        dmg2=20;
    else
        dmg2=2;
    end
end

hp2=hp2-dmg2;

if hp1<=0 || hp2<=0
    break
end

hpscore={'Player 1',hp1, 'Player 2',hp2,'HP'};
disp(hpscore)

disp('Player 2 Turn')
disp('1. Punch')
disp('2. Kick')
disp('3. Scream')
move2=input('Select move: ');
if move2==1
    dmg1=5+floor(5*rand);
elseif move2==2    
    dmg1=3+floor(10*rand);
elseif move2==3
    a=ceil(10*rand);
    if a==4
        dmg1=20;
    else
        dmg1=2;
    end
end
hp1=hp1-dmg1;
hpscore={'Player 1',hp1, 'Player 2',hp2,'HP'};
disp(hpscore)

if hp1<=0 || hp2<=0
    break
end
end

disp(' ')
disp(' ')

if hp1<=0
    disp('Player 2 Wins')
elseif hp2<=0
    disp('Plater 1 Wins')
end