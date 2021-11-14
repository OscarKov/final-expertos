:- module(options, [get_options/1]).

:- encoding(utf8).
get_options(ResList) :-
    ResList = [
        _{
            key: "mohoBellosoEnves",
            name: "Polvo blanco en la parte inferior de las hojas",
            imgUrl: "https://www.agrolink.com.br/upload/problemas/Erysiphe_cichoracearum51.jpg",
            value: 0
        },
        _{
            key: "manchasOsHojas",
            name: "Manchas oscuras en las hojas",
            imgUrl: "http://barrix.in/img/Potato%2FBacteria%20and%20Fungi%2Fpotatobd001.jpg",
            value: 0
        },
        _{
            key: "manchasOsTallo",
            name: "Manchas oscuras en el tallo",
            imgUrl: "https://gardenlux.designluxpro.com/wp-content/uploads/2020/07/23-5-768x512.jpg",
            value: 0
        },
        _{
            key: "manchasTuberculo",
            name: "Manchas color gris rojizo en los tubérculos",
            imgUrl: "https://i1.wp.com/periergeia.org/wp-content/uploads/2019/08/01338728.jpg?resize=500%2C346&ssl=1",
            value: 0
        },
        %-------------------------------------
        _{
            key: "manchasAnilloHojas",
            name: "Manchas marcadas con anillos en las hojas superiores",
            imgUrl: "https://media.sciencephoto.com/image/b2600118/800wm/B2600118-Early_blight_on_a_potato_plant.jpg",
            value: 0
        },
        _{
            key: "caidaHojas",
            name: "Caida de hoja",
            imgUrl: "https://www.mundohuerto.com/images/insertadas/cultivos/verticilium-patata.jpg",
            value: 0
        },
        _{
            key: "follajeAmarillo",
            name: "Color amarillento en el follaje",
            imgUrl: "http://bugwoodcloud.org/images/384x256/5362486.jpg",
            value: 0
        },
        _{
            key: "tuberculosSecos",
            name: "Los tubérculos se encuentran secos",
            imgUrl: "https://www.pesticidy.ru/ps-content/plant_diseases/pictures/146_4_main.jpg",
            value: 0
        },
        %-------------------------------------
        _{
            key: "lesionesCastanoFollaje",
            name: "Lesiones color castaño en el follaje",
            imgUrl: "http://sarigroup.persiangig.com/Alternaria%20disease/pinta.jpg",
            value: 0
        },
        _{
            key: "manchasBordesHojas",
            name: "Manchas en los bordes de las hojas",
            imgUrl: "http://www.papachile.cl/wp-content/uploads/2016/11/ciclo.jpg",
            value: 0
        },
        _{
            key: "heridadTuberculos",
            name: "Heridas en los tubérculos",
            imgUrl: "https://www.pregonagropecuario.com/assets/images/upload/tizon_papa.jpg",
            value: 0
        },
        %-------------------------------------
        _{
            key: "lesionesCircular",
            name: "Lesiones levantadas de forma circular",
            imgUrl: "https://www.argenpapa.com.ar/images/noticias/1589409725_big.jpg",
            value: 0
        },
        _{
            key: "tuberculosLesionesHundidas",
            name: "Lesiones hundidas en los tubérculos",
            imgUrl: "https://3.bp.blogspot.com/-eOml9gjj-gs/UC_lPMFFrfI/AAAAAAAABOg/ZZBuYW6vObQ/s320/Ro%25C3%25B1a+%2528Spongospora+subterranea.png",
            value: 0
        },
        _{
            key: "tuberculosCorchoso",
            name: "Aspecto corchoso en los tubérculos",
            imgUrl: "https://www.jardineriaon.com/wp-content/uploads/2017/12/patata-afectada.jpg",
            value: 0
        },
        _{
            key: "lesionesNecroticas",
            name: "Lesiones necroticas de forma reticular o estrellada",
            imgUrl: "https://www.cenyrolnicze.pl/images/2018/inne/1._Aardappel_Phytophthora_Fresco.jpg",
            value: 0
        },
        _{
            key: "cavidadesTuberculos",
            name: "Cavidades algo profundas en los tubérculos",
            imgUrl: "https://herbariofitopatologia.agro.uba.ar/wp-content/uploads/2016/03/1-Sarna-1-768x576.jpg?v=1622669396",
            value: 0
        },
        %-------------------------------------
        _{
            key: "marchitacionFollaje",
            name: "Marchitacion en el follaje",
            imgUrl: "https://cdn.pixabay.com/photo/2015/09/18/20/36/withered-946360_960_720.jpg",
            value: 0
        },
        _{
            key: "marchitacionRaiz",
            name: "marchitacion en la raiz",
            imgUrl: "https://guide.utcrops.com/wp-content/uploads/2017/03/Take-all77-242x300.png",
            value: 0
        },
        _{
            key: "tuberculosMoho",
            name: "Tuberculos cubiertos de moho",
            imgUrl: "https://www.agro-tecnologia-tropical.com/fs_files/user_img/Fusarium,%20aspergilus%20y%20rizopus%20en%20semilla%20de%20papa.jpg",
            value: 0
        },
        %-------------------------------------
        _{
            key: "colaracionNegraTallos",
            name: "Coloracion negra en los tallos aereos",
            imgUrl: "https://att.191.cn/attachment/thumb/Mon_2008/3_343861_bee3163a01ff84b.png?428",
            value: 0
        },
        _{
            key: "olorFuerteRaiz",
            name: "Olor fuerte en la raiz",
            imgUrl: "http://esperancino.com.ar/wp-content/uploads/2019/02/mal-olor.jpg",
            value: 0
        },
        _{
            key: "decolaracionTuberculos",
            name: "Decoloracion en los tubérculos",
            imgUrl: "https://thumbs.dreamstime.com/b/fresh-organic-potato-stand-out-many-large-background-potatos-market-heap-root-close-up-texture-macro-177348134.jpg",
            value: 0
        },
        %-------------------------------------
        _{
            key: "tuberculosAereos",
            name: "Formacion de tuberculos aereos",
            imgUrl: "https://www.goia.es/uploads/sintomas/172/images/fe747bd2-f1c4-48bb-9e86-2c20eda8ad01.png",
            value: 0
        },
        _{
            key: "escasaBrotacionTallos",
            name: "Escasa brotacion de tallos",
            imgUrl: "http://www.njwa.jp/tenzoh-tnr/static/byogai/data/img/kuroaza2.jpg",
            value: 0
        },
        _{
            key: "debilidadTallos",
            name: "Tallos debiles",
            imgUrl: "http://www.omafra.gov.on.ca/IPM/images/potatoes/diseases/late-blight/potato_late-blight_12_zoom.jpg",
            value: 0
        },
        _{
            key: "enrollamientoHojas",
            name: "Hojas parcialmente enrolladas",
            imgUrl: "https://teplichniku.ru/images2/zakr_verhnie_list_pomidor-4.jpg",
            value: 0
        },
        %-------------------------------------
        _{
            key: "sustaciaSuelo",
            name: "Se observa sustancia adherida al suelo",
            imgUrl: "http://agriculturers.com/wp-content/uploads/2015/10/Abono-organico.jpg",
            value: 0
        },
        _{
            key: "blanqueamientoTuberculos",
            name: "tubérculos blanquesinos",
            imgUrl: "https://th.bing.com/th/id/OIP.TVm5U5elnlxzH6qjJd41xwHaE6?pid=ImgDet&w=640&h=425&rs=1",
            value: 0
        },
        %-------------------------------------
        _{
            key: "ampollasTransparentes",
            name: "Hojas con anpollas transparentes",
            imgUrl: "https://objects.liquidweb.services/images/201612/thomas_wilson_RK2KQKPK8K10AQHSAQC0AQLSAQRSGKBKAQLSWQ30MKBKNQJ09QB00KA02QT0SK6KHKEKKKOK5KZSVQAKXK6KZKPK6QC0.jpg",
            value: 0
        },
        _{
            key: "tunelesTuberculos",
            name: "Túneles alargados en la superficie de los tubérculos",
            imgUrl: "https://www.papachile.cl/wp-content/uploads/2017/02/polilla.jpg",
            value: 0
        },
        _{
            key: "orificiosTuberculos",
            name: "Orificios en los tubérculos",
            imgUrl: "http://potato.gldplants.com/jagaimosodatekata/IMG_0415_20120629_2315.jpg",
            value: 0
        },
        %-------------------------------------
        _{
            key: "tuberculoPodrido",
            name: "Tuberculo podrido",
            imgUrl: "https://mysuenos.com/wp-content/uploads/2019/07/papas-podridas.jpg",
            value: 0
        },
        %-------------------------------------
        _{
            key: "tumoresTallo",
            name: "Tumores carbonosos en el tallo",
            imgUrl: "https://p2.itc.cn/q_70/images03/20200606/8b58244466764f55bc3352248dcb8d67.jpeg",
            value: 0
        },
        _{
            key: "tumoresTuberculos",
            name: "Tumores carbonosos en los tubérculos",
            imgUrl: "https://i1.wp.com/ellinikahoaxes.gr/wp-content/uploads/2013/06/images.jpg?w=696",
            value: 0
        },
        %-------------------------------------
        _{
            key: "alturaTerreno",
            name: "Cultivo se encuentra a 3000 y 3800 metros de altura sobre el nivel del mar ",
            imgUrl: "https://st3.depositphotos.com/3358145/13535/v/600/depositphotos_135358934-stock-illustration-vector-illustration-with-high-altitude.jpg",
            value: 0
        },
        _{
            key: "puntosRojizosHojas",
            name: "Puntos color marron rojizo en las hojas",
            imgUrl: "https://www.cnhnb.com/zhuanti/qmnjzt/images/p14.jpg",
            value: 0
        }
    ].
