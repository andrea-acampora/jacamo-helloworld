!go.

+!go
    <- !createCounter(C);
       !useCounter(C).

+!createCounter(Id)
    <- makeArtifact(c0, "example.Counter", [10], Id);
       println("counter created: ", Id);
       focus(Id).

+!useCounter(C)
    <- println("Going to use counter: ", C);
       inc;
       inc [aid(C)];
       println("Done").

+count(C)
    <- println("new count: ", C).

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }