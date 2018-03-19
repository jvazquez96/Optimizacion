function [items, itemOutput] = getItemByHeuristic(id, items)
    % Asumiendo que la tabla tiene el formato [Profit, Weight, Profit/Weight]
    switch id
        % Default
        case 1
            itemOutput = items(1,:);
            items(1,:) = [];
        % MaxProfit
        case 2
            itemMaxColumn = items(:, 1);
            [~, item] = max(itemMaxColumn);
            itemOutput = items(item, :);
            items(item,:) = [];
        % MinWeight
        case 3
            itemMinColumn = items(:, 2);
            [~, item] = min(itemMinColumn);
            itemOutput = items(item, :);
            items(item, :) = [];
        % Max Profit / Weight    
        case 4
            itemRelationColumn = items(:, 3);
            [~, item] = max(itemRelationColumn);
            itemOutput = items(item, :);
            items(item, :) = [];
    end
end