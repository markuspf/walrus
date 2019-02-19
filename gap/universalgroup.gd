


# Universal group over a pregroup
DeclareGlobalFunction("UniversalGroupOfPregroup");

DeclareCategory( "IsUniversalGroupOfPregroup",
                 IsObject and IsGroup);
BindGlobal( "UniversalGroupOfPregroupFamily",
            NewFamily( "UniversalGroupOfPregroupFamily",
                       IsUniversalGroupOfPregroup));

DeclareRepresentation( "IsUniversalGroupOfPregroupRep",
                       IsUniversalGroupOfPregroup and
                       IsComponentObjectRep and
                       IsAttributeStoringRep,
                       [] );
BindGlobal( "UniversalGroupOfPregroupType",
            NewType( UniversalGroupOfPregroupFamily, IsUniversalGroupOfPregroupRep ) );


DeclareAttribute( "Pregroup", IsUniversalGroupOfPregroup );
DeclareAttribute( "ElementFamily", IsUniversalGroupOfPregroup );

# Words over the universal group over a pregroup
DeclareCategory( "IsUniversalGroupOfPregroupWord",
                 IsMultiplicativeElementWithInverse and
                 IsList );

DeclareRepresentation( "IsUniversalGroupOfPregroupWordListRep",
                       IsUniversalGroupOfPregroupWord and
                       IsComponentObjectRep and
                       IsAttributeStoringRep, # TODO: sensible?
                       [] );


