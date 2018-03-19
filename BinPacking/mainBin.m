function mainBin
    bin = {};
    items = [8 1 3 1 1 9 7 4 10 1 5 4 8 8 2];
    heuristics = [1, 2, 3,4];
    hyperHeuristics = [4, 2 , 0.5; 5, 0, 0; 5.5, 2, 0.4;6.5, 3 , 0.3];
    featuresV = [1,2,3];
    maxCapacity = 15;
    while (~isempty(items))
        idHeuristic = getHeuristicByEuclideanDistanceBin(items, hyperHeuristics, featuresV, maxCapacity);
        [bin, items] = placeItemByHeuristic(heuristics(idHeuristic), bin, maxCapacity, items);
    end
    for i = 1: size(bin,2)
        disp(bin{i});
    end 
end
