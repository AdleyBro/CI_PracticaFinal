train_velocity = training(:,[1:6,13])
indices = round(linspace(1,size(training,1),1500))
train_velocity = train_velocity(indices,:)
train_velocity(isinf(train_velocity)) = 5.0
train_velocity(train_velocity > 5.0) = 5.0
train_velocity = double(train_velocity)