PGDMP                 	        z         	   Matricula    14.2    14.2 %               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16594 	   Matricula    DATABASE     o   CREATE DATABASE "Matricula" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Latin America.1252';
    DROP DATABASE "Matricula";
                postgres    false            ?            1259    16612    Cursos    TABLE     ?   CREATE TABLE public."Cursos" (
    "idCurso" integer NOT NULL,
    "idProfesor" integer NOT NULL,
    horario text NOT NULL,
    creditos integer NOT NULL,
    carrera text NOT NULL,
    "nombreCurso" text NOT NULL
);
    DROP TABLE public."Cursos";
       public         heap    postgres    false            ?            1259    16611    Cursos_idCurso_seq    SEQUENCE     ?   ALTER TABLE public."Cursos" ALTER COLUMN "idCurso" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Cursos_idCurso_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            ?            1259    16640    Estudiantes    TABLE     ?   CREATE TABLE public."Estudiantes" (
    carnet integer NOT NULL,
    "nombreEstudiante" text NOT NULL,
    "horaMatricula" time without time zone NOT NULL
);
 !   DROP TABLE public."Estudiantes";
       public         heap    postgres    false            ?            1259    16664    Grupos    TABLE     ?   CREATE TABLE public."Grupos" (
    "idGrupo" integer NOT NULL,
    "idCurso" integer NOT NULL,
    "numeroGrupo" integer NOT NULL,
    "idSede" integer NOT NULL
);
    DROP TABLE public."Grupos";
       public         heap    postgres    false            ?            1259    16663    Grupos_idGrupo_seq    SEQUENCE     ?   ALTER TABLE public."Grupos" ALTER COLUMN "idGrupo" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Grupos_idGrupo_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            ?            1259    16648 
   Matriculas    TABLE     ?   CREATE TABLE public."Matriculas" (
    "idMatricula" integer NOT NULL,
    "idGrupo" integer NOT NULL,
    "idEstudiante" integer NOT NULL
);
     DROP TABLE public."Matriculas";
       public         heap    postgres    false            ?            1259    16647    Matriculas_idMatricula_seq    SEQUENCE     ?   ALTER TABLE public."Matriculas" ALTER COLUMN "idMatricula" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Matriculas_idMatricula_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            ?            1259    16596 
   Profesores    TABLE     ?   CREATE TABLE public."Profesores" (
    "idProfesor" integer NOT NULL,
    "nombreProfesor" text NOT NULL,
    telefono text NOT NULL,
    correo text NOT NULL
);
     DROP TABLE public."Profesores";
       public         heap    postgres    false            ?            1259    16595    Profesores_idProfesor_seq    SEQUENCE     ?   ALTER TABLE public."Profesores" ALTER COLUMN "idProfesor" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Profesores_idProfesor_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210            ?            1259    16604    Sedes    TABLE        CREATE TABLE public."Sedes" (
    "idSede" integer NOT NULL,
    "nombreSede" text NOT NULL,
    localizacion text NOT NULL
);
    DROP TABLE public."Sedes";
       public         heap    postgres    false            ?            1259    16603    Sedes_idSede_seq    SEQUENCE     ?   ALTER TABLE public."Sedes" ALTER COLUMN "idSede" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Sedes_idSede_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212                      0    16612    Cursos 
   TABLE DATA                 public          postgres    false    214   ?(                 0    16640    Estudiantes 
   TABLE DATA                 public          postgres    false    215   ?)                 0    16664    Grupos 
   TABLE DATA                 public          postgres    false    219   +                 0    16648 
   Matriculas 
   TABLE DATA                 public          postgres    false    217   ?+                 0    16596 
   Profesores 
   TABLE DATA                 public          postgres    false    210   },                 0    16604    Sedes 
   TABLE DATA                 public          postgres    false    212   ?-       !           0    0    Cursos_idCurso_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Cursos_idCurso_seq"', 7, true);
          public          postgres    false    213            "           0    0    Grupos_idGrupo_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Grupos_idGrupo_seq"', 6, true);
          public          postgres    false    218            #           0    0    Matriculas_idMatricula_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Matriculas_idMatricula_seq"', 9, true);
          public          postgres    false    216            $           0    0    Profesores_idProfesor_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Profesores_idProfesor_seq"', 4, true);
          public          postgres    false    209            %           0    0    Sedes_idSede_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Sedes_idSede_seq"', 3, true);
          public          postgres    false    211            y           2606    16618    Cursos Cursos_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Cursos"
    ADD CONSTRAINT "Cursos_pkey" PRIMARY KEY ("idCurso");
 @   ALTER TABLE ONLY public."Cursos" DROP CONSTRAINT "Cursos_pkey";
       public            postgres    false    214            {           2606    16646    Estudiantes Estudiantes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Estudiantes"
    ADD CONSTRAINT "Estudiantes_pkey" PRIMARY KEY (carnet);
 J   ALTER TABLE ONLY public."Estudiantes" DROP CONSTRAINT "Estudiantes_pkey";
       public            postgres    false    215                       2606    16668    Grupos Grupos_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Grupos"
    ADD CONSTRAINT "Grupos_pkey" PRIMARY KEY ("idGrupo");
 @   ALTER TABLE ONLY public."Grupos" DROP CONSTRAINT "Grupos_pkey";
       public            postgres    false    219            }           2606    16652    Matriculas Matriculas_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."Matriculas"
    ADD CONSTRAINT "Matriculas_pkey" PRIMARY KEY ("idMatricula");
 H   ALTER TABLE ONLY public."Matriculas" DROP CONSTRAINT "Matriculas_pkey";
       public            postgres    false    217            u           2606    16602    Profesores Profesores_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Profesores"
    ADD CONSTRAINT "Profesores_pkey" PRIMARY KEY ("idProfesor");
 H   ALTER TABLE ONLY public."Profesores" DROP CONSTRAINT "Profesores_pkey";
       public            postgres    false    210            w           2606    16610    Sedes Sedes_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Sedes"
    ADD CONSTRAINT "Sedes_pkey" PRIMARY KEY ("idSede");
 >   ALTER TABLE ONLY public."Sedes" DROP CONSTRAINT "Sedes_pkey";
       public            postgres    false    212            ?           2606    16674    Grupos FK_Curso    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Grupos"
    ADD CONSTRAINT "FK_Curso" FOREIGN KEY ("idCurso") REFERENCES public."Cursos"("idCurso") NOT VALID;
 =   ALTER TABLE ONLY public."Grupos" DROP CONSTRAINT "FK_Curso";
       public          postgres    false    3193    214    219            ?           2606    16669    Grupos FK_Sedes    FK CONSTRAINT     {   ALTER TABLE ONLY public."Grupos"
    ADD CONSTRAINT "FK_Sedes" FOREIGN KEY ("idSede") REFERENCES public."Sedes"("idSede");
 =   ALTER TABLE ONLY public."Grupos" DROP CONSTRAINT "FK_Sedes";
       public          postgres    false    3191    219    212            ?           2606    16689    Matriculas FK_estudiante    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Matriculas"
    ADD CONSTRAINT "FK_estudiante" FOREIGN KEY ("idEstudiante") REFERENCES public."Estudiantes"(carnet) NOT VALID;
 F   ALTER TABLE ONLY public."Matriculas" DROP CONSTRAINT "FK_estudiante";
       public          postgres    false    217    215    3195            ?           2606    16679    Matriculas FK_id_grupo    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Matriculas"
    ADD CONSTRAINT "FK_id_grupo" FOREIGN KEY ("idGrupo") REFERENCES public."Grupos"("idGrupo") NOT VALID;
 D   ALTER TABLE ONLY public."Matriculas" DROP CONSTRAINT "FK_id_grupo";
       public          postgres    false    219    217    3199            ?           2606    16619    Cursos FK_profesor    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Cursos"
    ADD CONSTRAINT "FK_profesor" FOREIGN KEY ("idProfesor") REFERENCES public."Profesores"("idProfesor");
 @   ALTER TABLE ONLY public."Cursos" DROP CONSTRAINT "FK_profesor";
       public          postgres    false    210    214    3189               7  x?Ւ?N?@E??^h0PZ??T+1?-5?$>Na[? [g!??K1Q???fsg??9wrY??q
,J?plw??/?UKJ*Ɔ(Nڰ@?G?{?$??E?????H?qB???Վx?q?,?cvˢ;H??4?@?\?????ص@????ǞsǴ`??l??y??+(8?'????k?????A??{uN???J???<HM5z??nn???s?E0?????d?湐5 ?G??
?? <̿<,:?{n"Ų?ԭp??x??}???y|ּ>???p?u?????c??r?൞?YH??yG??h?\??b         %  x????j?0??y
?KZ(#???f??#c?X???$?38?p???h?=E_lJW???,	???_m?r??j??/?*?݅??|/Q;1?0??j?j3?V\?!?>?????W???xy/?%?tX??D[o%??Vj??Q&?x????n4??kq?u??l?i^???@jӋ?(TK('??-@???4?@????Z?^u??r?pBai?]e??N(?^I᦭??/?? 4??T?8??e?JK?Mh?HBjLg?5?QHM4?-?o Y&M'y???CvBx????0~?L?+??         ?   x???v
Q???W((M??L?Sr/*-?/VR?P?L??t?L?Ңb03?47?(I&85%UIS???5(?????]!828??W!??'?B+h?(@??5?'-6?jD??!?I:[l?؈???m5???f`[?Am??? '??         ?   x????
?0??OzR(?~蔝+R??vt?CA6Q???8?????~?'?P??@???u{@y3??5}3!????7?`?l4?g]?4?N7????բ,?E???D??z?T??iH	?v?????t????-?ӹ??$?2Bپz?????_?n?????H??}?C?NO??S?x/?{?RJ,           x????j?@ ??O1x1?O[???F???Am?ǉNu7]??7??O??j(?/?\vv~>&[i^B?.7p???W3{?ՁZ???ab??'?]??j??~U:tPR?P)?IMa?K?<[d?%?E??`7~I/o?g.k?
??2??'??1?8???9?\K-=?bV?ƙ?[???CY??$`?wܨ???O?-cw7???????p<?DxD??
V?;./?8b/????(+lP_??Ar?'ސ?B??>????^&??4??[????S^??         ?   x????
?@н_q??V?V???XP?q|Ā??MԺO??R?O???????(? ?,?????L?????????q???i%]ڻ6???1JS?xuRY??q?;D??0?M?C?u???}?Drm??x?ɟ;?_??V?????_T??=[?y??Ԁ?i????ץ?Ö??1??5?? ?????y/=??}     