:- module(motor, [solution/1, createFacts/1, clearFacts/2]).

% Reglas dinamicas

:- dynamic
    % gota
    mohoBellosoEnves/1,
    tallosQuebradizos/1,
    % tizon temprano
    manchasCMOHojas/1,
    % costra negra
    lesionesCMBrotes/1,
    tuberculosAereos/1,
    enrollamientoHojas/1,

    gota/1, tizonTemprano/1, costraNegra/1.


solution(_{enfermedad:E, tratamiento: T}) :-
    (gota(X), E= "Gota", T="TODO");
    (tizonTemprano(X), E= "Tizon temprano", T="TODO");
    (costraNegra(X), E= "Costra Negra", T="TODO");
    E="Ninguna", T="Ninguno".


createFacts(
    _{
        mohoBellosoEnves:MBE,
        tallosQuebradizos:TQ,
        manchasCMOHojas:MCMOH,
        lesionesCMBrotes:LCMB,
        tuberculosAereos:TA,
        enrollamientoHojas:EH
    }):- (
    ((MBE == 1),assert(mohoBellosoEnves(plantas));
    assert(not(mohoBellosoEnves(plantas)))),

    ((TQ == 1),assert(tallosQuebradizos(plantas));
    assert(not(tallosQuebradizos(plantas)))),

    ((MCMOH == 1),assert(manchasCMOHojas(plantas));
    assert(not(manchasCMOHojas(plantas)))),

    ((LCMB == 1),assert(lesionesCMBrotes(plantas));
    assert(not(lesionesCMBrotes(plantas)))),

    ((TA == 1),assert(tuberculosAereos(plantas));
    assert(not(tuberculosAereos(plantas)))),

    ((EH == 1),assert(enrollamientoHojas(plantas));
    assert(not(enrollamientoHojas(plantas))))
    ),
    setGota(plantas),
    setTizonTemprano(plantas),
    setCostraNegra(plantas).
%    ResBool = true;
 %   ResBool = false.


setGota(X) :-
    (
    mohoBellosoEnves(X),
    tallosQuebradizos(X),
    assert(gota(X))
    );
    assert(not(gota(X))).

setTizonTemprano(X) :-
    manchasCMOHojas(X),
    assert(tizonTemprano(X));
    assert(not(tizonTemprano(X))).

setCostraNegra(X) :-
    lesionesCMBrotes(X),
    tuberculosAereos(X),
    enrollamientoHojas(X),
    assert(costraNegra(X));
    assert(not(costraNegra(X))).



clearFacts(_, Result) :-
    retractall(mohoBellosoEnves(_)),
    retractall(tallosQuebradizos(_)),
    retractall(manchasCMOHojas(_)),
    retractall(lesionesCMBrotes(_)),
    retractall(tuberculosAereos(_)),
    retractall(enrollamientoHojas(_)),
    retractall(gota(_)),
    retractall(tizonTemprano(_)),
    retractall(costraNegra(_)),
    Result = true;
    Result = false.


% Regla para recorrer las selecciones
% del usuario y generar los hechos.
%process_inputs([]).
%process_inputs([H|T]) :-
%    create_fact(H),
%    process_inputs(T).



























