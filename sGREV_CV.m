%% Window Analysis Import: Setup the Import Options
opts = delimitedTextImportOptions("NumVariables", 17);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["WindowSizes", "GrayLevelNonUniformity", "GrayLevelNonUniformityNormalized", "GrayLevelVariance", "HighGrayLevelZoneEmphasis", "LargeAreaEmphasis", "LargeAreaHighGrayLevelEmphasis", "LargeAreaLowGrayLevelEmphasis", "LowGrayLevelZoneEmphasis", "SizeZoneNonUniformity", "SizeZoneNonUniformityNormalized", "SmallAreaEmphasis", "SmallAreaHighGrayLevelEmphasis", "SmallAreaLowGrayLevelEmphasis", "ZoneEntropy", "ZonePercentage", "ZoneVariance", "NormGrayLevelNonUniformity", "NormGrayLevelVariance", "NormHighGrayLevelZoneEmphasis", "NormLargeAreaEmphasis", "NormLargeAreaHighGrayLevelEmphasis", "NormLargeAreaLowGrayLevelEmphasis", "NormSizeZoneNonUniformity", "NormSmallAreaHighGrayLevelEmphasis", "NormZoneVariance"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

w_idx = [20 40 60 80 100 120 140 160 180 200];

% Import the data
for num = 1:length(w_idx)
      
    file_w_import =['D:\GREV-PorousMedia\example\glszm_example_data_w',num2str(w_idx(num)),'.csv']; 
    glszm = readtable(file_w_import, opts);
   
    svnu = glszm.SizeZoneNonUniformityNormalized;
    lge_file_name = [num2str(w_idx(num)),'_svnu.mat'];
    
    save(lge_file_name,'svnu')
    
    clear glszm
    
end

%% Coefficient of Variation
 COV = [];
 w_idx = [20 40 60 80 100 120 140 160 180 200];
 
 for num = 1:length(w_idx)
     
    norm_file_name = [num2str(w_idx(num)),'_svnu.mat'];
    load(norm_file_name) %#ok<SAGROW>
    COV_svnu = round((nanstd(svnu)*100/nanmean(svnu)),1);
    COV = [COV; COV_svnu]; %#ok<AGROW>
    clear svnu
 end
 
 %%
 
figure1 = figure;

X1 = w_idx;
Y1 = COV;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create plot
plot(X1,Y1,'Marker','o','LineStyle','--','Color',[0 0 0]);

% Create ylabel
ylabel({'Coefficient of Variation (%)'},'FontSize',14,...
    'FontName','Arial');

% Create xlabel
xlabel({'Window Sizes (voxel^3)'},...
    'FontSize',14,...
    'FontName','Arial');

% Create title
title({'Coefficient of Variation for SVNU sGREV'},'FontSize',12,...
    'FontName','Arial');

% Uncomment the following line to preserve the X-limits of the axes
%xlim(axes1,[0 200]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[0 35]);
box(axes1,'on');

 
 