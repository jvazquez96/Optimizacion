function id = getHeuristicByEuclideanDistanceBin(items, hyperHeuristics, featuresV, maxCapacity)
    [rows, ~] = size(hyperHeuristics);
    aux = [];
    for i = 1:size(featuresV,2)
        aux = [aux getFeaturesBin(featuresV(i),items, maxCapacity)];
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