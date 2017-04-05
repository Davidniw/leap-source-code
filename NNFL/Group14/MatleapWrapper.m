clc
close all

Mydata=test_matleap;

%Graph the Results
figure('units','normalized','outerposition',[0 0 1 1]);
for k = 1:45  
    s(k) = subplot(5,9,k);
    plot(s(k),Mydata(k,:));
    %Label what each pointer is.
    sTitle = ['Pointer ' ,num2str(ceil(k/9))];
    iGroup = ceil(k/3);
    %Classify what type of Data each index holds.
    if mod((iGroup+2),3) == 0;
        sTitle = [sTitle, ' Position'];
    elseif mod((iGroup+1),3) == 0;
        sTitle = [sTitle, ' Velocity'];
    else mod((iGroup),3) == 0;
        sTitle = [sTitle, ' Direction'];
    end
    
    title(s(k),sTitle);
end
