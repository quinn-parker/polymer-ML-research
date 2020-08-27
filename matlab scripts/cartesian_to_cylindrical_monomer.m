bData = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\b-config.csv');
cData = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\c-config.csv');
geData = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\ge-config.csv');
giData = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\gi-config.csv');
rData = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\r-config.csv');

bData1 = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\b-config.csv');
cData1 = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\c-config.csv');
geData1 = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\ge-config.csv');
giData1 = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\gi-config.csv');
rData1 = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\r-config.csv');

bData = bData{:,:};
cData = cData{:,:};
geData = geData{:,:};
giData = giData{:,:};
rData = rData{:,:};

bData1 = bData1{:,:};
cData1 = cData1{:,:};
geData1 = geData1{:,:};
giData1 = giData1{:,:};
rData1 = rData1{:,:};



%%bData%%
row = 1;
%Theta
while row <= length(bData(:,1))
    xCol = 1;
    yCol = 2;
    %y coordinate will transform into the theta comp
    while xCol <= 100 && yCol <= 100
        bData1(row,yCol)= atan((bData(row,yCol))/(bData(row,xCol)));
        xCol = xCol +3;
        yCol = yCol +3;
    end
row = row+1;
end
%r value
row = 1;
while row <= length(bData(:,1))
    xCol = 1;
    yCol = 2;
    %y coordinate will transform into the theta comp
    while xCol <= 100 && yCol <= 100
        bData1(row,xCol)= sqrt(((bData(row,xCol)^2) +((bData(row,yCol)^2))));
        xCol = xCol +3;
        yCol = yCol +3;
    end
row = row+1;
end







%%cData%%

row = 1;
%Theta
while row <= length(cData(:,1))
    xCol = 1;
    yCol = 2;
    %y coordinate will transform into the theta comp
    while xCol <= 100 && yCol <= 100
        cData1(row,yCol)= atan((cData(row,yCol))/(cData(row,xCol)));
        xCol = xCol +3;
        yCol = yCol +3;
    end
row = row+1;
end

%r value
row = 1;
while row <= length(cData(:,1))
    xCol = 1;
    yCol = 2;
    %y coordinate will transform into the theta comp
    while xCol <= 100 && yCol <= 100
        cData1(row,xCol)= sqrt(((cData(row,xCol)^2) +((cData(row,yCol)^2))));
        xCol = xCol +3;
        yCol = yCol +3;
    end
row = row+1;
end






%geData

row = 1;
%Theta
while row <= length(geData(:,1))
    xCol = 1;
    yCol = 2;
    %y coordinate will transform into the theta comp
    while xCol <= 100 && yCol <= 100
        geData1(row,yCol)= atan((geData(row,yCol))/(geData(row,xCol)));
        xCol = xCol +3;
        yCol = yCol +3;
    end
row = row+1;
end

%r value
row = 1;
while row <= length(geData(:,1))
    xCol = 1;
    yCol = 2;
    %y coordinate will transform into the theta comp
    while xCol <= 100 && yCol <= 100
        geData1(row,xCol)= sqrt(((geData(row,xCol)^2) +((geData(row,yCol)^2))));
        xCol = xCol +3;
        yCol = yCol +3;
    end
row = row+1;
end



%%giData%%

row = 1;
%Theta
while row <= length(giData(:,1))
    xCol = 1;
    yCol = 2;
    %y coordinate will transform into the theta comp
    while xCol <= 100 && yCol <= 100
        giData1(row,yCol)= atan((giData(row,yCol))/(giData(row,xCol)));
        xCol = xCol +3;
        yCol = yCol +3;
    end
row = row+1;
end
%r value
row = 1;
while row <= length(giData(:,1))
    xCol = 1;
    yCol = 2;
    %y coordinate will transform into the theta comp
    while xCol <= 100 && yCol <= 100
        giData1(row,xCol)= sqrt(((giData(row,xCol)^2) +((giData(row,yCol)^2))));
        xCol = xCol +3;
        yCol = yCol +3;
    end
row = row+1;
end





%%rData%%

row = 1;
%Theta
while row <= length(rData(:,1))
    xCol = 1;
    yCol = 2;
    %y coordinate will transform into the theta comp
    while xCol <= 100 && yCol <= 100
        rData1(row,yCol)= atan((rData(row,yCol))/(rData(row,xCol)));
        xCol = xCol +3;
        yCol = yCol +3;
    end
row = row+1;
end

%r value
row = 1;
while row <= length(rData(:,1))
    xCol = 1;
    yCol = 2;
    %y coordinate will transform into the theta comp
    while xCol <= 100 && yCol <= 100
        rData1(row,xCol)= sqrt(((rData(row,xCol)^2) +((rData(row,yCol)^2))));
        xCol = xCol +3;
        yCol = yCol +3;
    end
row = row+1;
end


%write everything to base memory

csvwrite('b-config-cylindrical.csv',bData1)
csvwrite('c-config-cylindrical.csv',cData1)
csvwrite('gi-config-cylindrical.csv',giData1)
csvwrite('ge-config-cylindrical.csv',geData1)
csvwrite('r-config-cylindrical.csv',rData1)