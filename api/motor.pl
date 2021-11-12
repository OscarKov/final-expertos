:- module(motor, [solution/1, createFacts/1, clearFacts/1]).

% Reglas dinamicas

:- dynamic
    % gota
    mohoBellosoEnves/1,manchasOsHojas/1,manchasOsTallo/1,manchasTuberculo/1,
    % tizon temprano
    manchasAnilloHojas/1,caidaHojas/1,follajeAmarillo/1,tuberculosSecos/1,
    % tizon tardio
    lesionesCastanoFollaje/1,manchasBordesHojas/1,heridadTuberculos/1,
    % roña polvorosa
    lesionesCircular/1,tuberculosLesionesHundidas/1,tuberculosCorchoso/1,
    lesionesNecroticas/1,cavidadesTuberculos/1,
    % torbo
    marchitacionFollaje/1,marchitacionRaiz/1,tuberculosMoho/1,
    % pata negra
    colaracionNegraTallos/1,olorFuerteRaiz/1,decolaracionTuberculos/1,
    % costra negra
    tuberculosAereos/1,escasaBrotacionTallos/1,debilidadTallos/1,enrollamientoHojas/1,
    % marchitez bacteriana
    sustaciaSuelo/1,blanqueamientoTuberculos/1,
    % polilla
    ampollasTransparentes/1,tunelesTuberculos/1,orificiosTuberculos/1,
    % polilla gualtemalteca
    tuberculoPodrido/1,
    % carbon
    tumoresTallo/1,tumoresTuberculos/1,
    % roya
    alturaTerreno/1,puntosRojizosHojas/1,

    % PLAGAS Y ENFERMEDADES DEL CULTIVO DE LA PAPA
    gota/1, tizonTemprano/1, tizonTardio/1, ronaPolvorosa/1, torbo/1, pataNegra/1,
    costraNegra/1, marchitezBacteriana/1, polilla/1, polillaGualtemalteca/1, carbon/1, roya/1.


solution(_{enfermedad:E, tratamiento: T, error:Er, msg: M}) :-
    ((gota(X), E= "Gota", T="TODO");
    (tizonTemprano(X), E= "Tizon temprano", T="TODO");
    (tizonTardio(X), E= "Tizon tardio", T="TODO");
    (ronaPolvorosa(X), E= "Rona Polvoroza", T="TODO");
    (torbo(X), E= "Torbo", T="TODO");
    (pataNegra(X), E= "Pata Negra", T="TODO");
    (costraNegra(X), E= "Costra Negra", T="TODO");
    (marchitezBacteriana(X), E= "Marchitez Bacteriana", T="TODO");
    (polilla(X), E= "Polilla", T="TODO");
    (polillaGualtemalteca(X), E= "Polilla Gualtemalteca", T="TODO");
    (carbon(X), E= "Carbon", T="TODO");
    (roya(X), E= "Roya", T="TODO")),
    (Er=0, M="Correcto");
    (E="", T="", Er=1, M="No es posible obtener un resultado").


createFacts(
    _{
        mohoBellosoEnves:MBE,
        manchasOsHojas:MOH,
        manchasOsTallo:MOT,
        manchasTuberculo:MT,

        manchasAnilloHojas:MAH,
        caidaHojas:CH,
        follajeAmarillo:FA,
        tuberculosSecos:TS,

        lesionesCastanoFollaje:LCF,
        manchasBordesHojas:MBH,
        heridadTuberculos:HT,

        lesionesCircular:LC,
        tuberculosLesionesHundidas:TLH,
        tuberculosCorchoso:TC,
        lesionesNecroticas:LN,
        cavidadesTuberculos:CT,

        marchitacionFollaje:MF,
        marchitacionRaiz:MR,
        tuberculosMoho:TM,

        colaracionNegraTallos:CNT,
        olorFuerteRaiz:OFR,
        decolaracionTuberculos:DT,

        tuberculosAereos:TA,
        escasaBrotacionTallos:EBT,
        debilidadTallos:DET,
        enrollamientoHojas:EH,

        sustaciaSuelo:SS,
        blanqueamientoTuberculos:BT,

        ampollasTransparentes:AT,
        tunelesTuberculos:TT,
        orificiosTuberculos:OT,

        tuberculoPodrido:TP,

        tumoresTallo:TUT,
        tumoresTuberculos:TUTU,

        alturaTerreno:ALT,
        puntosRojizosHojas:PRH

    }):- (
    %----------------------gota -------------------
    ((MBE == 1),assert(mohoBellosoEnves(plantas));
    assert(not(mohoBellosoEnves(plantas)))),

    ((MOH == 1),assert(manchasOsHojas(plantas));
    assert(not(manchasOsHojas(plantas)))),

    ((MOT == 1),assert(manchasOsTallo(plantas));
    assert(not(manchasOsTallo(plantas)))),

    ((MT == 1),assert(manchasTuberculo(plantas));
    assert(not(manchasTuberculo(plantas)))),
    %-----------------tizon temprano-------------------
    ((MAH == 1),assert(manchasAnilloHojas(plantas));
    assert(not(manchasAnilloHojas(plantas)))),

    ((CH == 1),assert(caidaHojas(plantas));
    assert(not(caidaHojas(plantas)))),

    ((FA == 1),assert(follajeAmarillo(plantas));
    assert(not(follajeAmarillo(plantas)))),

    ((TS == 1),assert(tuberculosSecos(plantas));
    assert(not(tuberculosSecos(plantas)))),
    %-----------------tizon tardio-------------------
    ((LCF == 1),assert(lesionesCastanoFollaje(plantas));
    assert(not(lesionesCastanoFollaje(plantas)))),

    ((MBH == 1),assert(manchasBordesHojas(plantas));
    assert(not(manchasBordesHojas(plantas)))),

    ((HT == 1),assert(heridadTuberculos(plantas));
    assert(not(heridadTuberculos(plantas)))),
    %-----------------Roña polvorosa-------------------
    ((LC == 1),assert(lesionesCircular(plantas));
    assert(not(lesionesCircular(plantas)))),

    ((TLH == 1),assert(tuberculosLesionesHundidas(plantas));
    assert(not(tuberculosLesionesHundidas(plantas)))),

    ((TC == 1),assert(tuberculosCorchoso(plantas));
    assert(not(tuberculosCorchoso(plantas)))),

    ((LN == 1),assert(lesionesNecroticas(plantas));
    assert(not(lesionesNecroticas(plantas)))),

    ((CT == 1),assert(cavidadesTuberculos(plantas));
    assert(not(cavidadesTuberculos(plantas)))),
    %---------------------torbo----------------------
    ((MF == 1),assert(marchitacionFollaje(plantas));
    assert(not(marchitacionFollaje(plantas)))),

    ((MR == 1),assert(marchitacionRaiz(plantas));
    assert(not(marchitacionRaiz(plantas)))),

    ((TM == 1),assert(tuberculosMoho(plantas));
    assert(not(tuberculosMoho(plantas)))),
    %-----------------pata negra---------------------
    ((CNT == 1),assert(colaracionNegraTallos(plantas));
    assert(not(colaracionNegraTallos(plantas)))),

    ((OFR == 1),assert(olorFuerteRaiz(plantas));
    assert(not(olorFuerteRaiz(plantas)))),

    ((DT == 1),assert(decolaracionTuberculos(plantas));
    assert(not(decolaracionTuberculos(plantas)))),
    %-----------------costra negra-------------------
    ((TA == 1),assert(tuberculosAereos(plantas));
    assert(not(tuberculosAereos(plantas)))),

    ((EBT == 1),assert(escasaBrotacionTallos(plantas));
    assert(not(escasaBrotacionTallos(plantas)))),

    ((DET == 1),assert(debilidadTallos(plantas));
    assert(not(debilidadTallos(plantas)))),

    ((EH == 1),assert(enrollamientoHojas(plantas));
    assert(not(enrollamientoHojas(plantas)))),
    %-----------------marchitez bacterina-------------------
    ((SS == 1),assert(sustaciaSuelo(plantas));
    assert(not(sustaciaSuelo(plantas)))),

    ((BT == 1),assert(blanqueamientoTuberculos(plantas));
    assert(not(blanqueamientoTuberculos(plantas)))),
    %------------------- polilla -------------------
    ((AT == 1),assert(ampollasTransparentes(plantas));
    assert(not(ampollasTransparentes(plantas)))),

    ((TT == 1),assert(tunelesTuberculos(plantas));
    assert(not(tunelesTuberculos(plantas)))),

    ((OT == 1),assert(orificiosTuberculos(plantas));
    assert(not(orificiosTuberculos(plantas)))),
    %-------------------polilla gualtemalteca-------------------
    ((TP == 1),assert(tuberculoPodrido(plantas));
    assert(not(tuberculoPodrido(plantas)))),
    %-------------------carbon-----------------------
    ((TUT == 1),assert(tumoresTallo(plantas));
    assert(not(tumoresTallo(plantas)))),

    ((TUTU == 1),assert(tumoresTuberculos(plantas));
    assert(not(tumoresTuberculos(plantas)))),
    %---------------------roya----------------------
    ((ALT == 1),assert(alturaTerreno(plantas));
    assert(not(alturaTerreno(plantas)))),

    ((PRH == 1),assert(puntosRojizosHojas(plantas));
    assert(not(puntosRojizosHojas(plantas))))

    ),
    setGota(plantas),
    setTizonTemprano(plantas),
    setTizonTardio(plantas),
    setRonaPolvorosa(plantas),
    setTorbo(plantas),
    setPataNegra(plantas),
    setCostraNegra(plantas),
    setMarchitezBacteriana(plantas),
    setPolilla(plantas),
    setPolillaGuatemalteca(plantas),
    setCarbon(plantas),
    setRoya(plantas).
%    ResBool = true;
%    ResBool = false.


setGota(X) :-
    (
        mohoBellosoEnves(X),
        manchasOsHojas(X),
        manchasOsTallo(X),
        manchasTuberculo(X),
        assert(gota(X))
    );
    assert(not(gota(X))).

setTizonTemprano(X) :-
    (
        manchasAnilloHojas(X),
        caidaHojas(X),
        follajeAmarillo(X),
        tuberculosSecos(X),
        assert(tizonTemprano(X))
    );
    assert(not(tizonTemprano(X))).

setTizonTardio(X) :-
    (
        lesionesCastanoFollaje(X),
        manchasBordesHojas(X),
        heridadTuberculos(X),
        assert(tizonTardio(X))
    );
    assert(not(tizonTemprano(X))).

setRonaPolvorosa(X) :-
    (
        lesionesCircular(X),
        tuberculosLesionesHundidas(X),
        tuberculosCorchoso(X),
        lesionesNecroticas(X),
        cavidadesTuberculos(X),
        assert(ronaPolvorosa(X))
    );
    assert(not(ronaPolvorosa(X))).

setTorbo(X) :-
    (
        marchitacionFollaje(X),
        marchitacionRaiz(X),
        tuberculosMoho(X),
        assert(torbo(X))
    );
    assert(not(torbo(X))).

setPataNegra(X) :-
    (
        colaracionNegraTallos(X),
        olorFuerteRaiz(X),
        decolaracionTuberculos(X),
        assert(pataNegra(X))
    );
    assert(not(pataNegra(X))).

setCostraNegra(X) :-
    (
        tuberculosAereos(X),
        escasaBrotacionTallos(X),
        debilidadTallos(X),
        enrollamientoHojas(X),
        assert(costraNegra(X))
    );
    assert(not(costraNegra(X))).

setMarchitezBacteriana(X) :-
    (
        sustaciaSuelo(X),
        blanqueamientoTuberculos(X),
        assert(marchitezBacteriana(X))
    );
    assert(not(marchitezBacteriana(X))).

setPolilla(X) :-
    (
        ampollasTransparentes(X),
        tunelesTuberculos(X),
        orificiosTuberculos(X),
        assert(polilla(X))
    );
    assert(not(polilla(X))).

setPolillaGuatemalteca(X) :-
    (
        tuberculoPodrido(X),
        assert(polillaGualtemalteca(X))
    );
    assert(not(polillaGualtemalteca(X))).

setCarbon(X) :-
    (
        tumoresTallo(X),
        tumoresTuberculos(X),
        assert(carbon(X))
    );
    assert(not(carbon(X))).

setRoya(X) :-
    (
        alturaTerreno(X),
        puntosRojizosHojas(X),
        assert(roya(X))
    );
    assert(not(roya(X))).


clearFacts(Result) :-
    retractall(mohoBellosoEnves(_)),
    retractall(manchasOsHojas(_)),
    retractall(manchasOsTallo(_)),
    retractall(manchasTuberculo(_)),

    retractall(manchasAnilloHojas(_)),
    retractall(caidaHojas(_)),
    retractall(follajeAmarillo(_)),
    retractall(tuberculosSecos(_)),

    retractall(lesionesCastanoFollaje(_)),
    retractall(manchasBordesHojas(_)),
    retractall(heridadTuberculos(_)),

    retractall(lesionesCircular(_)),
    retractall(tuberculosLesionesHundidas(_)),
    retractall(tuberculosCorchoso(_)),
    retractall(lesionesNecroticas(_)),
    retractall(cavidadesTuberculos(_)),

    retractall(marchitacionFollaje(_)),
    retractall(marchitacionRaiz(_)),
    retractall(tuberculosMoho(_)),

    retractall(colaracionNegraTallos(_)),
    retractall(olorFuerteRaiz(_)),
    retractall(decolaracionTuberculos(_)),

    retractall(tuberculosAereos(_)),
    retractall(escasaBrotacionTallos(_)),
    retractall(debilidadTallos(_)),
    retractall(enrollamientoHojas(_)),

    retractall(sustaciaSuelo(_)),
    retractall(blanqueamientoTuberculos(_)),

    retractall(ampollasTransparentes(_)),
    retractall(tunelesTuberculos(_)),
    retractall(orificiosTuberculos(_)),

    retractall(tuberculoPodrido(_)),

    retractall(tumoresTallo(_)),
    retractall(tumoresTuberculos(_)),

    retractall(alturaTerreno(_)),
    retractall(puntosRojizosHojas(_)),

    retractall(gota(_)),
    retractall(tizonTemprano(_)),
    retractall(tizonTardio(_)),
    retractall(ronaPolvorosa(_)),
    retractall(torbo(_)),
    retractall(pataNegra(_)),
    retractall(costraNegra(_)),
    retractall(marchitezBacteriana(_)),
    retractall(polilla(_)),
    retractall(polillaGualtemalteca(_)),
    retractall(carbon(_)),
    retractall(roya(_)),
    Result = true;
    Result = false.





