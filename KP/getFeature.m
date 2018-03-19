function value = getFeature(id, items)
    % Assuming that the table has the following format [Profit, Weight, Profit/Weight]
    items(:,1) = items(:,1)./max(items(:,1));
    items(:,2) = items(:,2)./max(items(:,2));
    switch id
        % Profit mean
        case  1
            value = mean(items(:,1));
        % Profit stdev
        case 2
            value = std(items(:, 1));
        % Profit median
        case 3
            value = median(items(:, 1));
        % Weight mean
        case 4
            value = mean(items(:,2));
        % Weight stdve
        case 5
            value = std(items(:,2));
        % Weigth median
        case 6
            value = median(items(:,2));
        % Correlation between weight and items profit, divided by 2 plus
        % 0.5 corr(w,p)
        case 7
            value = corr(items(:,2), items(:,1)); 
    end
end