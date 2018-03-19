function value = getFeaturesBP(id, items1, items2)
    switch id
        % Relation between items2 and maximum load
        case  1
            value = sum(items2)/(sum(items1)+sum(items2));
    end
end