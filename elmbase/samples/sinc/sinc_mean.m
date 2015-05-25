test=zeros(50,1);
train=zeros(50,1);
train_time=zeros(50,1);
testing_time=zeros(50,1);

wb=waitbar(0,'Please waiting...');

for rnd = 1 : 50
    
    waitbar(rnd/50,wb);
    
    sinc;
    [learn_time, test_time, train_accuracy, test_accuracy]=ELM('sinc_train','sinc_test',0,20,'sig');
    test(rnd,1)=test_accuracy;
    train(rnd,1)=train_accuracy;
    train_time(rnd,1)=learn_time;
    testing_time(rnd,1)=test_time;
end
close(wb);

AverageTrainingTime=mean(train_time)
StandardDeviationofTrainingTime=std(train_time)
AvergeTestingTime=mean(testing_time)
StandardDeviationofTestingTime=std(testing_time)
AverageTrainingAccuracy=mean(train)
StandardDeviationofTrainingAccuracy=std(train)
AverageTestingAccuracy=mean(test)
StandardDeviationofTestingAccuracy=std(test)
