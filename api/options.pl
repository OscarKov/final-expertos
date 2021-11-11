:- module(options, [get_options/1]).

get_options(ResList) :-
    ResList = [
        _{
            key: "mohoBellosoEnves",
            name: "prueba",
            imgUrl: "http",
            value: 0
        },
        _{
            key: "manchasOsHojas",
            name: "prueba",
            imgUrl: "http",
            value: 0
        }
    ].