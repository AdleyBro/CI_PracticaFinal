train_angular = training(:,[1:6,12])
indices = round(linspace(1,size(training,1),1500))
train_angular = train_angular(indices,:)
train_angular(isinf(train_angular)) = 1.0
train_angular = double(train_angular)