function mainKP
    % Assuming that the table has the following format [Profit, Weight, Profit/Weight]
    KP = [40, 4, 10, 1;42, 7, 6, 2;25, 5, 5, 3; 12, 3, 4, 4];
    heuristics = [4;2];
    hyperHeuristics = [0.70; 0.60];
    features = [1];
    backpack.capacity = 10;
    backpack.items = [];
    backpack.profit = 0;
    while ~isempty(KP)
        idHeuristic = getHeuristicByEuclideanDistance(KP, hyperHeuristics, features);    
        [KP, output] = getItemByHeuristic(heuristics(idHeuristic), KP);
        if output(2) <= backpack.capacity
            backpack.capacity = backpack.capacity-output(2);
            backpack.items = [backpack.items output(4)];
            backpack.profit = backpack.profit + output(1);
        end
    end
    disp(backpack);
end