:- module(options, [get_options/1]).

:- encoding(utf8).
get_options(ResList) :-
    ResList = [
        _{
            key: "mohoBellosoEnves",
            name: "Polvo blanco en la parte inferior de las hojas",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "manchasOsHojas",
            name: "Manchas oscuras en las hojas",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "manchasOsTallo",
            name: "Manchas oscuras en el tallo",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "manchasTuberculo",
            name: "Manchas color gris rojizo en los tubérculos",
            imgUrl: "http",
            value: 0
        },
        %-------------------------------------
        _{
            key: "manchasAnilloHojas",
            name: "Manchas marcadas con anillos en las hojas superiores",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "caidaHojas",
            name: "Caida de hoja",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "follajeAmarillo",
            name: "Color amarillento en el follaje",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "tuberculosSecos",
            name: "Los tubérculos se encuentran secos",
            imgUrl: "http",
            value: 0
        },
        %-------------------------------------
        _{
            key: "lesionesCastanoFollaje",
            name: "Lesiones color castaño en el follaje",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "manchasBordesHojas",
            name: "Manchas en los bordes de las hojas",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "heridadTuberculos",
            name: "Heridas en los tubérculos",
            imgUrl: "http",
            value: 0
        },
        %-------------------------------------
        _{
            key: "lesionesCircular",
            name: "Lesiones levantadas de forma circular",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "tuberculosLesionesHundidas",
            name: "Lesiones hundidas en los tubérculos",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "tuberculosCorchoso",
            name: "Aspecto corchoso en los tubérculos",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "lesionesNecroticas",
            name: "Lesiones necroticas de forma reticular o estrellada",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "cavidadesTuberculos",
            name: "Cavidades algo profundas en los tubérculos",
            imgUrl: "http",
            value: 0
        },
        %-------------------------------------
        _{
            key: "marchitacionFollaje",
            name: "Marchitacion en el follaje",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "marchitacionRaiz",
            name: "marchitacion en la raiz",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "tuberculosMoho",
            name: "Tuberculos cubiertos de moho",
            imgUrl: "http",
            value: 0
        },
        %-------------------------------------
        _{
            key: "colaracionNegraTallos",
            name: "Coloracion negra en los tallos aereos",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "olorFuerteRaiz",
            name: "Olor fuerte en la raiz",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "decolaracionTuberculos",
            name: "Decoloracion en los tubérculos",
            imgUrl: "http",
            value: 0
        },
        %-------------------------------------
        _{
            key: "tuberculosAereos",
            name: "Formacion de tuberculos aereos",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "escasaBrotacionTallos",
            name: "Escasa brotacion de tallos",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "debilidadTallos",
            name: "Tallos debiles",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "enrollamientoHojas",
            name: "Hojas parcialmente enrolladas",
            imgUrl: "http",
            value: 0
        },
        %-------------------------------------
        _{
            key: "sustaciaSuelo",
            name: "Se observa sustancia adherida al suelo",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "blanqueamientoTuberculos",
            name: "Tubérculos blanquesinos",
            imgUrl: "http",
            value: 0
        },
        %-------------------------------------
        _{
            key: "ampollasTransparentes",
            name: "Hojas con anpollas transparentes",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "tunelesTuberculos",
            name: "Túneles alargados en la superficie de los tubérculos",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "orificiosTuberculos",
            name: "Orificios en los tubérculos",
            imgUrl: "http",
            value: 0
        },
        %-------------------------------------
        _{
            key: "tuberculoPodrido",
            name: "Tuberculo podrido",
            imgUrl: "http",
            value: 0
        },
        %-------------------------------------
        _{
            key: "tumoresTallo",
            name: "Tumores carbonosos en el tallo",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "tumoresTuberculos",
            name: "Tumores carbonosos en los tubérculos",
            imgUrl: "http",
            value: 0
        },
        %-------------------------------------
        _{
            key: "alturaTerreno",
            name: "Cultivo se encuentra a 3000 y 3800 metros de altura sobre el nivel del mar ",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "puntosRojizosHojas",
            name: "Puntos color marron rojizo en las hojas",
            imgUrl: "http",
            value: 0
        }
    ].