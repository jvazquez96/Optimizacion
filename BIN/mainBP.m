function mainBP
    items1 = [10 9 8 1 1 2 2 1 1 1 1 1 1];
    items2 = [];
    heuristics = [1, 2];
    hyperHeuristics = [0.20; 0.30];
    features = [1];
    while (getFeaturesBP(1, items1, items2) < 0.5)
        idHeuristic = getHeuristicByEuclideanDistanceBP(items1, items2, hyperHeuristics, features);
        [items1, items2] = getItemByHeuristicBP(heuristics(idHeuristic), items1, items2);
    end
    disp(items1);
    disp(items2);
    disp(getQBP(items1, items2));
end