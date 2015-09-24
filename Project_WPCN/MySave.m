function MySave
% 本程序用于保存当前工作空间的数据到指定格式的mat文件。
% 文件名规则：日期+时间.mat, 比如2015-9-18-08-09.mat
% 作者：夏洪星
% 2015年9月24日

DS = datestr(now);  %获取当前时间的字符串
DSVect = datevec(DS);  %转化为字符向量

FileNameToSave = strcat(num2str(DSVect(1)),'-',...
                        num2str(DSVect(2)),'-',...
                        num2str(DSVect(3)),'-',...
                        num2str(DSVect(4)),'-',...
                        num2str(DSVect(5)));
save(FileNameToSave);

