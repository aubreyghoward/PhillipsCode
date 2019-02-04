%Heirarchical Clustering of changes in fluoresces per single cell
%Written by Adam Howard @ Rice University

%Read in Phillips Data
InputData = 'C:\Users\Adam Howard\Desktop\Rice University\Uribe lab\Phillp_Code\2019_2_4_GCamp6 Manual Surfacesinput.xlsx'; %Set the data path
[num,txt,raw] = xlsread(InputData, 'InputData'); %convert to matlab array's

%set titles
xTitle = 'Time (s)';
xticks = num(1,:);
yTitle = '\Delta F/F_0 per Cell';

num = num(2:end,:);

%Set max and min values for the code
maxval = max(max(num));
minval = abs(min(min(num)));
DisplayRangeValue =  max(maxval,minval);

h = clustergram(num,'ColumnLabels',xticks,'colormap',gray,'DisplayRange',DisplayRangeValue,'Cluster',1);

