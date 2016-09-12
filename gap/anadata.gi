
InstallGlobalFunction(NewANAMap,
function()
    return Objectify(ANAMapListType, [[]]);
end);

# Far from universal of course.
InstallMethod(AddOrUpdate, "for an anamap",
              [IsANAMap and IsANAMapListRep, IsPregroupPlace, IsInt, IsRat ],
function(map, place, length, val)
    if IsBound(map![1][__ID(place)]) then
        if IsBound(map![1][__ID(place)][length]) then
            if map![1][__ID(place)][length] > val then
                map![1][__ID(place)][length] := val;
            fi;
        else
            map![1][__ID(place)][length] := val;
        fi;
    else
        map![1][__ID(place)] := [];
        map![1][__ID(place)][length] := val;
    fi;
end);



InstallMethod(Keys, "for an anamap",
              [IsANAMap and IsANAMapListRep],
function(map)
    local k, res;
    res := [];
    for k in map![1] do
        Add(res, k);
    od;
    return res;
end);

# this is essentially useless
InstallMethod(Merge, "for an anamap",
              [IsANAMap and IsANAMapListRep, IsANAMap and IsANAMapListRep],
function(map1, map2)
    local p, l, res;

    for p in BoundPositions(map2![1]) do
        if not IsBound(map1![1][p]) then
            map1![1][p] := map2![1][p];
        else
            for l in BoundPositions(map2![1][p]) do
                if IsBound(map1![1][p][l]) and
                   (map1![1][p][l] <= map2![1][p][l]) then
                    continue;
                fi;
                map1![1][p][l] := map2![1][p][l];
            od;
        fi;
    od;
    return map1;
end);

