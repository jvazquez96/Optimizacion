function value = getFeaturesBin(idFeature, items, maxCapacity)
    switch idFeature
        % Average of items 
        case  1 
            value = mean(items);
        %standard dev
        case 2
            value = std(items);
        %relation items greater than capacity divided by two
        case 3
            value = size(items(items > maxCapacity / 2))/size(items);
    end
end