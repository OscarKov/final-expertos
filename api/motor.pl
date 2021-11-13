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

    %tipo de tratamiento natural o quimica
    tratamientoNatural/1, tratamientoQuimico/1,
    % PLAGAS Y ENFERMEDADES DEL CULTIVO DE LA PAPA
    gotaN/1,gotaQ/1, tizonTempranoN/1,tizonTempranoQ/1, tizonTardioN/1,tizonTardioQ/1, 
    ronaPolvorosaN/1,ronaPolvorosaQ/1, torboN/1,torboQ/1, pataNegraN/1,pataNegraQ/1, 
    costraNegraN/1,costraNegraQ/1, marchitezBacterianaN/1,marchitezBacterianaQ/1, polillaN/1,polillaQ/1, 
    polillaGualtemaltecaN/1,polillaGualtemaltecaQ/1, carbonN/1,carbonQ/1, royaN/1,royaQ/1.


solution(_{enfermedad:E, tratamiento: T}) :-
        (gotaN(X), E= "Gota", T="tratamiento natural");
        (gotaQ(X), E= "Gota", T="tratamiento quimico");
        (tizonTempranoN(X), E= "Tizon temprano", T="tratamiento natural");
        (tizonTempranoQ(X), E= "Tizon temprano", T="tratamiento quimico");
        (tizonTardioN(X), E= "Tizon tardio", T="tratamiento natural");
        (tizonTardioQ(X), E= "Tizon tardio", T="tratamiento quimico");
        (ronaPolvorosaN(X), E= "Rona polvorosa", T="tratamiento natural");
        (ronaPolvorosaQ(X), E= "Rona polvorosa", T="tratamiento quimico");
        (torboN(X), E= "Torbó", T="tratamiento natural");
        (torboQ(X), E= "Torbó", T="tratamiento quimico");
        (pataNegraN(X), E= "Pata negra", T="tratamiento natural");
        (pataNegraQ(X), E= "Pata negra", T="tratamiento quimico");
        (costraNegraN(X), E= "Costra negra", T="tratamiento natural");
        (costraNegraQ(X), E= "Costra negra", T="tratamiento quimico");
        (marchitezBacterianaN(X), E= "Marchitez bacteriana", T="tratamiento natural");
        (marchitezBacterianaQ(X), E= "Marchitez bacteriana", T="tratamiento quimico");
        (polillaN(X), E= "Polilla", T="tratamiento natural");
        (polillaQ(X), E= "Polilla", T="tratamiento quimico");
        (polillaGualtemaltecaN(X), E= "Polilla gualtemalteca", T="tratamiento natural");
        (polillaGualtemaltecaQ(X), E= "Polilla gualtemalteca", T="tratamiento quimico");
        (carbonN(X), E= "Carbon", T="tratamiento natural");
        (carbonQ(X), E= "Carbon", T="tratamiento quimico");
        (royaN(X), E= "Roya", T="tratamiento natural");
        (royaQ(X), E= "Roya", T="tratamiento quimico").

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
        puntosRojizosHojas:PRH,

        tratamientoNatural:TNA,
        tratamientoQuimico:TQU

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
    assert(not(puntosRojizosHojas(plantas)))),
    %-------------------tratamientos-----------------
    ((TNA == 1),assert(tratamientoNatural(plantas));
    assert(not(tratamientoNatural(plantas)))),

    ((TQU == 1),assert(tratamientoQuimico(plantas));
    assert(not(tratamientoQuimico(plantas))))

    ),
%    setGota(plantas),
    setTratamientoNaturalGota(plantas),
    setTratamientoQuimicoGota(plantas),
    setTratamientoNaturalTizonTemprano(plantas),
    setTratamientoQuimicoTizonTemprano(plantas),
    setTratamientoNaturalTizonTardio(plantas),
    setTratamientoQuimicoTizonTardio(plantas),
    setTratamientoNaturalRonaPolvoroza(plantas),
    setTratamientoQuimicoRonaPolvoroza(plantas),
    setTratamientoNaturalTorbo(plantas),
    setTratamientoQuimicoTorbo(plantas),
    setTratamientoNaturalPataNegra(plantas),
    setTratamientoQuimicoPataNegra(plantas),
    setTratamientoNaturalCostraNegra(plantas),
    setTratamientoQuimicoCostraNegra(plantas),
    setTratamientoNaturalMarchitezBacteriana(plantas),
    setTratamientoQuimicoMarchitezBacteriana(plantas),
    setTratamientoNaturalPolilla(plantas),
    setTratamientoQuimicoPolilla(plantas),
    setTratamientoNaturalPolillaGualtemalteca(plantas),
    setTratamientoQuimicoPolillaGualtemalteca(plantas),
    setTratamientoNaturalCarbon(plantas),
    setTratamientoQuimicoCarbon(plantas),
    setTratamientoNaturalRoya(plantas),
    setTratamientoQuimicoRoya(plantas).
%    ResBool = true;
%    ResBool = false.

setGota(X) :-
    mohoBellosoEnves(X),
    manchasOsHojas(X),
    manchasOsTallo(X),
    manchasTuberculo(X).

setTizonTemprano(X) :-
    manchasAnilloHojas(X),
    caidaHojas(X),
    follajeAmarillo(X),
    tuberculosSecos(X).

setTizonTardio(X) :-
    lesionesCastanoFollaje(X),
    manchasBordesHojas(X),
    heridadTuberculos(X).

setRonaPolvorosa(X) :-
    lesionesCircular(X),
    tuberculosLesionesHundidas(X),
    tuberculosCorchoso(X),
    lesionesNecroticas(X),
    cavidadesTuberculos(X).

setTorbo(X) :-
    marchitacionFollaje(X),
    marchitacionRaiz(X),
    tuberculosMoho(X).

setPataNegra(X) :-
    colaracionNegraTallos(X),
    olorFuerteRaiz(X),
    decolaracionTuberculos(X).

setCostraNegra(X) :-
    tuberculosAereos(X),
    escasaBrotacionTallos(X),
    debilidadTallos(X),
    enrollamientoHojas(X).

setMarchitezBacteriana(X) :-
    sustaciaSuelo(X),
    blanqueamientoTuberculos(X).

setPolilla(X) :-
    ampollasTransparentes(X),
    tunelesTuberculos(X),
    orificiosTuberculos(X).

setPolillaGuatemalteca(X) :-
    tuberculoPodrido(X).

setCarbon(X) :-
    tumoresTallo(X),
    tumoresTuberculos(X).

setRoya(X) :-
    alturaTerreno(X),
    puntosRojizosHojas(X).

setTratamientoNaturalGota(X) :-
    (
        setGota(X),
        tratamientoNatural(X),
        assert(gotaN(X))
    );
    assert(not(gotaN(X))).

setTratamientoQuimicoGota(X) :-
    (
        setGota(X),
        tratamientoQuimico(X),
        assert(gotaQ(X))
    );
    assert(not(gotaQ(X))).

setTratamientoNaturalTizonTemprano(X) :-
    (
        setTizonTemprano(X),
        tratamientoNatural(X),
        assert(tizonTempranoN(X))
    );
    assert(not(tizonTempranoN(X))).

setTratamientoQuimicoTizonTemprano(X) :-
    (
        setTizonTemprano(X),
        tratamientoQuimico(X),
        assert(tizonTempranoQ(X))
    );
    assert(not(tizonTempranoQ(X))).

setTratamientoNaturalTizonTardio(X) :-
    (
        setTizonTardio(X),
        tratamientoNatural(X),
        assert(tizonTardioN(X))
    );
    assert(not(tizonTardioN(X))).

setTratamientoQuimicoTizonTardio(X) :-
    (
        setTizonTardio(X),
        tratamientoQuimico(X),
        assert(tizonTardioQ(X))
    );
    assert(not(tizonTardioQ(X))).

setTratamientoNaturalRonaPolvoroza(X) :-
    (
        setRonaPolvorosa(X),
        tratamientoNatural(X),
        assert(ronaPolvorosaN(X))
    );
    assert(not(ronaPolvorosaN(X))).

setTratamientoQuimicoRonaPolvoroza(X) :-
    (
        setRonaPolvorosa(X),
        tratamientoQuimico(X),
        assert(ronaPolvorosaQ(X))
    );
    assert(not(ronaPolvorosaQ(X))).

setTratamientoNaturalTorbo(X) :-
    (
        setTorbo(X),
        tratamientoNatural(X),
        assert(torboN(X))
    );
    assert(not(torboN(X))).

setTratamientoQuimicoTorbo(X) :-
    (
        setTorbo(X),
        tratamientoQuimico(X),
        assert(torboQ(X))
    );
    assert(not(torboQ(X))).

setTratamientoNaturalPataNegra(X) :-
    (
        setPataNegra(X),
        tratamientoNatural(X),
        assert(pataNegraN(X))
    );
    assert(not(pataNegraN(X))).

setTratamientoQuimicoPataNegra(X) :-
    (
        setPataNegra(X),
        tratamientoQuimico(X),
        assert(pataNegraQ(X))
    );
    assert(not(pataNegraQ(X))).

setTratamientoNaturalCostraNegra(X) :-
    (
        setCostraNegra(X),
        tratamientoNatural(X),
        assert(costraNegraN(X))
    );
    assert(not(costraNegraN(X))).

setTratamientoQuimicoCostraNegra(X) :-
    (
        setCostraNegra(X),
        tratamientoQuimico(X),
        assert(costraNegraQ(X))
    );
    assert(not(costraNegraQ(X))).

setTratamientoNaturalMarchitezBacteriana(X) :-
    (
        setMarchitezBacteriana(X),
        tratamientoNatural(X),
        assert(marchitezBacterianaN(X))
    );
    assert(not(marchitezBacterianaN(X))).

setTratamientoQuimicoMarchitezBacteriana(X) :-
    (
        setMarchitezBacteriana(X),
        tratamientoQuimico(X),
        assert(marchitezBacterianaQ(X))
    );
    assert(not(marchitezBacterianaQ(X))).

setTratamientoNaturalPolilla(X) :-
    (
        setPolilla(X),
        tratamientoNatural(X),
        assert(polillaN(X))
    );
    assert(not(polillaN(X))).

setTratamientoQuimicoPolilla(X) :-
    (
        setPolilla(X),
        tratamientoQuimico(X),
        assert(polillaQ(X))
    );
    assert(not(polillaQ(X))).

setTratamientoNaturalPolillaGualtemalteca(X) :-
    (
        setPolillaGuatemalteca(X),
        tratamientoNatural(X),
        assert(polillaGualtemaltecaN(X))
    );
    assert(not(polillaGualtemaltecaN(X))).

setTratamientoQuimicoPolillaGualtemalteca(X) :-
    (
        setPolillaGuatemalteca(X),
        tratamientoQuimico(X),
        assert(polillaGualtemaltecaQ(X))
    );
    assert(not(polillaGualtemaltecaQ(X))).

setTratamientoNaturalCarbon(X) :-
    (
        setCarbon(X),
        tratamientoNatural(X),
        assert(carbonN(X))
    );
    assert(not(carbonN(X))).

setTratamientoQuimicoCarbon(X) :-
    (
        setCarbon(X),
        tratamientoQuimico(X),
        assert(carbonQ(X))
    );
    assert(not(carbonQ(X))).

setTratamientoNaturalRoya(X) :-
    (
        setRoya(X),
        tratamientoNatural(X),
        assert(royaN(X))
    );
    assert(not(royaN(X))).

setTratamientoQuimicoRoya(X) :-
    (
        setRoya(X),
        tratamientoQuimico(X),
        assert(royaQ(X))
    );
    assert(not(royaQ(X))).

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

    retractall(gotaN(_)),
    retractall(gotaQ(_)),
    retractall(tizonTempranoN(_)),
    retractall(tizonTempranoQ(_)),
    retractall(tizonTardioN(_)),
    retractall(tizonTardioQ(_)),
    retractall(ronaPolvorosaN(_)),
    retractall(ronaPolvorosaQ(_)),
    retractall(torboN(_)),
    retractall(torboQ(_)),
    retractall(pataNegraN(_)),
    retractall(pataNegraQ(_)),
    retractall(costraNegraN(_)),
    retractall(costraNegraQ(_)),
    retractall(marchitezBacterianaN(_)),
    retractall(marchitezBacterianaQ(_)),
    retractall(polillaN(_)),
    retractall(polillaQ(_)),
    retractall(polillaGualtemaltecaN(_)),
    retractall(polillaGualtemaltecaQ(_)),
    retractall(carbonN(_)),
    retractall(carbonQ(_)),
    retractall(royaN(_)),
    retractall(royaQ(_)),

    retractall(tratamientoNatural(_)),
    retractall(tratamientoQuimico(_)),

    Result = true;
    Result = false.