:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_json)).

:- use_module(motor).

:- encoding(utf8).


% Rutas del API

:- http_handler('/', handle_home, []).

:- http_handler('/send', handle_post, []).

:- http_handler('/solution', handle_solution, []).

:- http_handler('/clear', handle_clear, []).

get_solution(Resp) :-
    solution(ResDict),
    Resp = ResDict
    ;
    Resp =
    _{
        error: 1,
        msg: "No se puede obtener solucion."
    }.


perform_clear(_, ResDict) :-
    clearFacts(_, Result),
    (Result == true),
    ResDict =
    _{
        msg: "Limpieza correcta.",
        error: 0
    };
    ResDict = _{
        msg: "Limpieza correcta.",
        error: 0
    }.


% Servidor HTTP Prolog
% Maneja la respuesta a la raiz "/"
handle_home(_) :-
    Ver is 1.0,
    reply_json_dict(
        _{
            msg: "Api del Sistema Experto",
            ver: Ver
        }
    ).

% Maneja la peticion GET a "/solution".
handle_solution(_) :-
    get_solution(Result),
    reply_json_dict(Result).

% Maneja la peticion POST a "/send"
handle_post(Request) :-
    http_read_json_dict(Request, Query),
    createFacts(Query),
    Result = _{error: 0, msg: "Recibido."},
    reply_json_dict(Result).

% Maneja la peticion GET a "/clear"
handle_clear(_) :-
    perform_clear(_, Resp),
    reply_json_dict(Resp).


server(Port) :-
    http_server(http_dispatch, [port(Port)]).

:- initialization(server(8081)).
% Fin Servidor












