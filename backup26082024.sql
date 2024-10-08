PGDMP                          |         	   dbmdawali    15.3    15.3 T    k           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            l           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            m           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            n           1262    98360 	   dbmdawali    DATABASE     {   CREATE DATABASE dbmdawali WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Peru.1252';
    DROP DATABASE dbmdawali;
                postgres    false            �            1259    148399    archivo_krecord    TABLE       CREATE TABLE public.archivo_krecord (
    id_archivo_krec integer NOT NULL,
    estadoreg boolean,
    indice_archivo integer,
    nombre_archivo character varying(200),
    tipo_archivo integer,
    url character varying(200),
    id_krecord integer NOT NULL
);
 #   DROP TABLE public.archivo_krecord;
       public         heap    postgres    false            �            1259    148398 #   archivo_krecord_id_archivo_krec_seq    SEQUENCE     �   CREATE SEQUENCE public.archivo_krecord_id_archivo_krec_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.archivo_krecord_id_archivo_krec_seq;
       public          postgres    false    225            o           0    0 #   archivo_krecord_id_archivo_krec_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.archivo_krecord_id_archivo_krec_seq OWNED BY public.archivo_krecord.id_archivo_krec;
          public          postgres    false    224            �            1259    148294 	   categoria    TABLE     �   CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    description character varying(100) NOT NULL,
    estadoreg boolean NOT NULL
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    148293    categoria_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categoria_id_categoria_seq;
       public          postgres    false    215            p           0    0    categoria_id_categoria_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categoria_id_categoria_seq OWNED BY public.categoria.id_categoria;
          public          postgres    false    214            �            1259    148406    kpicture    TABLE     �   CREATE TABLE public.kpicture (
    id_kpicture integer NOT NULL,
    filename character varying(255),
    filetype character varying(255),
    value bytea
);
    DROP TABLE public.kpicture;
       public         heap    postgres    false            �            1259    148405    kpicture_id_kpicture_seq    SEQUENCE     �   CREATE SEQUENCE public.kpicture_id_kpicture_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.kpicture_id_kpicture_seq;
       public          postgres    false    227            q           0    0    kpicture_id_kpicture_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.kpicture_id_kpicture_seq OWNED BY public.kpicture.id_kpicture;
          public          postgres    false    226            �            1259    148415    krecord    TABLE       CREATE TABLE public.krecord (
    id_krecord integer NOT NULL,
    des_solucion character varying(2000) NOT NULL,
    description character varying(2000) NOT NULL,
    fecha_reg timestamp(6) without time zone NOT NULL,
    issue character varying(7) NOT NULL,
    nombre_archivo character varying(200),
    ticket character varying(7),
    title_error character varying(200) NOT NULL,
    id_categoria integer NOT NULL,
    id_parametro integer NOT NULL,
    id_consulta integer NOT NULL,
    id_sistema integer NOT NULL
);
    DROP TABLE public.krecord;
       public         heap    postgres    false            �            1259    148414    krecord_id_krecord_seq    SEQUENCE     �   CREATE SEQUENCE public.krecord_id_krecord_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.krecord_id_krecord_seq;
       public          postgres    false    229            r           0    0    krecord_id_krecord_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.krecord_id_krecord_seq OWNED BY public.krecord.id_krecord;
          public          postgres    false    228            �            1259    148539    menu    TABLE     �   CREATE TABLE public.menu (
    id_menu integer NOT NULL,
    icon character varying(20) NOT NULL,
    name character varying(20) NOT NULL,
    url character varying(30) NOT NULL
);
    DROP TABLE public.menu;
       public         heap    postgres    false            �            1259    156642 	   menu_role    TABLE     ^   CREATE TABLE public.menu_role (
    id_menu integer NOT NULL,
    id_role integer NOT NULL
);
    DROP TABLE public.menu_role;
       public         heap    postgres    false            �            1259    148319    nota    TABLE     �   CREATE TABLE public.nota (
    id_nota integer NOT NULL,
    descripcion character varying(2000) NOT NULL,
    estadoreg boolean NOT NULL,
    ticket character varying(100) NOT NULL
);
    DROP TABLE public.nota;
       public         heap    postgres    false            �            1259    148318    nota_id_nota_seq    SEQUENCE     �   CREATE SEQUENCE public.nota_id_nota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.nota_id_nota_seq;
       public          postgres    false    217            s           0    0    nota_id_nota_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.nota_id_nota_seq OWNED BY public.nota.id_nota;
          public          postgres    false    216            �            1259    148328 	   parametro    TABLE       CREATE TABLE public.parametro (
    id_parametro integer NOT NULL,
    correlativo integer NOT NULL,
    descripcion character varying(100) NOT NULL,
    estadoreg boolean,
    fechamod date,
    fechareg date,
    prefijo integer NOT NULL,
    titulo character varying(255) NOT NULL
);
    DROP TABLE public.parametro;
       public         heap    postgres    false            �            1259    148327    parametro_id_parametro_seq    SEQUENCE     �   CREATE SEQUENCE public.parametro_id_parametro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.parametro_id_parametro_seq;
       public          postgres    false    219            t           0    0    parametro_id_parametro_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.parametro_id_parametro_seq OWNED BY public.parametro.id_parametro;
          public          postgres    false    218            �            1259    148335 	   rconsulta    TABLE     
  CREATE TABLE public.rconsulta (
    id_consulta integer NOT NULL,
    estadoreg boolean,
    prevquery character varying(9000) NOT NULL,
    primquery character varying(9000) NOT NULL,
    titulo character varying(400) NOT NULL,
    id_parametro integer NOT NULL
);
    DROP TABLE public.rconsulta;
       public         heap    postgres    false            �            1259    148334    rconsulta_id_consulta_seq    SEQUENCE     �   CREATE SEQUENCE public.rconsulta_id_consulta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.rconsulta_id_consulta_seq;
       public          postgres    false    221            u           0    0    rconsulta_id_consulta_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.rconsulta_id_consulta_seq OWNED BY public.rconsulta.id_consulta;
          public          postgres    false    220            �            1259    148547    role    TABLE     �   CREATE TABLE public.role (
    id_role integer NOT NULL,
    description character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    148344    sistema    TABLE     �   CREATE TABLE public.sistema (
    id_sistema integer NOT NULL,
    description character varying(100) NOT NULL,
    estadoreg boolean NOT NULL
);
    DROP TABLE public.sistema;
       public         heap    postgres    false            �            1259    148343    sistema_id_sistema_seq    SEQUENCE     �   CREATE SEQUENCE public.sistema_id_sistema_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.sistema_id_sistema_seq;
       public          postgres    false    223            v           0    0    sistema_id_sistema_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.sistema_id_sistema_seq OWNED BY public.sistema.id_sistema;
          public          postgres    false    222            �            1259    148552    usuario    TABLE     �   CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    enabled boolean NOT NULL,
    password character varying(60) NOT NULL,
    username character varying(60) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    148557    usuario_role    TABLE     d   CREATE TABLE public.usuario_role (
    id_usuario integer NOT NULL,
    id_role integer NOT NULL
);
     DROP TABLE public.usuario_role;
       public         heap    postgres    false            �           2604    148402    archivo_krecord id_archivo_krec    DEFAULT     �   ALTER TABLE ONLY public.archivo_krecord ALTER COLUMN id_archivo_krec SET DEFAULT nextval('public.archivo_krecord_id_archivo_krec_seq'::regclass);
 N   ALTER TABLE public.archivo_krecord ALTER COLUMN id_archivo_krec DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    148297    categoria id_categoria    DEFAULT     �   ALTER TABLE ONLY public.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.categoria_id_categoria_seq'::regclass);
 E   ALTER TABLE public.categoria ALTER COLUMN id_categoria DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    148409    kpicture id_kpicture    DEFAULT     |   ALTER TABLE ONLY public.kpicture ALTER COLUMN id_kpicture SET DEFAULT nextval('public.kpicture_id_kpicture_seq'::regclass);
 C   ALTER TABLE public.kpicture ALTER COLUMN id_kpicture DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    148418    krecord id_krecord    DEFAULT     x   ALTER TABLE ONLY public.krecord ALTER COLUMN id_krecord SET DEFAULT nextval('public.krecord_id_krecord_seq'::regclass);
 A   ALTER TABLE public.krecord ALTER COLUMN id_krecord DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    148322    nota id_nota    DEFAULT     l   ALTER TABLE ONLY public.nota ALTER COLUMN id_nota SET DEFAULT nextval('public.nota_id_nota_seq'::regclass);
 ;   ALTER TABLE public.nota ALTER COLUMN id_nota DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    148331    parametro id_parametro    DEFAULT     �   ALTER TABLE ONLY public.parametro ALTER COLUMN id_parametro SET DEFAULT nextval('public.parametro_id_parametro_seq'::regclass);
 E   ALTER TABLE public.parametro ALTER COLUMN id_parametro DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    148338    rconsulta id_consulta    DEFAULT     ~   ALTER TABLE ONLY public.rconsulta ALTER COLUMN id_consulta SET DEFAULT nextval('public.rconsulta_id_consulta_seq'::regclass);
 D   ALTER TABLE public.rconsulta ALTER COLUMN id_consulta DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    148347    sistema id_sistema    DEFAULT     x   ALTER TABLE ONLY public.sistema ALTER COLUMN id_sistema SET DEFAULT nextval('public.sistema_id_sistema_seq'::regclass);
 A   ALTER TABLE public.sistema ALTER COLUMN id_sistema DROP DEFAULT;
       public          postgres    false    223    222    223            _          0    148399    archivo_krecord 
   TABLE DATA           �   COPY public.archivo_krecord (id_archivo_krec, estadoreg, indice_archivo, nombre_archivo, tipo_archivo, url, id_krecord) FROM stdin;
    public          postgres    false    225   ?e       U          0    148294 	   categoria 
   TABLE DATA           I   COPY public.categoria (id_categoria, description, estadoreg) FROM stdin;
    public          postgres    false    215   %}       a          0    148406    kpicture 
   TABLE DATA           J   COPY public.kpicture (id_kpicture, filename, filetype, value) FROM stdin;
    public          postgres    false    227   y~       c          0    148415    krecord 
   TABLE DATA           �   COPY public.krecord (id_krecord, des_solucion, description, fecha_reg, issue, nombre_archivo, ticket, title_error, id_categoria, id_parametro, id_consulta, id_sistema) FROM stdin;
    public          postgres    false    229   �~       d          0    148539    menu 
   TABLE DATA           8   COPY public.menu (id_menu, icon, name, url) FROM stdin;
    public          postgres    false    230   ��       h          0    156642 	   menu_role 
   TABLE DATA           5   COPY public.menu_role (id_menu, id_role) FROM stdin;
    public          postgres    false    234   v�       W          0    148319    nota 
   TABLE DATA           G   COPY public.nota (id_nota, descripcion, estadoreg, ticket) FROM stdin;
    public          postgres    false    217   ��       Y          0    148328 	   parametro 
   TABLE DATA           {   COPY public.parametro (id_parametro, correlativo, descripcion, estadoreg, fechamod, fechareg, prefijo, titulo) FROM stdin;
    public          postgres    false    219   ��       [          0    148335 	   rconsulta 
   TABLE DATA           g   COPY public.rconsulta (id_consulta, estadoreg, prevquery, primquery, titulo, id_parametro) FROM stdin;
    public          postgres    false    221   '�       e          0    148547    role 
   TABLE DATA           :   COPY public.role (id_role, description, name) FROM stdin;
    public          postgres    false    231   ��       ]          0    148344    sistema 
   TABLE DATA           E   COPY public.sistema (id_sistema, description, estadoreg) FROM stdin;
    public          postgres    false    223   :�       f          0    148552    usuario 
   TABLE DATA           J   COPY public.usuario (id_usuario, enabled, password, username) FROM stdin;
    public          postgres    false    232   ��       g          0    148557    usuario_role 
   TABLE DATA           ;   COPY public.usuario_role (id_usuario, id_role) FROM stdin;
    public          postgres    false    233   +�       w           0    0 #   archivo_krecord_id_archivo_krec_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.archivo_krecord_id_archivo_krec_seq', 194, true);
          public          postgres    false    224            x           0    0    categoria_id_categoria_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categoria_id_categoria_seq', 36, true);
          public          postgres    false    214            y           0    0    kpicture_id_kpicture_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.kpicture_id_kpicture_seq', 1, false);
          public          postgres    false    226            z           0    0    krecord_id_krecord_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.krecord_id_krecord_seq', 85, true);
          public          postgres    false    228            {           0    0    nota_id_nota_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.nota_id_nota_seq', 50, true);
          public          postgres    false    216            |           0    0    parametro_id_parametro_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.parametro_id_parametro_seq', 7, true);
          public          postgres    false    218            }           0    0    rconsulta_id_consulta_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.rconsulta_id_consulta_seq', 148, true);
          public          postgres    false    220            ~           0    0    sistema_id_sistema_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.sistema_id_sistema_seq', 11, true);
          public          postgres    false    222            �           2606    148404 $   archivo_krecord archivo_krecord_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.archivo_krecord
    ADD CONSTRAINT archivo_krecord_pkey PRIMARY KEY (id_archivo_krec);
 N   ALTER TABLE ONLY public.archivo_krecord DROP CONSTRAINT archivo_krecord_pkey;
       public            postgres    false    225            �           2606    148299    categoria categoria_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    215            �           2606    148413    kpicture kpicture_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.kpicture
    ADD CONSTRAINT kpicture_pkey PRIMARY KEY (id_kpicture);
 @   ALTER TABLE ONLY public.kpicture DROP CONSTRAINT kpicture_pkey;
       public            postgres    false    227            �           2606    148422    krecord krecord_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.krecord
    ADD CONSTRAINT krecord_pkey PRIMARY KEY (id_krecord);
 >   ALTER TABLE ONLY public.krecord DROP CONSTRAINT krecord_pkey;
       public            postgres    false    229            �           2606    148543    menu menu_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id_menu);
 8   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_pkey;
       public            postgres    false    230            �           2606    148326    nota nota_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.nota
    ADD CONSTRAINT nota_pkey PRIMARY KEY (id_nota);
 8   ALTER TABLE ONLY public.nota DROP CONSTRAINT nota_pkey;
       public            postgres    false    217            �           2606    148333    parametro parametro_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.parametro
    ADD CONSTRAINT parametro_pkey PRIMARY KEY (id_parametro);
 B   ALTER TABLE ONLY public.parametro DROP CONSTRAINT parametro_pkey;
       public            postgres    false    219            �           2606    148342    rconsulta rconsulta_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.rconsulta
    ADD CONSTRAINT rconsulta_pkey PRIMARY KEY (id_consulta);
 B   ALTER TABLE ONLY public.rconsulta DROP CONSTRAINT rconsulta_pkey;
       public            postgres    false    221            �           2606    148551    role role_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id_role);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    231            �           2606    148349    sistema sistema_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sistema
    ADD CONSTRAINT sistema_pkey PRIMARY KEY (id_sistema);
 >   ALTER TABLE ONLY public.sistema DROP CONSTRAINT sistema_pkey;
       public            postgres    false    223            �           2606    148561 $   usuario uk_863n1y3x0jalatoir4325ehal 
   CONSTRAINT     c   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT uk_863n1y3x0jalatoir4325ehal UNIQUE (username);
 N   ALTER TABLE ONLY public.usuario DROP CONSTRAINT uk_863n1y3x0jalatoir4325ehal;
       public            postgres    false    232            �           2606    148556    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    232            �           2606    156650 %   menu_role fk2ymscnycm83uqu1ddpkgdryg1    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu_role
    ADD CONSTRAINT fk2ymscnycm83uqu1ddpkgdryg1 FOREIGN KEY (id_menu) REFERENCES public.menu(id_menu);
 O   ALTER TABLE ONLY public.menu_role DROP CONSTRAINT fk2ymscnycm83uqu1ddpkgdryg1;
       public          postgres    false    3253    230    234            �           2606    148577 (   usuario_role fk3acg56qv9q1c49y77chj0gaxv    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_role
    ADD CONSTRAINT fk3acg56qv9q1c49y77chj0gaxv FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 R   ALTER TABLE ONLY public.usuario_role DROP CONSTRAINT fk3acg56qv9q1c49y77chj0gaxv;
       public          postgres    false    3259    233    232            �           2606    148428    krecord fk_consult_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.krecord
    ADD CONSTRAINT fk_consult_categoria FOREIGN KEY (id_categoria) REFERENCES public.categoria(id_categoria);
 F   ALTER TABLE ONLY public.krecord DROP CONSTRAINT fk_consult_categoria;
       public          postgres    false    3237    229    215            �           2606    148433    krecord fk_consult_parametro    FK CONSTRAINT     �   ALTER TABLE ONLY public.krecord
    ADD CONSTRAINT fk_consult_parametro FOREIGN KEY (id_parametro) REFERENCES public.parametro(id_parametro);
 F   ALTER TABLE ONLY public.krecord DROP CONSTRAINT fk_consult_parametro;
       public          postgres    false    3241    229    219            �           2606    148438    krecord fk_consult_rconsulta    FK CONSTRAINT     �   ALTER TABLE ONLY public.krecord
    ADD CONSTRAINT fk_consult_rconsulta FOREIGN KEY (id_consulta) REFERENCES public.rconsulta(id_consulta);
 F   ALTER TABLE ONLY public.krecord DROP CONSTRAINT fk_consult_rconsulta;
       public          postgres    false    229    221    3243            �           2606    148443    krecord fk_consult_sistema    FK CONSTRAINT     �   ALTER TABLE ONLY public.krecord
    ADD CONSTRAINT fk_consult_sistema FOREIGN KEY (id_sistema) REFERENCES public.sistema(id_sistema);
 D   ALTER TABLE ONLY public.krecord DROP CONSTRAINT fk_consult_sistema;
       public          postgres    false    3245    223    229            �           2606    148380     rconsulta fk_rconsulta_parametro    FK CONSTRAINT     �   ALTER TABLE ONLY public.rconsulta
    ADD CONSTRAINT fk_rconsulta_parametro FOREIGN KEY (id_parametro) REFERENCES public.parametro(id_parametro);
 J   ALTER TABLE ONLY public.rconsulta DROP CONSTRAINT fk_rconsulta_parametro;
       public          postgres    false    3241    221    219            �           2606    156645 %   menu_role fkbhl7xy7xjv54q9vedxuxk2kn0    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu_role
    ADD CONSTRAINT fkbhl7xy7xjv54q9vedxuxk2kn0 FOREIGN KEY (id_role) REFERENCES public.role(id_role);
 O   ALTER TABLE ONLY public.menu_role DROP CONSTRAINT fkbhl7xy7xjv54q9vedxuxk2kn0;
       public          postgres    false    234    3255    231            �           2606    148423 +   archivo_krecord fkf9ico6crvmofjv5yccksnllhg    FK CONSTRAINT     �   ALTER TABLE ONLY public.archivo_krecord
    ADD CONSTRAINT fkf9ico6crvmofjv5yccksnllhg FOREIGN KEY (id_krecord) REFERENCES public.krecord(id_krecord);
 U   ALTER TABLE ONLY public.archivo_krecord DROP CONSTRAINT fkf9ico6crvmofjv5yccksnllhg;
       public          postgres    false    225    3251    229            �           2606    148572 (   usuario_role fkk4syxwi0pg7sxaxyr9pej4t4a    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_role
    ADD CONSTRAINT fkk4syxwi0pg7sxaxyr9pej4t4a FOREIGN KEY (id_role) REFERENCES public.role(id_role);
 R   ALTER TABLE ONLY public.usuario_role DROP CONSTRAINT fkk4syxwi0pg7sxaxyr9pej4t4a;
       public          postgres    false    231    3255    233            _      x��\ے�F�}��^ፘ��;8oh݂M4@�X��`@$ԂL4H��~�_ؘ�؇����~�ffU��[@K3����N�*T孲�8�P_��f�_~8��������o�ݕ�t��<��쌝�?��v��6�v�7iu�V�6�eB8*��z`���:&��ؔ�t�gũ���AcSQ��,?�EV��)cY�N��6}���6n0�MV�K�RTh�5|�k$��g�m�k���$H�>�C/������aK���l�f�$�0M�r^f�]�х�@�$�_�	�T�l˥���e��, ��?k����Y�_���&b̿�٥;�n�/���c/��$$\^ �+�z�VT�hO��'Vd��)��?m�9�w  �"�K?��/p� baDw�g^4�#6�Yy�?u��Ŷ��ˑz�*���)��p�&brb��n�D�l�'�%�� �(�;D&|އ�؍��M�e� �Y�+A�{d�K"���G6(�X��u@�(����?5ALwn��9���Y���7yZ�%+J�UvL�%K�,Iύg�|�+$�Ʊ*�z�>aϘĠ�m���f�]vb-s>p�Ѻ&Np�Y��N��i/�CWQ�&�*Y��$���aB����6V4�3к:��(x�n�%.��-f�ҽ��oc�T�;~	���m��hd ƮÂ�VÄ>��Zc�3�%g����Z�^o·�Ȏ��a�o��{����͸
����Y���'�7s�ҽ����[8�Q̦��h��"
��٦�.����(�߆q��D�l��>r{�3۝��v3MѬVkڳ���?��ס����W�j�&,#�F���V�˸� �j�k#g<��8��đ����1IƯc^k���n\wG��n(����H�ZX�����+iq:5:�y��D0�+5���`	w�n�
��ױ����恪���@Z~�H����}���M��BU��-��ڍ������\��=#�Z_�3�{r�x�ᇩ��F�]�� =kN ;���R'�!�ۉ��Hզ=չ���+PѤ�-�rRtPEW��L��)ۧh>Y��!2x�nN�*��j�]z8��#;);��/�j>�8i'�H��B�R����
D�+
o~&�$�E� L�����|�{���h�%����8�70����O0���m�e�U�E^O���fF1=�X��Rƶ۔I�8�)X�E<���	�9�U��w��b» �4����'���K��������-7�����c}���o������OL	'��$ %5�
`Kѹa�|�f[��>���k�x�%[8(����epMfyIv�Eޅ��VCbG�p)진��@mE���6=�G�7��YwUe�{�����Mxpqes+��>�w't��,y�%�A�D��M��u��t�k�y���5�^�o�7o�t�q|9P�@;�1ҦhW�e�i�mi�4�'��>������kc�п
cD���P��2 c��i?
�����B��ϻt��g�j�1 �" �o���"0S�t���+�����.�!�&��)�toxf�'�a,��E_82���T��>��Sp�q�3,R\rypQK�=�:�"�ݒ,�ɆnpU�ّ��G��i�bpՐ|�Z����V���|�S_US�?W�4�/x�.K�_Cv"��'��<z��oA�Wy��w��`@��!_��{�o�t@J�)�RL�w��w��i[�������^ �pY��.�m��\����DU�՟��=b= �:˂q����/��=���#φ��h��)�л7˵�VL�����8?����
/���ߵ���?�^sөÈ0��r��I7�;c2#Y����T�������O�|�M�849(�ɓ$�;\1O	���|�6¡�ffl3���"ߐ�6��&��McZ��B��1�y0�6_���?1oƳmsZ�kܓ��Z�,���:�Ӓ�og2�6�ش+z�6y�����tޢ����-7����6g�f�d����	�"�=�:�w��:�����R2��d#,:|�v��j>ܒ{��Q�Da�d���Ll�t�ڊ%��l�>�����6a��Ǌ�׳%�ы�D�-�+Z��%��|�������dfIH�̎v��P!{D��F:������PV�l�m�r����GtU��?��~p��O����SU^�����=XO��bq��I������q��i�y?�QCZ(�}]W,��f�n����nOx��+r`��k0�8�ݛ����D�k^��"{
�7e��Y=�x���Є�YL�Op��-�%�p�]���H�b)�I>��i�d�#���|�j�G��L7�[��O������n*�*Q��d���$���7�zS6��U��F�.kE���J���;�G���6L�x�I�Vl���� g@�m����!G��vI��jƃ�o����=Nl���vS� v���cVݥہ	!�b��Y�rC�u;!��Oz���a��0�XqZQ�e8C� ["�����UqD*6�w�M��5�/�I�e���T}��`�#��0,Ƕ!�f�({�	e/�x����� :,@�;\��CY�w�.��
�����x����44�i��?ƨb����ew)�1��L8ɽ��I�^k�V(|J T��X"��|�ߥ�:�`4c��D��.?���CwÄ�:' �D�W(^3iX�Bݢ��lN���v��$�a�C3
MKX����@�mpC)�Ҫ��,>�a�d��Y���ٺ%"r��pζpgϧ|���VG��T������.<�9�a*������DD�-$Y���e��*��CÅ�`K����0��	b�j�G~{��g���2��M��S{M�%]�{�<D"g�O��㆘=�1����%A:���U6��j_��I��"�-ƪ�]x��a+�nɣ=O���0h�z֐?���!?e�2U��)F{K�t�;�	�44e�����C��%\���y�% �U�C���DL����C���lˬ�v��T�<�|���MD�U�ޖ��9�(�^��K�[��ne(�����M�:6�"������]V��:����u�A�%��g���D��{
�͢*��}zd�C�-�b��-�0��~�bp�|3Al��Ys�@��K5n�=�� ��o��z�?F�F���`W'9R��k�=Cн��m~	C,��
B�&Z���W�-	���*�g��h��v[�@�u�-?�����L�kF�ko��(�1v�P���x9���+��z���=h�j�����dip#���5��l�]ķz�~�|�E�y��%���5�f���%���6N=B��>���&�F���=�?x�Y�&�aM�4��+�G6��oc�"��ȮE�Nϐ�K�r��}�Rvp/OO=��?!�x�T���-������PO��9�O�jv���k#n�����氄!���hC�DQ]��J��_�w��:�-����t��V��_J�`��3�Q�V̹���Oۛ�[�z�-���S��us��ej�X�2?�w��#�M�������æ%ArEq,wgt��+��4
Ch=,�,9���q쟴kPP1wqL�	G0[3<T���I�p�b��W�~x�&����i2'<,���DM�:��|����wn����)�o@o�K�|@:V���m}�.����%�	��<��gp�����H'�.ئ<����	%4�-�8�u+T�`	+{�ނ���x�_�mY].��r9Į��A̴1�'Y�(��X}�r��n����H�I��\�l�o���i��>�`B�:6@�J�5њּ�2�.�ł���;�l�?'�1b�kQ#QﾣRw(,|K��ΐ�>n�Z,��^{�TD�����^Q}���x��UMN'8�"Yޯ�2�<�Iy7�XV����č���U�L�N#����Ѣ�x�̓L�����|��4y������l	oR��H�� �	N�N�H*�#2�.��PG�f���S�Y/�z��`�!.��K� �  {��7��^r| �j�P�v�Lg�GpFƆ���3f!���'P'���5Q2X/ �+H�ZN	��)1�+I�Ƥ��#|Qz�3n;c�z�'�p�������u�,-�W�Z�����������G(|����2{��� ,��!Q��^U��L�x?�O�wCw�x�z�S]U�ݹZ����B�ΝR��c��QG�0�&UL�%;f|��O7Y�B��n���$��I��C;8�I~��h���{��c�L���׸K��0ἕFb�dGD՘��W?�7�VG��Da����9�`1�ZO���cq�d[��ل�.X�������
��?��n-y
��	f3�ĝ����Z�)fĳ�t$�����$�F�Kn�Y0�[�j
|~()	�˵�yD,pƸ!)��Q}l	D���e�A�"!�G`
�m�s��s�[[�u��/��r]��<	 B(QOToz��Qs���i�ZZK�J�D��90�1(Q�q��E�:"�X���SN
�C
�K�ݓ��yW��jC��R!���sQ�N�&�Y�t>�ˊm�-Yz.d���?3Fh�i�Х'���W p�
tHo�gʹ��G);b6u�=g����P�X,��V���f!b�<9"n-;����zo��T��	���?.I��6�Ŷj>|�O�,X!D����3պ�UvK(|�!�wo#�ތ��QPBȚT��X�g���,J
m�C��|@X�4����:7����ݖ)4|Td�*����ZW/�m�/����!I_����G@Y__�b�/�`bU��x�=f�<r����Z�9\k���l3�O���2���m9��EE��915���	8�����;����/ݸq��F�lJyp����K3�Iڄ}��OByR�􎄌�9"9�ʒ�TGզV�4R���է�q�8�|�PS-���!cHv��Yy>�&���e;��уv�	YFa}$� QK@#��@�%ņhL�Yb� N�v�:��ՀĴDA�C��B"q\���.�m6͎��m�;����(6x���M�9��O!*���O1���=,��qp��ߠO�n��!&��i���l�Lݴ�g���#��`B�M�oj>܅���ӈ��B:���Ì:�����t�ر,pu�2O�
\v�1=f��j�o�xJ�k�}��0�V<i�{�5��_G�EDzR����$!�x�^�>���cѻ]*��7�)�-����?�?�ew��:���(w���*��#��
e��̟Έ�������Z�g!g$ȔCGr��IP?g�hW�0�������ޜĶ���cL���svʎl���٩<WX� �d�L3�`U������	p\? ����dOA��S� h��P��Z���_̵�X��6���aL>��i�V�_p���[���)B��h^d������T���&���B��w߼�����綵S�2Y��}<Ui�!�JR���%��ґ.}	�@z�B*{��].B��ۈ����&o�VqL����FoCA)X�"G�ܴ��+�1�$����2i�ٰvZ�Ȝ�����F�jN�QnKj��
e#��U�����#U|-�5$���S��Z2u@�<6�\������y�����}��=�ǘ������j�R� \<��C>Å�bv��N8��Ҩ�m[?1�aB��h��|�]~;�;���v�ʽ�d�i�nK���
���4.���L8�z�\V��*|�7?|5�Y��e���)������v�+1A��0W���Mv��%,�i�}T���޿SWZc��'���iSo�o<lO��q�Q�t��%������.��ɘJ� �ؼ9�*[��="���d���8'Ɵ��a.=vE��o��]�7v8}�aJ=�4�LD��8�˪�,%D����4�\G|J&e��߲�����ά?��{��P���k
��@d�%�d�S[w�/E��
��      U   D  x�MP�n�0����)El�y,�)�آ�GСK��K�6?�oꏕ� ��QGݱ�x�p����IP�	P�
l��S�A��Y�roz2��k4qH�R��c}��/BN�l#����L��䓮��`�P�ɑ�Z�m��c�B#&������H�[�bJ���������qQ���R`�(�E��x61��4'o�Y<ݔ�5i��X�(���H��j��/_4-�m�=�� R8�S=�ҥܱY���m��͖-L��*�[w�^�sk��Í�ইoE��z����,s6����--ڕ&�q�C��m7��зǪ�� ��}?      a      x������ � �      c      x��}�r�H��z
D��	
č����$Q�A����P�Cm+�W�.�!�*f&fѵ�����gЛ������$�KUOE�,�@f"�\�sE�;�O�/��rW۴�Ҫt�T���ӿ��r���D-��/ܔ��ݢLJ��i6��0� �`�M�Წ��$n�*+T=<��yI�z�޼q��,I�e�
���m���N݄�WMY��b����Mv���ݴnT�i����M�6i��Y��j��Y�h4Z�2;��W�F[d���{���O�A?pi�M��iѨ�*ܥz������"�0]N�)����\WnZ�e�dmʲ,�Ӕwl�*���;�Ly%j��J����4�������"�ySa��F���Z��7���H�z����-�Z��.i
:}jC+ڱ�	�0>�'�~��<��a�8t�=ֶު*+k�_?���p4��ks�N�"g|n�en�?t�2�Nh}�t�U-�$��ktV��j�Ү�7+Vt/����`u���m�r]�YE_�d�Y�TB�ì�
�&���$[m��*P���k�[W/�lA��ǿ��TA�����Ή��twB�[j��kHܸ�l�n��(�%P�#		(�U.+���Y���d�l+�w�ݔEZ㨓-+����@IeCl�3�֕�G�5�|�Ҩo6ȼv�l��%�Ş�N�9���D/�E)����Ť��K�&��S!�J�4D�.�$�q�C���%,�,��'�g��Z��w��bUw��8p��h}t1�5F���eZC�n���%qQ{���$�&[f���%��e�6w����1h��Y�{�,S&[�K͍��4j�ͭ���yu�O��b�� �_�� �R�D���:l�����2䤅�|���+�`���z�d�ݲ���hꄓ`������ͧ䗏n�]���Ĭ=����	�"�@I��ɝ؉H<8�Q8�$���x�����M�|�Ҋ�߯%RN���;��&i�E'���mN"���s��{�	��Z��-�n֪`�+��s#�ܺ\T|=��J��s��| ���/��y������r7?���Б���\�F�m��h�:��>.i�S�G��ߴg�n�σ)�ȹ*��8�N�QߥD��q :"�tœw�N:g;�Q0��O+�Q} ���qr�[�Uz�C�P��:h�꜕"��Q�$�N%=#foD�љ���/���y|�
XptGA36tQ�<G�<�P'8�L���_oS=?��d]��n�m��׊o� �gY�MK�<�M�DKk�n�������p�������õ����?�7�����''�G�/p£���t��[ͻ���vk[��P�����3�GyY#��P�*O��r�&%HPHT�%2@�O_�a�Dr>O��'��.d�<[0ȁ�RU��y�ů�@(�����:		?�{�\�PVt��mBz�%��������z�p�?B�$�݂$- G!���dPZ��
��p��ɟ��7ٺ�_bK]Ո"FL
bb�Q��#�}�i
�7�a<�"a�Q4	��-՘�T�1$'���5��ȉ�N|�N+�h��)��3~Z��,�\u>w 5����]%Ş	��M�j:Z�"��f��=W�5Lupͧ���9F
�4�bfҔAy�ا���I�쯑Y0�}�4冔��YX�Pu�mшF ������RBY��7���5ha��	�Uذ�i��D)�#�E;7$�.d}�ʊXA?�i'>7 לNS��~}@^w�n�p�f��̒����uO�ψ�棑�t#�!���&c�O�7�*��.;�Da�j����o7ղ�� �\[�ur�+�AiUL�R�H��X����t��gLa���t-[s�-�=����'D�,�rܸ,i�v�L*���Q����DO��2��2?g����O7
Kcq�IgQ�DX-��MK�� [��?��&�C0^����jɋ��R���	���DdF@�qXfh咁	�5\I���Cd5�+bdFbd��4�iq�U���(��΢�GQ��W�M�8A�v�0&���-	X�G���Ug�Ǵ���s�>a�O��������t�x��a��ġ��p���'L�����>�c*M2�A3)���E�C�ʜ���M؏x�դ8�2�B Z��tV�LHD-a#�Ǵ 	�0�6F�|�=D�d(󝸃�z�����Y��f�����p"7�z�F��8dq��f3���В�{��&SҀ�|�3���쒖Th�m*!5��E���iq���2�ߒ�Nc0C� ���4�ދ䂐�&�$�)������h���ÒQlFb�D̢Y��F	vs����PB�d�l �gE�Fi�刼ݲ������v���k�!��$�rg��%�C�8�%Ry,D5
̊s[�PADL'7`��I�8N�����U�[�uP�L��4���5BF�?[,�*㕃��Uខ����wU�]�,~�is{�La���"xYV�2�<7ߦ��6@@AO��T�"�	�Iv)�0�R��<p�J�����7�f�m��2�!Ĉy�` @��B4/���<�G3�'�:���fl���ϭ��&th>2�gO��2�O���87��Z�=K��4�GZ��?}��%�s�=4(jwY=��d�,9(L@�Q�k�C�t[k�j��ٽ���0�x=y�;P�:��吞��I[;����#��1�|_���.��.�� H��?�L�"Ӧ�FO$��lܧ�g��M�=���}��8t����`4L-fn��e���zP-�	��>�66�ˎc���p��i��|��9cg�ӎ���Em�mJt��ծ/������H���8�q�S�Q�Yn�i8�7ᶙ5��cZ�3�>�D45�ƙBZ�H���cs�e|�]U��,���p�	s��)�STB$�&#j	a����Pv'�DU���$c\�m���`D��q�}���{��3�d�Z���0;�P�/�ecg��C�`KE-�H�Y'��h���E����W`%���H�ՙ	�ZZr�Dk�j�D���'��� ��h!N���:����x���}�-�D�&�7o���XB 2�]��
 ���0,1 �m�7��v�}�=/u˘0����(�0����"<���j3rMM�j���Q��3�r�T�@�Ы7[��-�w!u��$$�Z�y��(�C��� �5ch,��V?;��1�W%�Ne1Ό�k�<&��#�Z������A�L���G�h�}Z����p�(O�<���p���M�?Cz���J���4��L2�����=^f�(]�pY�!9����֌�,t�8�[�c�t	Iǚ�p���F;>Hf E�ߋ<#���ؤ %�G0(6�e��O����T)�%!��&�:3X�\?_�N�J���Xܞc�m�iKL/V������,]00�����:��
}�l��z�N��r�V`�tġh��vRzr(����	9�"�ݹnS[B fG܉��tr�;�����a���R�{kvݳ��_����Йs� ���J�]߻�=��qtޫB���k���.�4ò�s]|����iu&_����ݨw5��z�zn�T�R:F�Z�]2�n��*��wC������v&,�B��$���<r٘� D1�B�
����dxZ�������|6{hu����%������A�e�Q�� ����a^��ɩ-Tͩb�T��I���B6J�P��ŝ{�Z�ےAϑy.<�_��z$OPt
����������]q�>��tw�^�y�p8=!��[�����e6�}N���M;3�#�ti�E�������Hv��?w;߈lTexkY�~��cE�.!��G����9�><�?ܻ�O7��ݻ��Ǉ��;�����'���/��1	<fj��&���N{���a���Jn�A�6��!��� ���[|Z���>��q<�FxkFx����56=�ؙ zG�mW�r��6���- � �Y9ךM��&���_��M*yJ�\{�>Ӫ4s$A�88MW��r�-�V���a�����Y���!6    ���I�|��2.� �������
��˒���}�j�V�)�խ�1i�!{�-=��Z��t;�d��l�30.6:�z�Qd�#TѓT��=;._��ax��>X���kUH����=��21���n����ޯ�;��8���i뒭ڻc�uN0�f���Q��t@�ÂQ�H->}��mU!n�͔�o��GΙ�?���鳻��uɮ�5��#g���l�}[@?��ڋ��bJ&�ӈeI+�D&kA#0L�cE�%�Čx�kb ?���Qgv�ӂNHK݇�Db�yBv���o�Kf%���@k蝳��(��������������'s�#0�?C0���8�Q�y�#ȕ����	�I��}B0�ou+���vR!:V/Al���?��ւ� ^�@{
�Ū22�ᾬ��m��(�Ry"�`��N��Ͳ��9s+����EkI���`?i3�1M�'V_�:O��m���J��c9浝�Ƭ�2��F6�L������O�S�כ��������O��$`�U����t��sSP����sP�Y�s��w'��&kZ�8��K�a���M�a�_�%�_�]<?����K���n���U�A��������ܓX��m��NT�=�O���yw�����{]����t}��/�F#{�?={�� ���}�'Ӯ��Kq� �H�W�m��~�Gg�-͵ I�`M�#���"w#'>l��_��Sd\B�}��/Ƴ���5��X+��	�F�[8�ئ��j=��Z�hL@@��m����$z}�Y�m�H�����(�:�m!��L���`��9�&���H�{ ���,�s��KRf����&9_�+�Q�
�%s���������U�4Ə���=�����NLxT�����ַ9K��/ņ6��-R���	*�������0������X�Mc��@��$`ʰ�EQ�	}_'R��.}<,���ɶZX�k�\��z_ϔ��R��=��n%@�lٿ������k��#=�W7�n~�~oP�>�g��� �&}ז��see���Z~�zo/���:�H�FO��b�P$Һ�!��$���mKF��&� �1	���vFD8�ך��N��"=��0�i��}���֧
SjR�'$T���L��fl6����0�Z���Ai��0�qӑJ�)�L�.�$�|������,c��	�.�]�ߞAF�7^%+��P�P$�>\�tX���0,�?}�9l�Sz��V�߆dQ�m�D�����1�΁5�י @	*{�a�(j���3)����fy��/w������mZ��8�~a<q�IŁ�2�KEmo?��dr������rm����8[UX�g)
K�JK�
��-[�&�e���\�A�t72m�i熁|��ĵ��ȍ̀g�&t(A��Η���ls�>�ό��FȌC`l4rv�(����/��m�u6к�}A#1UZ�����ܬ�:0V��,m��B��>�W#���=0RH��#n�X4/�����ܲ2"t6C��%�HL\���.��E�y|�U�N�$�!��9����u�J�SS&k�Xs�]���gBA��k��Ӊ7>�ь�>�<|���nn�p� �4��׾iHf*��/��K��y�;�"�\�F�[v&B]*�LŐ=�sy�&�`E)w�̪%<�4�Zw`��2��'�p�M���]mR���L��������)`2�!LTh*�GlX�����u�e,(ɫM"���{��*w�Y���[��'��F*��9�\zC��ߓ�Մʼދ0�0���y�,b��S��$��ۥ0�(?y�����`8����h#��>��zM&��H��מ>�;&S�F�I�kw�tF�=f�����-��!j6�k��m��K}7:b�A�r�2cfv��q���2�,=�l����YF��{SЫ��q*ᆏ7�@������������ٍ)������A����ԙ�&��.?*��vQ�f����0���_�z�2�x/��{o�,B�,o�3޸��Ct�.����r�??4fn���P*A��u�q-��ج���&�S�)�'E��
�(��BTt��[9����+�..h�ILO6&�OY��!PJ0DvhyZ�jKČn��:������@	?����P�g�7tt� B���S\w�i�_j��0�R�2�����-j���NKrX�Y����+�A�7d�0�5��(s����6��Y��gs�H���tѕ�N�Қ����}V'?ߓ8�>����{wkt�x29��S����P^�w)�S�_;�3�o�=����r�e��o�?O ��cQΐ�6
���H��ܼ���ȴJ	(]f`�mY `Һ��8� Z���@1�i��4HM6��V�3��W���nk[ԉ��㊼��W�UK��55QG.ǈu��b���qܝ����87?�|��4�5Hi>?>�^-{R�cd:a`&x�G��	q�E�XS�`ӈ�_�x[���4���3%u�:��3LЁT�� ���N�Ke���Gs:xw�/���?�|��,
�u<���*��d £#�^;e��:./eR��|ob��%��R�������v҂�?HH�"�����������=q�� ������#ځ�1�5�T$��\�q+v��Q�ƕ�l����L0ԭ������A(q<G�ù�=YJn�	,d��!��>:�GLpː��9�� ���=h�-���{�g
��7zPJ㏌=�B��E��ڢ�#��jPLj�H��^ȩ����������'�i��\���%��Kf|��E����b�#��*�տEv"&�`�LR�5��Dy�Pؽ�~ ��R�����ߪT�@��˺�2��-���H������r5�/tp�΅A��0�R! ���^zn��#��,#zl1�1f�b��LF@m�p��\[�lۚ�/%O)�� ����YY;E��O��J{2�f�I�䲪Jx'�S�{G>W����^�*�Jh,�o��a���o<夰�6�g���ӛ����hg[EH(����tt��[#�ժ���:�F7�!Q��ڽ����J�/$����pNd�����m�x5�>�M�H����9j	Qt���.��o�.�3|Ԝ��;�]B1�hNΉ|��/���<Z�:{����ݖ`��fU_���P���1]ݢiq�i�O�[��7���� פ��i8a�˚��JO/MnLg����/�oQC��D�-u�$��=�7c��B��i�;O����;#�G�@��A %V� c�}e�$:c����++��ix0�黫r�^�cK]��9k�P��~�]�w�s�_�K'CJ�X[�d�=�e=�m'v��O�� k)[`iF��\�a�1g���E��+���\�5E��hv�fOY�� �M+���P�g�')�I@��7@H�;;]���G:�q�.=��B,��nT2���:'5|��ji���{�@���I�Y�����\+��u!vb��8�<]�z��r���߈�΍-���%2t{�Z�V,cw�zx/���á�����x>��}��(�3Ez�O��6����i��S
���9o�NCL�Q��<�뫻�֐n�HoM[�c��z�L�	�����U��^�o�`��-*T�1��գ����w�9Ԓ���j�Cm� �UI$²���{�(�nS8���h_:_=fk��')�re,c�U;�M��գ�}�0ұ�݋Ø��x�e)/7;��CF���7`�����!��n����$ۛx4-��ѽ�ƴ4���v�c�`+��	=�����`hO-���Aw�c��2��o/�]?��٬���4wS��	�S���d;���e-[cs�{����(~.G��77���h�8�~{9��{:�K�[]d;�d�N�h��L��$$���fA<+��5�� 3��C�&���Lˮh��S��"��ӏ����g����]��hL!����Z�E�m�9�����zD%�dL66������³���iRZ�����_�s�V�I�M���ױ[�h�    �6�.`�)��/�>��Rk����q�6�&��ԧi�xt�p1��5���I2Z��a:���R��`��''I�T�r%r�z�E������%����6svla`%�H�$���`/��7I4I%Y���&gh���P�V޶U}��v����@�;1ƈ��y�[�8|\n�:��1�O������)�>�^rWS�qG����e���n߮� �b���j�br�RB���@U�v�I�F�_�.$���dUh$��c�+�FE"H:�Yx��������9�Hj6O�����qok��֙��s����G����q��@�f��4��5@�x� �YuO!��/$�����dζ�N��ez:y{��7v���I!�%�ڔ�$�.#{��w?�Έ���8��\N��Ff�XN��]�S�5�jB��D���#�쏎�>3��p�?�M�\�LP=��E������lZ�Z����b�S�g�Tkw��?�V��e��{I�������M��n~m�ׯ��]fpM�@R�3�}/�݁	���Y��U��u�A�]��c��~�g����/�s�"m �8R$�!�X ٫mHw y@�ɹ���2P����
~V\��m}�Mfj+�~3�d�;	%��*Q�tcz/[�_��t��%i"yY!�����o�mF��O<*��W�.�YC�wE��֪K����m��<�њ&'�k��!D�	�^y�;�M�
�q����bi`֕�v;S���j{���C6��h��GH.��<��]���8O�5	��+Zk�*&gn�r_�˗��:0�|H����Fs�1>>F�G^��O����3�@j���Ũ^�K4�I��#��������.�$�"�>���M$B�D����P��f�ܲ-�'Nȡ� �$���O³X�	��8lk`���U۷�Pk��C��xL�Y1��,�h���0_Bw/O	��}/k1�M����!uj��mZh*��]qM�̒r�SM$Ńk>� ��V'�̔�,aeȁ�P���C$����l1��d����(I��Q:6m�vZ�����3�����
���wHܡ�bI��Q�O���͕����F����em�Q��6U;��v�V)��0?Pۜ�{�1 {S�S��R�_������s)e�����RL�����a�6��E ����w��.Ӭ����[�7����h�%��h�3Ž����ir���۽B��.ӟM���$��]VQn�H���r��M]ہA["��#�&�ߥ�^t��\� ��dằ�v��֒�>hG2/��P�j�nӧ�}pl"#�|�4�r/�R[��b42�<���v�r0?����_��NٵXe]+Wn,Å/���uM�TaJ^�Ӫ��0��I�Q[S�'m���R�����D8�thnƾ���<С%>?�Bp�lr��(ƀ&�y�2v<�f!�d��)oM��ޜ5*V����i<�ty��ۂ�(���Ĭ�)}��=.JS
�c2���m���.���m��i4���.�y������՝~QM��b��t���iG֐�O�t����m=ݰc����Θ�z&�3�G'�g^f�m��	��yXEC�8Qސ��K��;�S��c�%2���/��Q1�&��H"��o��(��+��о��{�'ݨ���'�6�.,Յ������[�1,�v��!1�y��u�W�*�(��걛�ؿ�֞|�^|k:7#C�6��G��?�<��?w������Ⱥce�=n/Jۂ}����D���/������S���6��&=����+x��X"������_\ }?�>����c��s1[˸�S/�n��d6��r���^�9Zk��b�HF�f6�Q���ܠ/>�ݯ뷯�[�*���n�V'Kn��:��px�ʡ�dC��G���&������p��Z-����t�Ik`��|���G��u�F�+���'�x$O]%��K?�����
kv��;�/�`�~��fN���n����}���SZ�%�'��!.�:u}*O#�X{�`����t��5���_=�9O���ěE��W�k��c���O�n^=Z������_���6Cƞl!��r�Ц������~��tB.;lt�&y{7@l�p��@�Ih�����P��&�G��pF�l����������0���3������ǎ��-D싁�C�o%�~���(�7k�q�g�"��/q�~ҲB�_�k2��sM��N�F�l�kq�aQ"����wm��ZGBv͛�!����o��\?���E��ڮ·L'i��e Hʹ���D9a/줤H֮����
à��3g�,4>�w��M�~ ���랠��'�m�bfү|iw[yC���k_A7������G�d26��82�z��r���Vo)S��.y=�8�����2���r�,޽�x����/�����<�����n�f�/���)G(�D�Δ0��DT+ݚAG��c!�8�����$V���Ƃ�|�r.9I$I��U��ㄬ-��Pz[��/@���;���2���LKL35�G/$�2��iZ��u�Z��$�/����ۗ,M�ɹ�ⱹK'i±���kI�R�m{��ᙠiZ��ly�CT�VU�T���KR;+��XYN�%�;��5D�aۅ��ckFfY�_�ַ�̝�2��h�0��ұ3�;��3~M9�� �E�Q��1D��h���9�>�Gm�&�	7�_em�u���`i,�Yf�9���g�HZ�Td��i���5�+��l�&��'\y�g<�:	䆝0a�:.��!~W��f;��o�i�x&�E3S��U�A�*/]���(�2j�Q�e��MBD�}e<~CW�2rN8��ަ�~g�~��k�6�U��ՈJG��od�y޽�e�;X�sW~Ł��ǂ�L��d�&]�#k��R"z��������]-?|�6%�o~��յ��(p�k�����ĉ��l��n����iù��++p�I��+���@c�hFZ�d"�Vh�6gTz�DK�+;��_l=�j.�͚S���8�"�5�2H+�u���#�%e���K��L�� �T��F�o�~�'q��,@�x4��̘�I�7H`�N�`��	Z�L{���<x��3�
�ފ��-Ww��^;SZ_������KS���J���i�F�}�~�9��B��΂��{�)��A{پ�.�_w�yҦ٤��%W�h�U9�<�)s������������]W�λ��+C�ݐ&�\���{�RUwT�׍�o [n�n4�ͦ�t�=_�]���D���sڶ��HD����U�橭�<+�:��<�{YMQ��j ���� R#_rs#���WI�3�{��l/
b_��f?�Ǒ5���&�К~����Y�S�@n��u���B��3�7#%�����H�x�;���cR{�w�n�ߠ*���
lF���C?"zӠW��v��s�-�5+�����͖��Df���=>�^p[E�T��I��
�ݶ�H�뫭AO*�yF26L9w��fG�bd#� ���
���z��iZ/2ة\�Z����H��+&w�
�t��/��${�f�O�Ȯx�����?u���͂��[H��N���9���Ͱ:�����k�\]i�T��3�]��>Po��Rj�w��[a�X��������XY�UE\�����3�`܈d��_��mn�
5J�@���5M\!��AM[*�$,���|w�u�*&���A�87����Gd`�?_����)�����x$ng��c�Q�=c�w�yɠ0�rNRx�f�j�wԙ�3GS�'�Q1��>P���`6���VC�|k�T���o��}�������M�eD0��lv/���+�*]��0��+��k��63�S�����-�i�&_�.CuyI�t�}EsN^��&�Iť9��� �'f�>�����IsԏlTC���2O��k�"OK�XަS�G�>�J>���&�Eǣ؟�q������݀/��%�����HB�@�zY��))#��Y���?܀��C�Wh4�m���ڰԼ�.�ҮK_��X���y@��`�F�/Q�')C�M�خ�o C   D��]٪8w�jg����_,��]�^��q49mc��Y�*���_����zJ��;::��ty�      d   n   x�e�1�0��9>'hT8BO��H�!V5���q{X`a|�>���8e�*YŦ����$���#����R�B��P�^�2���-'����B$���F��Rgak�"� ���1�      h      x�3�4�2bc 6�4�F\1z\\\ '`�      W   �
  x��X=��8��_�L�+������9�HH�1	pAP�Ֆ�9������.ۿ�?v�$%��뫺`��*���5�xd��B5�2�i�p85J��[���#~j�(e#�(QЃ����X�9�*��պ��R��o6�u���)d�JhS�0Y��i��[��N��8�'�(�(�h�#:$�S ©m���F
e���b�^���}���T�z�H�w��SQ�j�r����x�e��Y�k�j�pz�fk]�YLG�G��2M�i22��K(���XM��8K^y1bU���4��׶*���R�Nz ï�b�K�x��5�U̽��-���t�U%���	��������@���)mϭu�62������4����}&tQ��z�:�9(��3�2'�#z��s�&��x�{�Mޖ.�J��8�1MD�J��)�F9
<}��ۍ�|
C���K���w8EGE,B�i$�"Qɜ"�_�#=I|e|���dэ��_�z	�@y�w��[d�܂=!��Q���{�=eUc�6��p�)�� A�n�4��>�%��V��I�:dǒ�r��V�,岱b�LVkd�u����V�xn�BB孂*��LU�W�b�E��B�⃘T��R5�Z�H��D��Q9��+��ųE�-���=��f�l6R��'+u+�\�����B{J ������h��O���'�o����K���Υ6n��\�8���K���@ z  I��x/�����K�A��5`pY�oE(*��;�1{��e2N�ѣ-���Q0A�z�C<"񤚶	��F��O;k^8b���~����U�+��m�퐦����C&�H'�kv�!Nͩ��tQn�ʊ�m���ň-"�����G�v�u��pI�rG��!E�v��%�U�4˽�S]�jw�-��˛�@��yql�;:�ر�Q=-T�fl�q���� \�|�R�JH�5�	�秦:�g�U[�����T:��.�0���EД4+������	��NH�д���;�X�3Q%�;�q�+�
6��G�樌#U'�+&b�l%�J����^Pl�r<\&��,=p�s��j��O���[� \��>�e�N�W8BN��\�<\E�c8�w���0���Wb����aB�n *C�-G��Ӑ��@�ګ����
��
9��
>�,�J�Uh6
��%V��0tą���E�P�4pj�T.УD�`�t�L`�k���$T�n�.��5��$��i���_(/!�uK���,�?%E��wM��mXd&��6��M�����A��9H�|����Տ���FPZ�:p��kh��.��*[���������G�C�p�;�3�a��gp�EJ�E���6�	����l:m:���<�5�>ତ�/�ހ�h��-XѼdϊY�X��e@id��jpi)R'���cG��/?�(�<�F20���su���0Q�F��M_qs��hsD�H�-�L=%�]�vj0b*�s�����yMu��t����!�e#�a�_R��{0�{l �I����?����>9�,
���ec�����P�Ӝ��0�_X`!<�pZ�	��-ۚ�iE_�M�0з]H�5^���m��e�-���%҇١������!�Kx�:��>�H�\mI]����dym4%��cuŢ�T�ք%���]�E�����6�J㠐�h:.%�|W+鍆�r��I���t�a�>��`���l�<�������l���=?O�	z�����G�U�?�*|��M���>p���}����	��Er���x0%Z�l�'��Y&#,hG�}]�TJ�,H�r"1�� /2�O�ͥ�ް�)��eO4�_ ��v��  �g�j��go�=	��)��B�߹-4�w��r:'�oK�C薳�(��R	�(|
�{�ע��x��e݈�f2 6E��#�&�D/��D��P��};�e�'����^.�Bi=Y��q�,��F��u�����g�l/�U<yO�1�up����6}���-�mtg�'���,~cR�#k�	j���(���*��6��p����id������8kUs�.���8���:��b�K�%��X4�=p@�%����)�3��7���I��Y�2�Ƴ��{��S��l̟e��ޜ��~-\��1�F��I��eR��WuS�N�d1ٜ̚�`�d�-	��PD�l���ƭ��r���n��O��9Y=��i�� 8�B�v ���1�������f��	hdj��#�6���+!��7G�\`��Aۇy��@�/Zi�և��`�9� o�ϗ�,�ꡜ8= �>G��CDa��Ds����d�*�&�zjA|[]Cc��r�����"��0Q� q��_	)bׁ�7$�/CTn�;>�w�^<���;R��N]��Khi|�hqG��"�1�_�ǯ�Q[����[�`Q����%��iSێJ�7S�q�p{�&��-�i.C>���7�x<2����X�e7�0�P��'+�9�B��g�B}�Y�1/oP�{f��H�9�Zy]J|1����=�q�v�q�6�-t?�L�I5�t�\��Mg�}�d,]�<a \�Y<�ǣ�N�gF�
h8G�q��T%%L��絋�/�߁��_�0w��f|��� ���+X�A�/��+:ÀG�ٽR("8y2C
s���<'|��p�L����0������"[������b�3��� '}ӈp�{��h�z�kwY���_�] �-�[g�WwMK�
W�|�H���Ч~�<�JC�1��>�0���BŪ       Y   �   x�3�4�tJ,NUpI,�/�,�4202�50�52Dfr�p�r������ݟˌӔ8�.NF\F���)v��2�4�LI-N.�,H���SHiL"zp�p�g�c����9���������G�Z�=... e�R�      [      x��}�rG��3�rw��-R�a�L�
E�dl�*ВM�)����-�qa�>ͼ��<N�O��/�sN.�X(Rn��7�!����v�<yʭ��]g���r6M���-3v�-&7�Qʖ���d�850�K���<e��j�rHXL2���ަ����*����	KO&��Ȁ�y{؏�8n���o�$F��6�G�Ը;g��j1\�X>�]/��h��:~Z�J^�K,&�.V��z:7Xr���7 ��rC��;���9\Cs�as��4��q�{'��p���t�Z/&�-K���X��"x<�NF����p��˰�#�Cw1g��e��x�b�����$�0�F�cV:Ϡ��U~�:�Ua��K汰�"��v�S_bփ0B�L�I�egL��*��'o(.��1�HD�� OE���6��f`8�@��>Sq�wD�Ps9L�u��P׳R��"�1�w5`^1g��������A�a���$^�w��Ž����.�'��Y"tY���c�6�:;n�, ��f��6f={�s��M/	�����=���n/i����ÊU��G/q)\QpDq�' �������4�!�ĸ6��ﵽNt�>�I����a�:���0�Øu�^|�<+���׫�t�t���
��h1�[��t����r������wS���������y��0�>�1�$��]d��*;��*g������n�|*N��c��b4g����D�!S��B�F��r�w���F&��$����V}Q�vE���;������bU?��yn0�q;�*��h4��?s��u>Y����(��O�)��9��D��%�)��;B��Z ѤS>�z}7�E6��e�O�M��[_�T�if�t2]>Uq$uAp���E�HF�|�w����K`>Zϲ�2VMN�^���b�S6ZmO��f�C�+���#
p��.��4��O��=������N��������؜,�0X0�t��G��@��?���/`Yî�X�0�g����:co�Q��],04Jx�����l>&r����a�S6��"���3�u���d9���JB�b�0��v����|����$O��0�t���0�վ��@'�n���{}7���˳�?�f�9^q���j7��k7����\����Z���e�ˤX�阖m��ߵ����I]IGS����)L���>��ݭ�1�))�Xγ�3���998���EL��>��u��5�6D4	3V���%#��iC/�[݃��8&Ƈ�Tat���M 
��%I�����MA�$� ���2��c�R�k�q߮�ty��]Z<�
�EF�JA���R��,������jԚ)�"��r�v��[4�c�o���ū��S���U.�V+P���f��Q�;Ez��Ari9&��{�i����|���)�2T��2�Ԓ5Ye-W<A>�˳�=腽ц��a�&u\�]��v*ZXT���q^�K�gY��b�,>q�iUtʦ�Z6
A�.b��e��+Be�T�9 �6NP1�Iٴ���8�\#,�����B�ۃ���^Ӌ�!
h�"�����`��<J8'�Ǜ\���^b���b=��|4�4 ��px�~`>{i�l9R�]IAE�Q������b?
�	��?43���	�)D�F�hh%�t����O �����:�h�4]nմ�zh2�L�]SGC?�H�a�CL2��3��Ylj��n#:�߶'�A�DJC����jt���4]M�
��8G����w� �t��� � �?��p"�bC��	7E�a�l_��<T��F�R���59��I�;��^�b�E�I7���0��6���{�\,:�o2^_pȚB]C���{�7|P��I�27�z��,��g�L���N��������x
1������!pJ7��,�	J(¥��C����<�}��pk� ��ۚ.m�|��ڙJ$�&�k�h�� n��&t��=���A���'�#��=3�O^;���������C1F�z��b5�i�3f���L˴/��!nkH(���DtJ�v�l����**	�rK���V��V�����@��i���6kE�I|
6�Rz���z$B �r���\�1��9���Yf�_ٗW9�L��U�Ƿ`����&o�m�E�_��_�/8�(8�S�*��mv�bMM��rkr�Z�Qa�lؘWu!�8 �����첶����4�׏z $LQ�l:Z�V9�Y�k@��dz���Fo���G"r5��I�4���FS�d���|��F��E��"�!06�6��N?j��4�����,W�
yy�2�!�/j�y��?9�A�����}Q+9?{@���8�e��-�y�P�ܓZWa�Ukv�,��%�VhC#b\W\�ژi��4co�S���I)�zQ�R�ۃ�!Mf��w��$$�w��-�W ���ݤ�e�&|�þ�:=RȘ��k":�f���o|7>���KG��V9��jE}���jݐm�(Ƭ��6�	�O�d{��}q��S�uG�$�1����Oz1�¦q�W��!�/ r�,`�,*�V��b��(�����r-�������,�u�V�����Lfe��z@}`��7h�б�"�_x�^I[��k
�h���կ�viCŗ�
�F��?rs�`MXs�Ga�Q��A#l=�� ��E~����/LU���lM���v�������곊%2�����@��KF�?�Jz����\z�Hɇ%�ҿ�?�Ld�M���͒���Q�Ϧxf%1�Q]��I�\�w�PZ]��l_��K��
�ҹ��A��(����æ�*ح'�gD���p�;���zT��
�4�M�:N�������Ԫ�P��$���	�`N�q:f�<�r��Ə0&c�'����K��R�~S7D2hzM�z���P�( ~1�i�A���$�}ƣ�O��>�9�[��>��W!��H{��N�Ώ؞�#���#��	�ħG�c��>�'=8ҹ��G�ˁ% ���[� ��=���9�I��AA����u��o�8�*H�H��'�K��C�Y:�@�L���rv�[�]D�D�^����>�V�J���E���#���ml��X�b�Ն!�zq�Q���>�H�H��[=f֐-^�q A�*zm=+#�V�d7 ���!T~œŽИO� �H��d�	�_O'�)2��p7_����x�������Bf@N�T%J�+%~@x��n�ȸ����i;Ǧul��4O���i���;�9ܱ�y�:=�� YԥU�]�V����Zc83Oh���Ğ�e�ǎ�l�\��<�R�c�ӱ^~�fݧ5k~X��O�ca�UM����o<��� ��X;�	�A��U��ՊQ5-��7����OL���W��6��!2�Ԓaj�J�������O�����Ƶ�"h6@���޸��ae���(�*�6@$/5!�|"���i}ٔ�z��)�6�+}�!�B�  P\����#`c �W���,�m�կ��F�B/�Xc�倝���m�D�~2�3�fp��[�Yz7?�Sp��������L��1۵�٠��Ȕ5�D��[ц�SFC߹�RwM�uM�J�~�5��e�%��+6}W��|���a~�J�u�v�f��]�����+��,[ W����G�aΠ���嬾�F�JeǴ�� (}�^(��e iW�Į�!��/ ���W�?�����'b�c�	;�N�1f�Z{4��#�o���c�})t{�� 	�`��ϧ�+�:�����mj��D��z�ʾ�ND�k���csC��3-��k��Eu�r��:��ʤ y���}�dɲJL�p��V٬�G�zz�)Ա�8�j�U�a�} 8�Л�9��@�,��l�$\��@������=:�R�K��i 
�/��{h�^��eឯ?��k�98[��x��9���<�����=��/���f��~���u�:� ��E��Է3����d��� gP���h� �],��e� p�^b+NA?[�O8�,�.�    �/��e:]m��^��LȮ�fV륗��	�Rq��gm�b�\�R-�p���C�i ~���l��hĘ��S���#�����*R�D��K�Q �4����!�B���X��{hҢu`��:�䐙v�V��=bX.^;xk`��bX��3�@}��V�Z�j��u�a��ن���=l;��#@I=J<�'�x��c�������'���jJ%R+�PE��"�J���踄s$[�r���RS� ��8l��#̰J�ۃW�f��  �#hn�2�H���h���[\�n͵���'��@�=��/JE���bξfI��9�_��Z����	u�,tz��*#>D��0�<�
(���Jd=��%���BϏ�%dړ��h�O��|6YN��sNQ�1!\�ܜ�%��:�	h:[��|4��3f͐�x<r;��H�Mr��&��*[��mr�����t���%��	Lu��:a�@*��$E�`ThH�鮖Q�)"\\���u8�������K�H$ǳ���: ΖS�o�ăVA�����N�Y�@�������*���p:n�0�X|`���6���}��W�V�\���z�}f��	ޯ�r��.���e�z>՘~f?��U,���<�:��<�+*UWT�^g'��3���,���%�C��U�-o&�I��Of�Be���>dh9%����<d&&�nt7^�\Rh�X;ࢸ9Z".;����P}��c�dQv;Y����������b�>�[�,�V~��m����zM��:q?�n��.C��'����v����g�`�D<��N�aW���IO�*��;�|�R���N�w��̷���]�G���dvH�ٻ���v�YsP�������D��ݜ��c�:EPn���y�"��A�!st�=�:v(:�!;�)ar~�&3`�V�|vCY�����w��Y�^����b$�5�k�e������yϿf��&wNԔQ��Ղ,&T:6�qu�a�mh�+:�ޥ�T�9b2Q��	��St������"8E��kMl��F�,]��� z2��N`xN��&�fW7K�!�dP��/��J1��t$J�F��l��=*�U2�����:A�G����������@ѝkt�� �����}�0��T����y�V's�^eZ�h/Ow�}�|���*�<�!�M�%%�]6� j��40��։�C�O�(�BD6���K� �s>_�R���&BlqB����>f���y<�8�׵�m`$�W���w�G.�A��IHa�0�@�����-�r��f �[�ZNE�s(���%:����Z���3�2�Ch�9�!���L�FuH�P���X2B��f��t�ֻd�]��.���~�"�ٰ��y���2�"�A���`�V�`M? �8����$R�@߬[խc�F�|�2Pf �߼���!������~4l�m�F=S�q�R���U1�G��4͹u]H�K�����R�'�'���zz��:�y��{���n'��/1_uMd=��X�/� ǎc`��C�҄e��� �ӌm慱������2�nՎ��^M�W���*���K4�f��8ҋ��HK���C��uc��O����JȨ��\@,Y��Il�6�<}�Z��mU���>�R��Lya��7�|nx�<T9�h�9X�j�̵1h�t��Μ�����O`n��2�c)���p7� r��e�5S�S��I�"�UW��(�$vV��f��-=v�,�ߟ�.���}���k���~O�[pj�/�W�7�W��P�ѥ��~��t;��St_�����Dg��F��Q|�q;1�L�/e�x�W	ԩ=��3u������v��	�V���V�0"����p1)�\sH��{q��t!�bi�A��]�n/�.�I�Ml�P�3��~ɩ�~���z��;Ͳ���'ww�S���F^�,Gh=�_��,&5k�%Q�9u��>	^	6h��&�I����o"'w�Y���b�,qNF�VL����Ôxl�J)��.#��P��9V�G,��Z�v�$�]@\�:⌳�c�!/*(��C��o �7���~�00LkM�����&������(c,>&�!����>�N�Y:����r����M�E;�R�Ӫ����J3�[���ԅӗ�)��#�?��]�l�o����'��w}��%�-���H,��Iҷ�Q�fx� �+�B	���t�p�ᆶKl��	�I�>��ζ�x�t\�pS<��rl�5�f��n��ج���*�"�졲��f��xT���]�o"���=��re��
� g����P1AHe��#�k�]�oU����j����'�f\ړd��m{J��VJ��R�f��2��y�ZGЃu��_n��RI:Z��+����X:�(�W*E4P ��@UH�r�Z�>ZB$II�2��a;��Hq I�i��i�sj�V�1�v�g��q%qj�C�M&�	EM�.[f��7�6Q]�W\N�T���F�}�-L���ΗX5�^��n�,�p��㲧��x��s	�5�k���i�����\Կ�m��!������c?`|_�w
�N�L��]�~��\�s��o��]S� I։�9@0�k ��1,��aw�v�+�]z�m�����/�������%f�08���#m؉��ݺ����{�{)8i�ZC4J}3��P�I��0t�@<s� �G��Lz�N���h"	�6��� ��_
mg7��ȉ�e�d&}�C��#��P#���@5�hPf�(�g�@�C� K���<��9&�z��E�����iiIu��4��'�0����O4��Ձ���$iW@Ͼ�w��1�r�sZ���\�����s���~݈�°�0��t6{�^%<�1��]����Z�WHOa�wx�mYc�������a������:F�_�?GU)������ā����C<����y��/���(o2�p������١}��C%?��$>�6�֍:�W[�jR�.�C*8��� wyP��� ���5pZ�Wh���j�eq�?˹�AC�L�-�B�K<t3�'"A"�UAs�~�y���S%�IVa�+߸h�Ǯ��3hXU����L��>	DOn�~�9 ?���sv��c	=I:EQ�p�HZ��i�@��j�k/LU�vig��ۉS� DpQX�^�/C6@����v���_ծ��a:e��iݑP"Xe��
�9�'�ٔ��7��]�3w��v="}�/�ή���-�]�K��va����דT-�������}j TD�R2�\_� Y���%�p(&�DF����U��ѭ�h�;;�.��2Ż;�����/Y\n���m%>j�m��c�2�ѫ�������J�#6�(�����6�����e�a��.Lq�R��.?݅�BV�GB�=�;c�;��b_�i�LGj2(��&�7�E&����0rZg�ش=�,r�+����%ہ�-���N�%�~ �*V��b�J�" z6�jD?b7�!,�#�����Un�0�n��	yǹ�}�#�_�YQOZ����=��*���g���3k��ħ��j�ʝ9Ξܣ���:�^_`����l��S"I���
t�\M~y�ws�������*�_e�W�`N�^�o���-����1R�v��e$�,��(��q��x �2�d���i����ve��w�F�2zx�2J�+#��а��A�懰j!�qf V�ٴ�kĵ+R��m�͎ dh�b��������V���7�E��11w#��d������/�˼~�$��ظ8�������6`<�cY�e�]t#
��
*v�wY���1d� ��#|B����a_�0@b�����<G�D�E�7
q��"[p�h�#�9��)�8��!��" l{7GV�!cFq���%�TL�"��ɀP�4U��#��&�ć۶s$et�W�
P��q��$���W�,��թ��s����sI� .:�A���D�a���������B��$C�zw����|��C�1��/���� �  �����Ek�������Ƅ3o�aJ���3�$� R
VC�@T)�4U�Q)�&�v���q�=b��2�u�n�na��WړS�^���dnp�cE�߳�	��3�x4,B
��С-��
�J{�4��S};0� ���$�G��_�����6��AhM��i�fkt:G�OB��P�S�l�qvEw�y�_��c���_
��ʥ��B���¥�0���M�7���t�-��������k�N"�3�^��"���t�[�������Ɠ�;_¸Z4�J�P���g�Gl	_���L�E�c*`�^f�˒F&٪��>���n�R���  ��׾�ǝ�ôv ���M�۸J�oP���Y�#ǟ�:��/��7�pW�����șV��KJ�E�H���AA�!c8�Tyu�$.*����ٜ�(�{�rS�����nR8[]�km�z�h_|��>��s���X���x[�2�L����X�0.�r`q,�2?}��;�h�G8�������eQ�k<�.���/9�E#r�L�X>��[E@D��R|��j���L��x��U.�;yE��D�v=�ٳ�T�Xe���S�\N;KL��ڭ�q����Ke���Q���h}����b�"i:ɳb��20~ht�"Bc5��g�� ����>EϴX��׿�/�&
?ܔq���m���h����	��@H\�/Fhd���� s���2���ξZ�:v��M�ͪu��2����J���ˍ��(�#�����e���加��,��ǹc���(���X��0�#�o.�s/�ڎT����v�n��M4k ZI$^x��;���̵���h���2q�]ˣ6K��h�uc�o�z<}CM�7�eb�]xe�W��yvŽ���p�[X�U��Ȉ��R�_��C��!�bAJ��ʑ�<��D\q[_�t�N�������g�m�Yv����$����;Q5����1�m�A�bȚhg:��8�!/�j���U��{��^d�7�B���(f�g&�2�P�_<:G��ќ��Do0�%B~�s(�	��!%�Uq�&]��B3B?T#p�{�qʂ�~З>��g��h�����|l�<.��v�ط�fm���=��!�yG��&]I-V��Rlޤ@6�������]�i��q�*�c��B���*��z����������
O�8��?��a�����f���U^�$��Z&/��^��A:e!<���è��੏\����=�<v�1������?"��(��hU�N�w<7�jT��CQo��0���L:�lm��69@a#��l���(�b�{4 E��&ﯻ��cq ��_^8�%���Y&^Z��t#"c͞?��Q=|5�"c|�#f7�5� t̋��lqv�x���2P�*��+��G�}�*aY'����e]\:�������R�^�9��(�!B���$�L�9�	g
�]��A��#Eg�!��a $����xh#�$9Z1*�kn$g�;K��E��/��%�G&2:�Д^�@MZ+b�P�$$a�4|Z>��� Z��Q�ǩ�[���S�]�^g�d5��d��ކ��fX�A:�;�3 q���XEP._͵Ջ���9 (:s�h��[f�R����^������Q-��,�`a
]��G�Eԟ��(����ط ��_J�۷�EŇk�@��L�bW�e��y|���~xwv
���cŖ��C�/թ�(ۭIa�H9�Bŵmja�uƴ��n�G�U<��ӱ��W��f��\��򟚼��mqf�>��S<6Ó�u�L�dW�ēͮ��%
���U�W��3C����J˴�ܡt��uC��k�p<��x��E���ɹ�k� �qC��('�>ZW˔�UԊf�L��u��K~�un(�����S��8����!�*�<����B�߾)��/'��}��T����$'�{
��*ibW�3���8�*q�K������j#aێ�6�N�*��\�"��Yq�ئ'���E�qlƾ*�{�!�5ǉ�?�E0PA_���۪�����"��*ֻ( �BUY�Y4}޹P��f,b/��K{Q�^������`S�|]Ѵ��d|���b�Z� ���2���S��S4�b �a�t��r�[
���:R'����c�F�3�,��Cԓ��NΡ�%AD/.A.�(���?˰2���r�nXe�4é���J<H/p���1֕����f�S7	6�G�
�X��h�z��7^jFkU�Q�y5�$�s�Ϗ��N�cW�.l�enEkxhnȃ|�:�ǯ��絨��Ϗ�÷�> R�S��
����'�/q��E)�@���l�ca;r�����*�C����v������ ���Rԍ��%,@H����`��3�.�kB�:�jI{#:t8�6����� e�%Y�Dܡ�<�Q����al�����A��M�+%&�p\bs�[/<foP�ڋI�)�E�n��a�L�dO�@x��W��mF�q˕j�$T�2	U�Rz�q�YBU� ��~�z�n�ݐ��z�-��} ooD4/����S��͍Z�$�궒D}*�7���������_��,[��b�#iIh1�B��ԏb��.�=����x�(�Ӕ���Vy���b �VWe��+��7�FDj�z�4�ߑ��:��ⱋ݊��s�^�o�����M�?�J�i� B=>��j8f,\9�K �p	�.���%�Sl'�V���t�˸o?��C߰�^��M�AY��k��#oQ�3�>Y�B�*���:��ect�21�ޠ��5�(�W�+]'�c��7���HQj��v�^mu����YTRt��)b&��.H���J�z��hLY`�a캐-.�/xP#��OAN���tm3
�&�Qb��+)|�F�u��:�<S����7���*���B��_�ip�����u$�_��@ް��6C~��K��x�ll�k���u���G�4��DKT�]�3NhS��'	帮p�[Z]�H����h���Y�&��;1�˸K��:�,�z� C��>����7�U9>�8�,��^�	�fˣO�dO��
�6'�4�N���U
k�/��ר�x���[C�L"�UòѾo˴�LR�e��VAf�����"Jp���9�5��\޼��-�\9WW����waS\>�V����Igi�r�:l��
�f�(�P����%Z��C4�@��B�W'Ϟ=��P��\      e   L   x�3�tL����,.)JL�/�tt����2�-.M,���v�2�(*΄(RHIUHJ,N�)�%�Ŝ.N�\1z\\\ �IT      ]   k   x�3�t
�tqwUp�,�2�����\c΀ _ �&���r;�(�*89�f��A�@ڜ�	$k���_����d[�4��������!�.`{b���� �.      f   f   x�3�,�T1JT14P�*52ȴ4�
q�J4.M43�
�w�vJ6��s+q�7.(6J�ps+���pv���,O��,KtH�M���K���2���%�E\1z\\\ l�.P      g      x�3�4�2�4�2�4����� /     