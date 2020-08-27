%This code is not optimized, obviously; it's just supposed to work.


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

%x-comp for ROG b
row = 1;
while row < length(bData(:,1))
    xCol = 1;
    ROGx = 0;
    XMean= mean([bData(row,1:3:end)]);
    
    sum_array = [];
    count = 1;
    while xCol <= 100
        sum_array(count) = abs(((bData(row,xCol))-(XMean))^2);
        xCol = xCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    xCol = 1;
    while xCol <= 100
        ROGx = sqrt((1/100)*(summed));
        bData1(row,xCol) = ((bData(row,xCol))/(ROGx));
        
        xCol = xCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end






%y-comp for ROG

row = 1;
while row < length(bData(:,1))
    yCol = 2;
    ROGy = 0;
    YMean= mean([bData(row,2:3:end)]);
    
    sum_array = [];
    count = 1;
    while yCol <= 100
        sum_array(count) = abs(((bData(row,yCol))-(YMean))^2);
        yCol = yCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    yCol = 2;
    while yCol <= 100
        ROGy = sqrt((1/100)*(summed));
        bData1(row,yCol) = ((bData(row,yCol))/(ROGy));
        
        yCol = yCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end


%z-comp of bData

row = 1;
while row < length(bData(:,1))
    zCol = 3;
    ROGz = 0;
    ZMean= mean([bData(row,3:3:end)]);
    
    sum_array = [];
    count = 1;
    while zCol <= 100
        sum_array(count) = abs(((bData(row,zCol))-(ZMean))^2);
        zCol = zCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    zCol = 3;
    while zCol <= 100
        ROGz = sqrt((1/100)*(summed));
        bData1(row,zCol) = ((bData(row,zCol))/(ROGz));
        
        zCol = zCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end



%%%%%%%%cData%%%%%%%%

%x-comp for ROG b
row = 1;
while row < length(cData(:,1))
    xCol = 1;
    ROGx = 0;
    XMean= mean([cData(row,1:3:end)]);
    
    sum_array = [];
    count = 1;
    while xCol <= 100
        sum_array(count) = abs(((cData(row,xCol))-(XMean))^2);
        xCol = xCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    xCol = 1;
    while xCol <= 100
        ROGx = sqrt((1/100)*(summed));
        cData1(row,xCol) = ((cData(row,xCol))/(ROGx));
        
        xCol = xCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end






%y-comp for ROG

row = 1;
while row < length(cData(:,1))
    yCol = 2;
    ROGy = 0;
    YMean= mean([cData(row,2:3:end)]);
    
    sum_array = [];
    count = 1;
    while yCol <= 100
        sum_array(count) = abs(((cData(row,yCol))-(YMean))^2);
        yCol = yCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    yCol = 2;
    while yCol <= 100
        ROGy = sqrt((1/100)*(summed));
        cData1(row,yCol) = ((cData(row,yCol))/(ROGy));
        
        yCol = yCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end


%z-comp of bData

row = 1;
while row < length(cData(:,1))
    zCol = 3;
    ROGz = 0;
    ZMean= mean([cData(row,3:3:end)]);
    
    sum_array = [];
    count = 1;
    while zCol <= 100
        sum_array(count) = abs(((cData(row,zCol))-(ZMean))^2);
        zCol = zCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    zCol = 3;
    while zCol <= 100
        ROGz = sqrt((1/100)*(summed));
        cData1(row,zCol) = ((cData(row,zCol))/(ROGz));
        
        zCol = zCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end


%%%%%%%geData%%%%%%%%%%%%%%


%x-comp for ROG b
row = 1;
while row < length(geData(:,1))
    xCol = 1;
    ROGx = 0;
    XMean= mean([geData(row,1:3:end)]);
    
    sum_array = [];
    count = 1;
    while xCol <= 100
        sum_array(count) = abs(((geData(row,xCol))-(XMean))^2);
        xCol = xCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    xCol = 1;
    while xCol <= 100
        ROGx = sqrt((1/100)*(summed));
        geData1(row,xCol) = ((geData(row,xCol))/(ROGx));
        
        xCol = xCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end






%y-comp for ROG

row = 1;
while row < length(geData(:,1))
    yCol = 2;
    ROGy = 0;
    YMean= mean([geData(row,2:3:end)]);
    
    sum_array = [];
    count = 1;
    while yCol <= 100
        sum_array(count) = abs(((geData(row,yCol))-(YMean))^2);
        yCol = yCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    yCol = 2;
    while yCol <= 100
        ROGy = sqrt((1/100)*(summed));
        geData1(row,yCol) = ((geData(row,yCol))/(ROGy));
        
        yCol = yCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end


%z-comp of bData

row = 1;
while row < length(geData(:,1))
    zCol = 3;
    ROGz = 0;
    ZMean= mean([geData(row,3:3:end)]);
    
    sum_array = [];
    count = 1;
    while zCol <= 100
        sum_array(count) = abs(((geData(row,zCol))-(ZMean))^2);
        zCol = zCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    zCol = 3;
    while zCol <= 100
        ROGz = sqrt((1/100)*(summed));
        geData1(row,zCol) = ((geData(row,zCol))/(ROGz));
        
        zCol = zCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end


%%%%%%%%%%%%giData%%%%%%%%%%%%%%%%%%


%x-comp for ROG b
row = 1;
while row < length(giData(:,1))
    xCol = 1;
    ROGx = 0;
    XMean= mean([giData(row,1:3:end)]);
    
    sum_array = [];
    count = 1;
    while xCol <= 100
        sum_array(count) = abs(((giData(row,xCol))-(XMean))^2);
        xCol = xCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    xCol = 1;
    while xCol <= 100
        ROGx = sqrt((1/100)*(summed));
        giData1(row,xCol) = ((giData(row,xCol))/(ROGx));
        
        xCol = xCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end


%y-comp for ROG

row = 1;
while row < length(giData(:,1))
    yCol = 2;
    ROGy = 0;
    YMean= mean([giData(row,2:3:end)]);
    
    sum_array = [];
    count = 1;
    while yCol <= 100
        sum_array(count) = abs(((giData(row,yCol))-(YMean))^2);
        yCol = yCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    yCol = 2;
    while yCol <= 100
        ROGy = sqrt((1/100)*(summed));
        giData1(row,yCol) = ((giData(row,yCol))/(ROGy));
        
        yCol = yCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end


%z-comp of bData

row = 1;
while row < length(giData(:,1))
    zCol = 3;
    ROGz = 0;
    ZMean= mean([giData(row,3:3:end)]);
    
    sum_array = [];
    count = 1;
    while zCol <= 100
        sum_array(count) = abs(((giData(row,zCol))-(ZMean))^2);
        zCol = zCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    zCol = 3;
    while zCol <= 100
        ROGz = sqrt((1/100)*(summed));
        giData1(row,zCol) = ((giData(row,zCol))/(ROGz));
        
        zCol = zCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end

%%%%%%%rData%%%%%%%%%%%%

%x-comp for ROG b
row = 1;
while row < length(rData(:,1))
    xCol = 1;
    ROGx = 0;
    XMean= mean([rData(row,1:3:end)]);
    
    sum_array = [];
    count = 1;
    while xCol <= 100
        sum_array(count) = abs(((rData(row,xCol))-(XMean))^2);
        xCol = xCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    xCol = 1;
    while xCol <= 100
        ROGx = sqrt((1/100)*(summed));
        rData1(row,xCol) = ((rData(row,xCol))/(ROGx));
        
        xCol = xCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end


%y-comp for ROG

row = 1;
while row < length(rData(:,1))
    yCol = 2;
    ROGy = 0;
    YMean= mean([rData(row,2:3:end)]);
    
    sum_array = [];
    count = 1;
    while yCol <= 100
        sum_array(count) = abs(((rData(row,yCol))-(YMean))^2);
        yCol = yCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    yCol = 2;
    while yCol <= 100
        ROGy = sqrt((1/100)*(summed));
        rData1(row,yCol) = ((rData(row,yCol))/(ROGy));
        
        yCol = yCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end


%z-comp of bData

row = 1;
while row < length(rData(:,1))
    zCol = 3;
    ROGz = 0;
    ZMean= mean([rData(row,3:3:end)]);
    
    sum_array = [];
    count = 1;
    while zCol <= 100
        sum_array(count) = abs(((rData(row,zCol))-(ZMean))^2);
        zCol = zCol +3;
        count = count +1;
    end
    
    summed = sum(sum_array);
    zCol = 3;
    while zCol <= 100
        ROGz = sqrt((1/100)*(summed));
        rData1(row,zCol) = ((rData(row,zCol))/(ROGz));
        
        zCol = zCol + 3;
    end
    %return to start to go to next row.
row = row+1;
end



%write everything to base memory

csvwrite('b-config-gyration.csv',bData1)
csvwrite('c-config-gyration.csv',cData1)
csvwrite('gi-config-gyration.csv',giData1)
csvwrite('ge-config-gyration.csv',geData1)
csvwrite('r-config-gyration.csv',rData1)