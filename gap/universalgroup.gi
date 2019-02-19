

InstallGlobalFunction(UniversalGroupOfPregroup,
function(pregroup)
    local res, eltfam;

    if not IsPregroup(pregroup) then
        Error("<pregroup> has to be a pregroup");
    fi;

    res := Objectify(UniversalGroupOfPregroupType, rec());

    res!.fpgroup := FreeGroup(15) / [];

    SetPregroup(res, pregroup);
    SetElementFamily(res,
                     NewFamily("PregroupElementFamily",
                               IsUniversalGroupOfPregroupWord));
    return res;
end);

InstallMethod( ViewString, "for a universal group over a pregroup",
               [ IsUniversalGroupOfPregroup ],
function(ugp)
    return "<universal group over pregroup>";
end);

InstallMethod( ViewObj, "for a universal group over a pregroup",
               [ IsUniversalGroupOfPregroup ],
function(ugp)
    Print(ViewString(ugp));
end);
