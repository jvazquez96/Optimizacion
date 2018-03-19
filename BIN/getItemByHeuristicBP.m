function [items1, items2] = getItemByHeuristicBP(id, items1, items2)
    switch id
        % Max
        case 1
            [itemOutput, pos] = max(items1);
            items1(pos) = [];
            items2 = [items2 itemOutput];
        % Min
        case 2
            [itemOutput, pos] = min(items1);
            items1(pos) = [];
            items2 = [items2 itemOutput];
    end
end