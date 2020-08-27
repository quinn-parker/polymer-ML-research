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


csvwrite('b-config-centre.csv',bData)
csvwrite('c-config-centre.csv',cData)
csvwrite('ge-config-centre.csv',geData)
csvwrite('gi-config-centre.csv',giData)
csvwrite('r-config-centre.csv',rData)
% while n <= 100
%        centreBX = 
 %   end