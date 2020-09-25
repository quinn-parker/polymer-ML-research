bData = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\b-config.csv');
cData = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\c-config.csv');
geData = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\ge-config.csv');
giData = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\gi-config.csv');
rData = readtable('C:\Users\Quinn\Research\Research-vogel-newData\monomer-new-data\r-config.csv');

bData = bData{:,:};
cData = cData{:,:};
geData = geData{:,:};
giData = giData{:,:};
rData = rData{:,:};

%B------

%bData
row = 1;
while row <= length(bData(:,1))
    bXMean= mean([bData(row,1:3:end)]);
    bYMean = mean([bData(row,2:3:end)]);
    bZMean = mean([bData(row,3:3:end)]);
    
    bData(row, 1:3:end) = bData(row, 1:3:end) - abs(bXMean);
    bData(row, 2:3:end) = bData(row, 2:3:end) - abs(bYMean);
    bData(row, 3:3:end) = bData(row, 3:3:end) - abs(bZMean);
   
row = row+1;
end


bData1 = bData;

%bData
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


%B-------

%C-------

%cData
row = 1;
while row <= length(cData(:,1))
    cXMean= mean([cData(row,1:3:end)]);
    cYMean = mean([cData(row,2:3:end)]);
    cZMean = mean([cData(row,3:3:end)]);
    
    cData(row, 1:3:end) = cData(row, 1:3:end) - abs(cXMean);
    cData(row, 2:3:end) = cData(row, 2:3:end) - abs(cYMean);
    cData(row, 3:3:end) = cData(row, 3:3:end) - abs(cZMean);
   
row = row+1;
end

cData1 = cData;


%cData

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


%C--------


%Ge--------

%geData
row = 1;
while row <= length(geData(:,1))
    geXMean= mean([geData(row,1:3:end)]);
    geYMean = mean([geData(row,2:3:end)]);
    geZMean = mean([geData(row,3:3:end)]);
    
    geData(row, 1:3:end) = geData(row, 1:3:end) - abs(geXMean);
    geData(row, 2:3:end) = geData(row, 2:3:end) - abs(geYMean);
    geData(row, 3:3:end) = geData(row, 3:3:end) - abs(geZMean);
   
row = row+1;
end

geData1 = geData;

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


%Ge-----------


%Gi-----------


%giData
row = 1;
while row <= length(giData(:,1))
    giXMean= mean([giData(row,1:3:end)]);
    giYMean = mean([giData(row,2:3:end)]);
    giZMean = mean([giData(row,3:3:end)]);
    
    giData(row, 1:3:end) = giData(row, 1:3:end) - abs(giXMean);
    giData(row, 2:3:end) = giData(row, 2:3:end) - abs(giYMean);
    giData(row, 3:3:end) = giData(row, 3:3:end) - abs(giZMean);
   
row = row+1;
end

giData1 = giData;
%giData

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


%Ge---------


%R----------

%rData
row = 1;
while row <= length(rData(:,1))
    rXMean= mean([rData(row,1:3:end)]);
    rYMean = mean([rData(row,2:3:end)]);
    rZMean = mean([rData(row,3:3:end)]);
    
    rData(row, 1:3:end) = rData(row, 1:3:end) - abs(rXMean);
    rData(row, 2:3:end) = rData(row, 2:3:end) - abs(rYMean);
    rData(row, 3:3:end) = rData(row, 3:3:end) - abs(rZMean);
   
row = row+1;
end


rData1 = rData;


%rData

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

csvwrite('b-config-centre-of-mass-cylindrical.csv',bData1)
csvwrite('c-config-centre-of-mass-cylindrical.csv',cData1)
csvwrite('ge-config-centre-of-mass-cylindrical.csv',geData1)
csvwrite('gi-config-centre-of-mass-cylindrical.csv',giData1)
csvwrite('r-config-centre-of-mass-cylindrical.csv',rData1)