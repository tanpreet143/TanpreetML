


function [meanAbsoluteError, meanSquareError, rootMeanSquareError, rootMeanLogSquareError, rSquared, adjustedRSquared] = evaluate_regression(predictedValues, actualValues)
    
    predictedValues = predictedValues(:);
    actualValues = actualValues(:);
    
    numObservations = length(actualValues);
    
    meanActualValues = mean(actualValues);
    
    predictionErrors = predictedValues - actualValues;
    
    % 1. Mean Absolute Error (MAE)
    meanAbsoluteError = mean(abs(predictionErrors));
    
    % 2. Mean Square Error (MSE)
    meanSquareError = mean(predictionErrors.^2);
    
    % 3. Root Mean Square Error (RMSE)
    rootMeanSquareError = sqrt(meanSquareError);
    
    % 4. Root Mean Log Square Error (RMSLE)
    rootMeanLogSquareError = sqrt(mean((log1p(predictedValues) - log1p(actualValues)).^2));
    
    % 5. R-squared (R²) value
    totalSumOfSquares = sum((actualValues - meanActualValues).^2);
    residualSumOfSquares = sum(predictionErrors.^2);
    rSquared = 1 - (residualSumOfSquares / totalSumOfSquares);
    
    % 6. Adjusted R-squared (Adjusted R²) value
    numPredictors = 1; % Number of predictors, assuming a simple linear model
    adjustedRSquared = 1 - (1 - rSquared) * (numObservations - 1) / (numObservations - numPredictors - 1);
end

data = readmatrix('train2.txt'); % Assuming two columns, first is predicted, second is actual

% Check if data is loaded properly
if isempty(data)
    error('The file train2.txt could not be read or is empty.');
end

% Split the data into predicted and actual values
predictedValues = data(:, 1);
actualValues = data(:, 2);
%predictedValues = [127.4, 364.4, 150, 128.7, 285.9, 200, 303.3, 315.7, 169.8, 104.9, 297.7, 256.4, 249.1, 323.1, 223, 235, 200];
%actualValues = [10.5, 21.4, 10, 9.6, 17.4, 12.5, 20, 21, 14.7, 10.1, 21.5, 16.6, 17.1, 20.7, 15.5, 13.5, 12.5];

% Call the evaluate_regression function
[meanAbsoluteError, meanSquareError, rootMeanSquareError, rootMeanLogSquareError, rSquared, adjustedRSquared] = evaluate_regression(predictedValues, actualValues);

% Display the results
fprintf('Mean Absolute Error (MAE): %.4f\n', meanAbsoluteError);
fprintf('Mean Square Error (MSE): %.4f\n', meanSquareError);
fprintf('Root Mean Square Error (RMSE): %.4f\n', rootMeanSquareError);
fprintf('Root Mean Log Square Error (RMSLE): %.4f\n', rootMeanLogSquareError);
fprintf('R-squared (R²) value: %.4f\n', rSquared);
fprintf('Adjusted R-squared (Adjusted R²) value: %.4f\n', adjustedRSquared);
