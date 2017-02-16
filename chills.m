
load ('chills.mat')

%plot lraw
figure
for i = 1:5
    subplot(5,1,i)
    plot(samples.(sprintf('sample%d',i))(:,3));
end

%plot lmapped
figure
for i = 1:5
    subplot(5,1,i)
    plot(samples.(sprintf('sample%d',i))(:,4));
end


figure
for i =1:5
    subplot(5,1,i)
    plot(findpeaks(samples.(sprintf('sample%d',i))));
end


for i = 1:5
    
end



%plot rmapped
figure
for i = 1:5
    subplot(5,1,i)
    plot(samples.(sprintf('sample%d',i))(:,5));
end

figure
for i = 1:5
    subplot(5,1,i)
    plot(samples.(sprintf('sample%d',i))(:,2));
end

%count nans
nansums = [];
for i = 1:5
    nansums(i,1) = sum(isnan(samples.(sprintf('sample%d',i))(:,3)));
end

figure
for i = 1:5
    subplot(5,1,i)
    plot(audios.(sprintf('audio%d',i))(:,1));
end