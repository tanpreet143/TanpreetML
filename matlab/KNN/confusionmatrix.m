function [ CON, A, P, R, F1 ] = confusionmatrix(ypred, yactual)
    a = 0;  % True Positives
    b = 0;  % False Positives
    c = 0;  % False Negatives
    d = 0;  % True Negatives
    
    for i = 1:length(ypred)
        if yactual(i) == 1 && ypred(i) == 1
            a = a + 1;  % True Positive
        elseif yactual(i) == 0 && ypred(i) == 1
            b = b + 1;  % False Positive
        elseif yactual(i) == 1 && ypred(i) == 0
            c = c + 1;  % False Negative
        elseif yactual(i) == 0 && ypred(i) == 0
            d = d + 1;  % True Negative
        end
    end
    
    % Confusion matrix
    CON = [a, c; b, d];
    
    % Accuracy
    A = ((a + d) / (a + b + c + d)) * 100;
    
    % Precision
    if (a + b) == 0
        P = 0;
    else
        P = a / (a + b);
    end
    
    % Recall
    if (a + c) == 0
        R = 0;
    else
        R = a / (a + c);
    end
    
    % F1 Score
    if (P + R) == 0
        F1 = 0;
    else
        F1 = 2 * P * R / (P + R);
    end
end
