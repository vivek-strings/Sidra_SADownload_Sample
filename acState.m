function [ stateTime ] = acState( state, timeStamp )
% Question from file: SADownload.pdf
% Assignment C
    
    % find length of input vector
    N = length(state);
    % create output vector of length 5(for states 0 to 4), with initial timestamp for all
    % states = 0
    stateTime = zeros(1,5);
    
    % Find time for State 0, time is calculated by measuring time between
    % current state(state=0) and next state(=1,2,3,4)
    % Similarly for others
    % In for loop of 'i', we only go till N-1 since no next state after
    % the last value(value at N), so time cannot be calculated for that
    % point
    for stateNum = 0:4
        for i=1:N-1
            if (state(i) == stateNum)
                stateTime(stateNum+1) = stateTime(stateNum+1) + timeStamp(i+1) - timeStamp(i);
            end
        end
    end
end