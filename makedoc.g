#
# walrus: Computational Methods for Finitely Generated Monoids and Groups
#
# This file is a script which compiles the package manual.
#
if fail = LoadPackage("AutoDoc", ">= 2014.03.27") then
    Error("AutoDoc version 2014.03.27 is required.");
fi;

AutoDoc( "walrus",
         rec( scaffold := rec( includes :=
                               [ "overview.xml"
                               , "pregroups.xml"
                               , "presentation.xml" ] )
            , autodoc := true ) );

PrintTo("VERSION", PackageInfo("anatph")[1].Version);

QUIT;
