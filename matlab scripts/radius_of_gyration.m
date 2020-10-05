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


%To calc the Radius of Gyration, herein referred to as ROG, is composed of scaling each component. X, Y, then Z.

%%bData%%

%x-comp for ROG b
row = 1; %Setting the row to be the first row in the .csv dataset.
while row < length(bData(:,1)) %We start the main while loop which operates as the row mechanic. We need to do the following process of scaling by radius of gyration one row at a time.
    xCol = 1; %Notice that every col in the dataset repeats on a three step bases. The first col will be X, the next would be the fourth col, and so on.
    ROGx = 0; %Init the ROG of the x-comp to zero.
    XMean= mean([bData(row,1:3:end)]); %To calc the ROG we need the average of all x-comp within that structure.
    
    %Here is the formula I used for the ROG value: https://wikimedia.org/api/rest_v1/media/math/render/svg/dac6e30de208e2ce2cf9940d8fab518ab6070b24
    
    sum_array = []; %create array for summed x-comp.
    count = 1;
    while xCol <= 100 %Start while loop which calc the (r - rAvg)^2 for the given row for Y-comp.
        sum_array(count) = abs(((bData(row,xCol))-(XMean))^2); 
        xCol = xCol +3; %Skip to next x-comp, since they are on a every three count.
        count = count +1;
    end
    
    summed = sum(sum_array); %We now sum the array, thus the Sigma in the above formula.
    xCol = 1; %Init the xCol to 1 again.
    while xCol <= 100 %While loop calc the sqrt(1/N * Summed) part of the above formula
        ROGx = sqrt((1/100)*(summed)); %We now have the ROG value for that row of ONLY X-comp
        bData1(row,xCol) = ((bData(row,xCol))/(ROGx)); %Now we divide the x-comp of that row by the given ROG value.
        
        xCol = xCol + 3;
    end
    
    %return to start to go to next row.
row = row+1;
end






%y-comp for ROG
%Now we do the same thing but instead of starting at col 1 in the first while loop we start with the second col (Ycol). And because x,y,z is spread out evenly, we can do the same as above.
%Just remember we have to init all yCol values as 2 not 1
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

%Now we do the same thing but instead of starting at col 1, or 2, in the first while loop we start with the third col (Zcol). And because x,y,z is spread out evenly, we can do the same as above.
%Just remember we have to init all zCol values as 3.

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

%Now if you got that down, then just do the above code, but call for cData rather than bData. And then do the same for the following types.

%There are no special cases for different types. It is all redundant. Just remember to Init the col correctly.

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
