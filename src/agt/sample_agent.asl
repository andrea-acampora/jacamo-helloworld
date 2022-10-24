// Agent sample_agent in project helloworld

/* Initial beliefs and rules */
language(ita).


/* Initial goals */
!say("Hello World!").
!greet.

/* Plans */

+!say(Something)
    <- .println(Something).

+!greet : language(ita)
    <- .println("Ciao").

+!greet : language(eng)
    <- .println("Hi").

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organisation
//{ include("$moiseJar/asl/org-obedient.asl") }
