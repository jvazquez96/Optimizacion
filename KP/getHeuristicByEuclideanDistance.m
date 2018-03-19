function id = getHeuristicByEuclideanDistance(items, hyperHeuristics, featuresV)
    [rows, ~] = size(hyperHeuristics);
    for i = 1:size(featuresV,2)
        aux(i) = getFeature(featuresV(i),items);
    end
    min = intmax;
    id = 1;
    for row = 1: rows
        possibleMin = sqrt(sum((aux-hyperHeuristics(row,:)).^2));
        if(possibleMin < min)
            min = possibleMin;
            id = row;
        end
    end
end