PGDMP     7    	                x            movies     12.3 (Ubuntu 12.3-1.pgdg18.04+1)     12.3 (Ubuntu 12.3-1.pgdg18.04+1) p               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    141683    movies    DATABASE     l   CREATE DATABASE movies WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_IN' LC_CTYPE = 'en_IN';
    DROP DATABASE movies;
                postgres    false            �            1259    141715 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    141713    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    141725    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    141723    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    141707    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    141705    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    141733 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    141743    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    141741    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    141731    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    141751    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    141749 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    141885    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    postgres    false            �            1259    141811    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    141809    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    141697    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    141695    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205                        0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    141686    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    141684    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            !           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    141853    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    141844    movie_apis_movies    TABLE       CREATE TABLE public.movie_apis_movies (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    rating double precision NOT NULL,
    release_date character varying(50) NOT NULL,
    duration character varying(50) NOT NULL,
    description text NOT NULL
);
 %   DROP TABLE public.movie_apis_movies;
       public         heap    postgres    false            �            1259    141842    movie_apis_movies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movie_apis_movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.movie_apis_movies_id_seq;
       public          postgres    false    221            "           0    0    movie_apis_movies_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.movie_apis_movies_id_seq OWNED BY public.movie_apis_movies.id;
          public          postgres    false    220            7           2604    141718    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            8           2604    141728    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            6           2604    141710    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            9           2604    141736    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            :           2604    141746    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            ;           2604    141754    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            <           2604    141814    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            5           2604    141700    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            4           2604    141689    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            >           2604    141847    movie_apis_movies id    DEFAULT     |   ALTER TABLE ONLY public.movie_apis_movies ALTER COLUMN id SET DEFAULT nextval('public.movie_apis_movies_id_seq'::regclass);
 C   ALTER TABLE public.movie_apis_movies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                      0    141715 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   Ŕ                 0    141725    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �                 0    141707    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   ��                 0    141733 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   [�       
          0    141743    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ��                 0    141751    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   Ɨ                 0    141885    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    223   �                 0    141811    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   ?�                  0    141697    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   ?�       �          0    141686    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   ��                 0    141853    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    222   �                 0    141844    movie_apis_movies 
   TABLE DATA           b   COPY public.movie_apis_movies (id, name, rating, release_date, duration, description) FROM stdin;
    public          postgres    false    221   ;�       #           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            $           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            %           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);
          public          postgres    false    206            &           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            '           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    212            (           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            )           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 311, true);
          public          postgres    false    218            *           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);
          public          postgres    false    204            +           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);
          public          postgres    false    202            ,           0    0    movie_apis_movies_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.movie_apis_movies_id_seq', 553, true);
          public          postgres    false    220            L           2606    141840    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            Q           2606    141767 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            T           2606    141730 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            N           2606    141720    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            G           2606    141758 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            I           2606    141712 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            \           2606    141748 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            _           2606    141782 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            V           2606    141738    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            b           2606    141756 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            e           2606    141796 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            Y           2606    141834     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            r           2606    141889 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    223            t           2606    141891 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    223            h           2606    141820 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            B           2606    141704 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            D           2606    141702 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            @           2606    141694 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            n           2606    141860 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    222            k           2606    141852 (   movie_apis_movies movie_apis_movies_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.movie_apis_movies
    ADD CONSTRAINT movie_apis_movies_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.movie_apis_movies DROP CONSTRAINT movie_apis_movies_pkey;
       public            postgres    false    221            J           1259    141841    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            O           1259    141778 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            R           1259    141779 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            E           1259    141764 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            Z           1259    141794 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            ]           1259    141793 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            `           1259    141808 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            c           1259    141807 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            W           1259    141835     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            p           1259    141897 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    223            f           1259    141831 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            i           1259    141832 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            l           1259    141862 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    222            o           1259    141861 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    222            w           2606    141773 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    211    207    2889            v           2606    141768 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    211    2894    209            u           2606    141759 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    2884    207            y           2606    141788 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    2894    209            x           2606    141783 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2902    215    213            {           2606    141802 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    207    217    2889            z           2606    141797 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2902    217    213            ~           2606    141898 @   authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id;
       public          postgres    false    2902    223    213            |           2606    141821 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    219    205    2884            }           2606    141826 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    2902    213                  x������ � �            x������ � �         L  x�]�Kn�0��ur
NPM�sֽB��*4Du&A����'�ّ���Kب���0�0�o�K����3�r���脊WK����M�xE��;�?��Bu.����u
^YH���8��ٖ�	���v�($42w͕���*!����4�.$�7%�9H,�$ 8.s�su�� ��Ԧ�������#��#h�m��q��o�o�_+���Txu�h��� ᯼�䱏{{�̓�\aM�^]���I[��d�33���0/3�넠*��G�'�j!(�+��$$v;#�I�-u&�� m�G�q^u�ߺۜ昁Dls"��ms�ǟoZ�D�I         >  x�u�_k�P�k���.��=�����Un��h�c�Բ�����`���{���ǋ�*��	~��	U�m�]�
�!��E8V�8B�_�>&�=t*��ϟ�?�Osoj���x[���HJ����^j�H��CX�0,�Z���f"�:@,d�o�,F�+��=*��۰T�cV������c���f�΃g�lg�1�:[�n�j|�N��҉��Կ�o��rF��bw��y:/��A��>q���=VB�K�j5�6���A���j#�ZlMk���]�u)�4����i��eў��3k�����	�*_��,S�y�      
      x������ � �            x������ � �         L   x���� �7�¿s́��G���p]���b�c�b�X����+ՒB�Ѳ�@�����NبH*O��]�            x��\M�Gr=C��C���2�7�)�R!J�#�{h�49ؙ&0 ����/>ڿ���?���*p����8B��z]]�2+�j�����
]��J�
`��9k�EٕVX|�������?w��w�������/������U�׿��O��/�1�P-�7!�	0�x���+k��=�ǃql&�1�_)\F�5C��Pz�J(��{�ü�c03�>+�V�-a!旼kw�}���W�.�S�]�����@� ��L�#�|~��竮y��|�ݪ����W�hj�xq�n���_�[w7����?~�}{�}���=�|
�%����T&.-*�_��3�3&	pj��BM�΄�g�� �<�1x���7��~��Ī��*�aG�������f��j?�N0���
�2�����6�w�����}����h���ś��������}�z}?:�����ᙰ�6(�O����Y�t���پkh���������� ƒc�W�VFgF����e{�5����!��RX@BĀ�y��u�|X����ݼ�nn�~.���:�ţ�o:�m��6�EU�-ci���i�כf�m���î]?@YS����)��M׼��>6?|�v��pq����}���P����J�T��.^n��iqx�T�u��B���������b0U �|�)�}ܽ��.���޼�_5���q�������ֱ!*��8.���]�k�#�o���[�ӿ7_=`s{��gi��tp�[{q���h���Ho9p�6�q�n��n&	G��\�0��ģ�ݎ6�yy������u�{�谉��)�4�oo��)�60dX���=xA��~��Z��e�G�C=|�6��uӼ=l7�m����a���x����ۇ�;WP����T���ps׼X_�|���A���v������f��?�W��	�8	t�O0"���<��J��@�F`���FJ6���FE�D�ۄ�R�|�#?���3��AG�_��VC�R��X�Q"]�# x:͆����s�O��5m�ew{W�C=e�a6����z:���!Ax\<��Q��Ы�;:��RN�EYyS!{��yX�������7���Th�Gfȵ^�����dg*4&��By?�&ݧpxy��}z�AS�q��C�sa������6�l��Zo��~)ʞ�
�	��Q���=L��>&J16' J~e>n���u��QR���7����y]�;^�v�|M��o{����089u.���v}I����-	�v|(�Lk*Nh�7�����������:cc(i�a��ͧ����~���Ȳ0�N�]ya`��f�I�xl��aIT7�ԩ�O]:�)c�ӏ�%[�iH�<`�����öyN�mSzj/���ײD��ѕ�(;�!�lX<o�۷7�梯 M!��� ��'�t�������i��׷]C�`��_���ͩFY���k�'�n��9���n�{ըKΨ��ڞ�?��c��{9�FZ��T�����������9ڥKix(������@i��M�G/��Y	���;+>�:����I�^�ո��(��h!>?O9�u:�2XM��X�Ǵ����7�0���"���
�1�?���OW\ �ؼ�^����D-���
�)
}���g��n}�n�o�:����G�R�:1)n��I���nw�ޤ�hp���p�>%"*9>=n]���miS�t�n���.��I
���S2�T�7��CȽ8P=��S�%W�+�.ȵ��V�ꀡ���u�"q~@�����;\�}./��4E�G��}������i���&�QW��dE�"�������Y��:Q�@z�x�Cj�:����u��qr��0��ݦ�n}�=�X|��H�+��+_��[��.�\��ܾ�T��e��Nu�������j�ۦ\z�ޮ���u;�_'+R-�Ø*�7��e���vO�çv�8�|��HY-���ֵ?BK���\�)�fqU/��w��sS�%��:M5�kYb���՞:���u�����pC���)�%��$�9�]^hPn��A��a��h(������ ^�2S'~��c@]�=I� X�c�h�����=�U�BF�I�A�Á�b'(u���l걔�1�a�푂&�Ha��QзOeyNSя�?���j Jt����T���le4�91�:#��h�S�6������S�h��9��.��:���5}څ9�h�S9zM�� ��Fc��10��qa4�)L�`��!L�)��V�y��^�۔є����u wO�FS.�>���\zQR�FSB��tVb̤8�2z�*�5n:���t�T��M|�>�N�ꃼ�,��qz�@
�"	6����S
)�BuJ�����i")�J��Ch]t�I�2:���C�~/L�ڔP
P��H}���N)� �H��6��)���,�q�ʹV
PpI@�l}�ni��$�Ԭj�'�h�QI�ϘV���d\dayr+��Z��zq�
���2tl��y�>?-���HO�K0�x�O�ӡ$}� j���ta:��ͨae�����b���8ӱ�s�f��"}La9�pKg_�M�19��������H�V�A���#ز0���Ed��t��l�#���{,*;T�guA��ȣiɎL>5C�2��.���A�G�~��.��� \BO�+>��'�qV �8J?�\]��hb�*�b��q& c����̓�A��=ZP�8���@�dJP^
ϒ�Ax���溏μ*93�a��E5pjR'�2ad9lU�A�~`�Q>��Z�d J9.��O�� l@��"g7%��0"��4a��d���"��Pl{3"��p�x8婣�Г�9��A(Ceu,��A�E���?ΐ�A��	R/U�2�#��)���>�r[�tZ>a	�PT��2�t�`��t�g;�ˈ�������ō��'�pʦ����E� ��H,!Ma2�(�0��]�T��Ax��)�
��)M�؃hE�Vƀ�4E!�R��v�9�"���Pg�+��QY�Q� �B��ҹ3&,��	�$�5�y�"אѬ?*����R8�����S�.���(>�,ڤ:���Ka&2PTT*e ]�A8��h��v-ۍ�DF&"�A��3�+3���'�qՄ��Rd*s�N���	�Q8�A��y8ypBk~#�[o�a���>Ml�$?�Q�����q�QX��@g�����5� ���9�Z�	�QX�=�UP���;�3�F�W�h�B��-8
��q�-K ӂ�p0�rm��Q=Q'F'?�8,[�N"\N�ޕ´N"�N����뒮uJ�N'�P�_:]ps%+�}2\<R��	�O��=��z�$0�>a�j�Ҹ����#��pN(�x*m�R�0����!�R%�O53�Uآ� �ʬ%�U97\�]ʸ��|^F�7��4e�]QĂyb�
;��b(I�����*�T�NI��q2^��� �c	� '�UX���we2jn�
w�ᨹ.���'�U�=�Q�=����� C�V�iE'Ja����)�z�s�2�L���f��'�Vet���I2���ɉ�U�1λ҇PT�t"�UB0~	ʗr6����*�O�є��88�&�2���(��~�$�TmV*.��i�Z5�iІ|�+���V�}�h^y]��Q�[5V)(���x���P8�1e8٫��KM�Jy��sɁ��&^)cD]>�$��КP�=����ی�֚P8����ʧ&Š�5�pFy<��P>n3�&�(C�7��׵&^h?�"9�\E�&�&>(c vĞ��P��c��=js
F���6�M�I�
��� �Z�2�i���� !]�� g�^(<NF�rq�z����챴���!N_(�NFHw2�q\�Bat2 -uY$�)|�p;M�R��G�Φ��d�Dʜ�q�5=.(=�ʜ��Dz(�xp����]=�'}��)���C�|��te0�w]���c��v��=�(�d�$L]�C�2z��4��K{(�P�С�J���
�������zm� �  sʏ�.��E�����4eJ�����{(LS	C�L��Ca�2e��};�?\�C��O�)���}u��ʰ�~� �N��C�2z���z��=~,?���R��ӷ�P8�d�
��l�Q8�����&�Dk�e%����{(YF
Mԉ|(<YF���-��|(���{5�F��|��݌A�����eC>]�:q3�5�0Ѫ,Ƣ���1(��~4mr�y���e�G���nƠ0g��"ݓ��eZ��7Z{��F-�R�\�Z��1(�Y�� +e�9v3�'� �8���nƠ�d PE�#��ɛ1(�Y��g��/K�]�A�����N��S���e�d.JK�7cP��@=}i�����+��Ѻ�ɻɋ1(�W���.�=R�vTӕ���kP���ч��3nנ�]�^�[&}(�A��S�1���cmT^Io�~`�1�!j_*n���1�� �C�/o�SŘ�Wl��*��Ӌ1���З�Oi�έƄ1˸�wf�4Qm��+�PQ��a9i�ϨƄ�O�>B���d5&|X� ����1Y�	��A%��'~ MTc�e%m�򡬒�K�n2���r飠��/�u��^ج� �D������[e�@�k��@��Ƴ��U!Z���{��ýr˒�t�.*�P݄ejN�n*C�3�~�-����oʐ���)ä6-<Rư*�x�~�6-�R��c��Ɲ���� ^�{���4-�O���3S�3G�.(CE{���J�Ҵ�>��A9]Nz�ImZ8��GM3�����0DJ(�S�z��9�z��<�x�,�OF����X;3�`-<P�r��,?�k�s2���s�,cz�&c�~��6K���d���m3��[-�/*gJ�J�Z����d�X�t�Ro�03�^�c��N&��1�25K����d0�(�T3�)�j�g2.q2��S*j��[-�L���L���.&CPV,�y�|���/���� V ��          m   x�M��
1D�3#��Տ��aڤ4�����g�L��,J/[Y�n�Sj��5����0��Z+8�Ҝ+Nt7��[a�/�ɹ���)�[����@ǥ��=Y�'�; �3      �   I  x����n�0�k��_���ͳ�dY�7E�i�T�ۯi��Ԕ"A���Q�n�<�a* @�����7�3�g�'Е��R� Ϳ@UX����HS�*�"Y�S[w���$�
�ZE�*tM�#����5�8����i�QV��luU�U�����ܟƟ�񥯏1�=��%���]x����p���6�kFQ���i���F7����i�B�ֿ�&t���=M��W�dM��e�����yI��&i3D��r�T?��Q mhUdF�2����M�q��f��a6)%!2�1��z�i����XV��sm^���7����8}�D�~tm�&��Y��x$Qf��&�m��2���Q��]^?�*A6i*iV�<���g�Y�,	wb\�c��~Ӭ�Y	#I����ˤ�Kw��:2�:�8Gc�)�zXIY�Ti7O�ϭc)��@(�0������#�L��0*aJaL�ņ�{��U�%h�652~6����l�������������Z�� 4�]��URh3������J�J��]���ތj��F;0�f]�'A��r86G�� o}�(�0%�l�&�����p�Q�           x�=�Mo�0��|��͟:Lv�()�%���K�-T��,���r����Y��q�4�N��Sۦ����Y�uך����!A,c��d{��H�"\����$�D���h��Z:���QW��%�4�D�Eזth_��~��뱺��7Q��q��Q_ҩ*�+OP���L�Q:��H0tj���.�����t�J$D�οO7�L��c��a�騧��D���H���
#��tD�f��x] @���%�O6la�ua�������m��W�e}�g�            x�}�[oI�-���y
��4�M�<|���c����$CdZ�Lv^$ӿf0��9`���c���;"#%��n�l�̌뾮��l�}���5���?�:=���6�<]��g�+��;W3��"���r����&�l~������PW����mv�:�sSw���3_�UQ4�k3������Օ�c�5�:[We��;�V�����}����w�&�n����-}#���})���lu�\��e���Z~$߭���(���xYY�;���2yD�������6�'Mv�Z�K�ӿ�g�/;�}�}��[ϩ��ǩ�&/X�L��쯿_?��h��&g��M+�qY[��Lǭ�9^0���J��2f�&we#K���R��rm[x�n���d]��{�C&"�S�2�\>ոu���Sd>���G�������c�����̻�.������T��;Y�୓�M���:��y��P�E�e}���N������
k��9G������nuMW��w��m�c�Z��&�����[�h:��\���C�U����L���>�wn�γkh��/?^�c'�?_��G%���q�V>+밓��\���|��o���즪׾	���Q��6�9��m*�C�q��8�+�6��
�Ʀ��n�ˏ��<�M#����W�-�*��Dj�r�7��l��5nU�r��?���f�N%o��pf�
�i�[1�"{*�H�Rf����u�����7g���� dj����U����n�����pd���ߛn��ظ]׬�C߬��g�j_�I���j��0���cW�U���{�}r�dyS��E�Qo;�S��uő;6��ɋ����'j/р���ovU��D��F~�5���xuӰ��|�vrQq��﵎F$����<����=�l0g��,�?���4"�����!��l�\:9ܘ�b��˱��������p>JO�b�o�¶Nf�������J��&;��mkw��7�\�/�.}�ݭ�������[:$^�y��Z��@^��r�6� �Y��k����v�o�]���>zZȔ9����<{��a��T�/.R�������`����{��4�]y[V�%�_و��r\nY��<N�
iw�a�m�ַ&��[\�7���yS�5�<7�v';�����q-����(��J��b��P�돇�ˡ�,����ݶkZ[� ԧ���ק��z�a��Ů����G����1��5�������DP��o�����P�ɯT�<�
Y�����/+{�+��(7.GW��N�љ{���{73y(������E�zYȽ�C�U�u��CK�!����6�B�{YP�z|� -G����	����5{Z�ꭟ�j��g�r2o��R~1;����e�rB��ns'�+-�*]�N֧���r��x5�d�U�v�nr="Q�s�D���r��W�J��M.z���}t? md��U�d7q�ܽo 9ս�U&~��k��셈(*�m+.�+��{ҟN6|^^��*�do��l�o�ؐ�Pe/d���@������N,�����,�T�3
W�"C.3��V�)?��D��	�4}����@�Nm�^�� ��y��4������U�*d �=������W���[-o��N͆���w��\S��O�74qD��eb���g�^�
�X��=��]U��(�
�	G�[�k&jPV��芵?i��W�>�h!g��o�_y,�"X�)w�e���7(�&1��Pͺ�j�+�J�a��x�/��K'g���ES�!E�ȹ�s(�T�Vv��1��ވ�
� S�CG��2��yt2�,�1Ow/�T�b��-��VM%�$\�\�;f���F/��=Te���E��聘�,�q���c��kP�4dN.ӅȠ�Z�;�O���1�2���!�x�Nb���ݬ;EK0�ď���]A_���<�C��\���|�I��{������H%������^����k�P}�]�,r�P59^�	ȶy�>�޻��W��ߺ��m*I��V�����>����c��k1��*4M�Ȣ��D/�'�2o���s�ޝw��"�dH�UbL�4	֦	���N���R��,��	�˛���tb7�f�|�K�*�	 ޮ�(��Z�4�T�t>�F��6�w�˕H��&�o:HqL�|�����?_굺�=[����:bvi�
�� ���4{�Dٽ�ǟ�ŗ�z��J�/�����z��0ߪ�.�Q�z��˒ϛ�l�B#EvU�y(�s1!D��G��*�I���F�2z�´.̋r�^�?<%9>0o}�Gf�9.;�����}�2(m��o����V�O���V5A�aW���l6�N��EqZw��C�6z64�y�"6D�`ڗ��N�rm���T��Y�Á�+'�i���^���K�k2_T���`牵�a��H%�3�����@W;��ڤ"`es1���� C��ʕ�,����Lm�k�y/@��/2~Rp��	r�o0'_��P�#,�X� v~���.V���ɔ��w��s��'��rD����p����.=���6���8]U���֟���ܰe�Q�O���9�c������Sk�z��싓�ȷ"��Ɛ�c�Oe�Zw��(s���fSx�"8e��{,&oY� �\�|��-�SD�\�X�JY�t�����#�_���m<-�[�;Z>�ы�4��@ Ǫ�5{#N���xsv����_E�i��8>�x�j��(�<��Q?���^����B9��A�����eWCE^Wv��B�dnk��Aa��\���-��k��h�e����x M2�q60�)�5cdA)|��`%��yǓ^&���;�89����Z�>I�vx����e��� �<2�sD0��娍�?eė"bp�e�"Z_D����mv�}�F�;19Uk�0�bV��10\&��}�8Ɵ�[��#odzײz�޹���]o���c�ٯ|A�Vvp�-|)�x��W�]u&�Xu2 �3&t�]yWR�����HM����?l��à��%�{�F,��>
b���^��
~�q���R�涐+L���d�1{v�k���g�63������yU�4�I�M���z~?�3NW��V�<�F�f�E�j-��7F�drN�5�dzԘ�mx[��{�<}���+Q�/�m�2o���4��NH�-��Wx"0���T���/jX[9eS0zVr������'��x#2�*a���l���������^ L�
64�K���5�]_a��c:�*�g�T�,/{�\���[���s����ӷ�_NǼ������=�>�#_7�l%�����3i�9M���u���a1\u��p���N�p]�?����$��i���ԑkD��)�����(�jK�U����~��d�ϝ�!bP������))�"('��l�k�T�5,��6Ǧ��$�,�
���R%{4�T��X�ӱ&a*�Ź8�b��-��%�ڙ���+�<�q�(�7��Q�T[XeD!*��S�������M'�_���dpoN��~8͖ggg2߳�/ Eޗ�v�F�{9�]W��7$�4^�n_b�4���s�{���;wW���ħ�hh���AU�F�"�Z8���WɅL����`���C��1Vzl���	ƕ[��o��LMV�<Z.f~�}|Zn�\�T�-�
I��M�������ˉ��Mcc�>!.EäYC"�,���B�!���Au��m;��54D��-����U,U�ʍ��>��X�l��v�+��(�KSO�؟�3�U����W�B͌[�[s+?�#��p0@8�fqfa(�:aj&���`
�������A���,f�h��z��U�	G�3��_�/Է����PN�-�y�|<��+2��-�w��<�ݶ��AiZ��!Ͼ���:�ł�D�?�5��Pmjw��n��T���M�g^��]�l�C]9fFD���O�d�o��3��>ur�_��h�-�����^����e,B|
y�}���!' 1���k�e+Fn�ƍeQ����@�`hȒ��f�����A�߈ِ�tm�!�~���*��1���m!�Nlm9O#8��u-w&��$�9�g��ە{��S-� 1����g�Ks{E���H_�I�=�    y�Q۳��
b��ж�NoKE��Y?���+r�`�1��v._�ܭ��&�Գ9�s���i:�ť�㽿d����һF`���)� �E����YT=p�R�3:���Q�oW��N<���>�NR>f>�⻟�:<�e�Rr:8Y�>O�/s������D$����d�'k$��4�gi�X���6��Q���/�>m^D�5׽�ֻ1����0�d1z%V���nHn�Ao�0�L�-C���9�+�ޗ"�4�����$�Ѥ.�G,�3�*gh��V�].!���^��N,��H&����I����G.���[���s7�߷���X 4'�������:f��@wb���0�ڈ����-49�%��HV���<��A|�¨�h�FSU������CU3	� w3�[�pN�o�4;u�Z�ޕ��G�|+�V�!//a��/��z�3�׻={�m����<����)�u��Nע�n=���m{�x���|��/�s��kY,�!�c���h�nf#w�����o����=���л�#����߫�K������]-&/_�:�z�Q�LN�|�Y%��+߶�1�O���;���&���,��J�������x�{�������1�օc��W��f�0��ډ�r+�(���°�DP��Ҥ!�����K���ۻrU��u��o�qjz'K����Yx1�Mb�o���'f=FK|�\v��.-���
���#������Ո^���E���ha���b�� Ui�rzFG����c.~��~�g��B�do|)yǲ����A��,��B:�ܘ�y�l�,1@6�����{���W��)�����b��0���(GN��f�ߊ��VU����@#E�鵬�.{/��`kI�h�1��|S�ugY�|�`U��9��a�����\Ar�e�b���X�tGu\��O(��~:�/(��;2�;��Ml|3�؝EY=05�Y/�-����19�oKU78��ࠍ~���������A��*�{n�/�I�7=,�'���PrBE�u������.~
	�]W�m��IL��Y|��������v����_��DcYsMH||���L�5Bop\�C��"3�eF������T��v��\M�z��|+��m̞�־wgaX��<�2�,7[��I�^���O0-��PS�T���^�y+�h�x����<�"jN�G	`��MSi�J��続F�[aK�40�Xߡ��'��[BHΊӜ���Ņ"�T�]�[�f�B~r10S��y)��kt(�Q�)¿8"�q��z�l�vgT �u��V6&�uq����q_Q�[�c�|�tjCk������D� �2b��i��2���������uB
�ǖ�ވ}A�C��L&���u����:]����p�ɗS=I��I
X1�ħ�x��� �&&��ہA^��m�V�W��rR4�*�+-RH��XǨ�\L4��22@so������),Gϫ��&!�5O���b�?�< $�'4̟�'$2���Zɚ]����8җ�a������Z�_\��*T�4g�$�)���:���o�rC�!b.�FQ�=���r��=��U�������rŌ�N�[ݲ����Eǉ�͛x�#�D>ݹ��l����b�J�N�y2zV�Q�'��]X�}��r��������!]�3#2����j��,�d��	�v�t�!@�J��"��ˍ�*��x�hM;���TB ){�!��-��w:��h����U��J�����Mm㎤Fy�O�/ 8��7�w�)7�!dDĐ8%4L"�g�X�����\�ށ�8��K��r�nn|M$Ę* �p�$��g<�	��%�B��u��^�w�UU� �f����$ ~_�x'ب�.�䬫îZ�	q"p.����ۀ#��dU�����"3���;�}�X�<�-�J��ꈬ����#���q#h,�{�
6��� �@�ti��7��a�߫0�A�Fz#�[��*�K[�쒧�H� P���r1�"z����;�r�Mcd�`���|1qf�&!F 4���ԇj�#���G�wY�VK��w����R�#?ڸ������cd/^e�$v�l��q��,�g}��Ǧ[�����P� ��ת������Ҏu�����e�Mt}�������9��E�'Ɋ�X�]v4l!L8>iR����*K�[�
AΩ_��8���.���'���]D�"?)F(5�7�RA�[ڈjp?"�򄑱q�X��|z�u�dd:�Fb���,�B�l�,�]vQgr���{y�.�>-�Y着8��|�Y����u?���k�5X"�*z�G^�����,9CL����^$�&�����<x�bD��-͛NF�f�*d����<�ַU�n��X�N�@C��p�!E�
b�xJ����1�<2�we=Q�v��6~p�M�Ј9D��$F�������2��ض��ԧ��]�&&Z���<�-8�}--0�0���R�QnP��"3����5�?���3��Т{�lt�/,���wQ(����b|��!$"�6��2|ɘ�*�5O��m�h�t����7�{m(�Ih�:��>@�.�����.����ϑ�L����=@l��/Og�52���W�㮌1HQ�&y#.�M���3�2���`����I��˩[��mY3�79���%�s�4jn��2]����l`�vi�����ְ�):�����5�����CQM�<� �bK�u.v�и�P#uȑ{��+*6�|S(-p��ů&6�y
WZN��eZ�������SY9x�[�������ɵWۙ�Gd¡CK>,fy�����Ț  W�D'��5%�#F~�c�����^��B��S�"o�AT�V��L/�b��GE�8�[O 	�{�H��҅:6[a�+b���$�5���1��HO�^KŠ���78�;�yJx��4�DL�r�>Tk��f6g!B5�`z#�ʉo�n �|�'�/�����F5����F�(�	�1K����ZLާ���(��N���aF�3��!���g��>W^�/�"�$@��x��ڱFl������	z�b���Q� ��D&48�g��=f����ϯ�F����\Q���!�~�����-~b�D,�աF8��48D,�%z�S��31�>���/H��InB�hv6�v���7�7�|t�T.��K��ɱ�G�B��`b��y��#Y1N�fC�ٶ
��b�V8��wYNn�������J�\x�5�����l"ꑷ��.��u�~+���݊�'Y��h�?�Z.��c��ľ��a0��9ϦcLkr֛�ۼ6�$�	3gW��ؖq^1'�:����3t�(Q�[Η�]�:�l:z�7Nܚ�(�m�<G���1��_�f������f���3g,��Qù2��~%ީ���tC�)����oC�DP>8�� +���ܻY��2�w�9GJ4&���x��t���o�R�gTk"����ߣ���E�l}�+��6�����Cf�6�iզ<�Su��b���݇	�E�#b�X�O�Ւ�����S�҇#�f�!�"�vy��;KIi]ţ�_6]8Gbh?i0���b���p0��X���:�J�U��=���؏-�ҭQ0�^\)bGd��6�U����� 03���bb��ó�Gx*����]ӹbx쬜�A�"��;,��s��?U,["'0�R1��:3�~��8�$v�Bݛ�5	\vBWA'�"jӆ�����X ��\H�X˳�� �+�^���_���o�����Ѯ{�*�C��^��` WH�&��U҇.�=,y,wkP�?Mc�Y4���$՞0I���q���m`HT��ێq��"	��yj�|m��`��q����E��X�~���b*l�c&�I� ��d'j�Rq�.8D��|�'
�ڊ�E�}fIw����n��2��{Ed�k�`���+}� c�-���V�ӭ�D��z    !nR*��5k��x�K�90��ȉ��^� K�BvL���c�J�ƫ�+D$�_�7x'֍�!-/t��`���� 1!�;c�	��X؅���%�%e�D X�`=k���k�td%_Tk�y�Ps#Pq���Z����� |V ��b(�\ɘ��M�3#(*P��R0�Jw�mw����C.��d��Q,6��*6�f����8Rd҈�����T�&VU�g\z��V���<17./4Zc�
�C��#K�����W�o}�AT@Sŏܜ9B��s�3 �7 �t8��Z�����7b��f�#01^�%"�!���^b('9}�W(�P2���x�e�-Ï��i�b�X�N���k�uk���}�����0[��Ԑ�	S�z�}�Q�iRE��b�Ly?,��XE-iECDl����'Í�W!��C��d3��nc�>�M�|8�_aU�r�t�X�B�v�,E��Gu�h��Hҥ%��b_)Bs���!�w���ۍ�(Ӫ��!�{$��\5d�������9�"f�e��1ld>�qorE���O�x��d��NJ����1E*��#c�y8�/�l�8H��Z}���X�aH69���ltU��R$��,�-�X��<I�\���R��a(�
����s{�x(��qu�
�p����O���?Ӂ]5�Y�tc��iW�2�n�BL ���C��� zC�{�6�� $�qM�8� m��h;ug�/q}ַ�A2 ��uW*&@���T�U�Q�.���|1z]�ye���C��tLIp��|��e��t0-��߁ �b�}֔H]wbt{��|N�M�5z����E�>������\;J�-zj����1���[J/x_��	j���"c<�:�<y�����4��A1���� (��-��="t����,�J�G�n��D���HL�Ja<0�{�dNI9� :�X�����5�o��'�<3w�G��1!�2ᕗHl�.d������).�Yմ+��:Ds'��3��lo&��`�z�!sj��?:����=Y���-r귞��pYպ���I��\��1�� BVT�G�x/���g1�s��B�@'7d6��d$C4G�"�R'�G0��:��E�y�6,{��#f���5���&��o6���p���0�?ĐϷ*��1���ע/��Y����Ⱦ�8�G���P^�����x���N�Q�p*� �Z�b��=f�uy>�,'IԅY��F]zE�d|Y�Z�I�(��lq'�a�ݳ��p25f�$<*�Fibks�_�-<#RP���
�f�M���7�D}��HXc<^����*Z˼(�-dE�ˋѕ�^/a�\�n����|��������0i3\�h C�]ߋ	W&���.Vj��'k�kdۂԱ���kNc���}�0�   h]���9z!��Ct�l@Ip>��L4���L�r�v�N��,�jt���b��'��I9���ڂ\%��=���"={���,V[J35j���R�[���<�d<������P�T��ˬR �
`���Ě_�����0�"8��p������2e Q%�3{��D<��m�U_@7�����޹m���;C\��q��y�˽�o���1q�aB����h����1bG�J�;- ��K���&v#ZQ���������N�*5�2�mQR���[�F4���=w���O'æS��:�^��Ͳ��h ���JM`I�;Rf�]iy-�w���7O3x?��oDE%H���̟� [>߉S!szUċ�3 "k=բ��v7���B��xR������Z����fO>W�_u�'��t�
4W<���7�E��=��!s�At�B����"��2���h��kp�!���/�\����Z��'�j��UU���e$�o��|�EV�l}�q�f��ĵ�V�:_8R�yA�Stռ's��oK�(�'P��XCŐ�'��3 &o Qa((3$X�Vuo}A49}��M��ǿ��"p��� �h[3t0�/H�j{���a �C�j�$t��5$<@`{�<b��Z�be�߈�Uw:��R.P�'��|�M4ڐʺ@�v��ʂF�l=���Q��� rH�h_�P�������|��J$|�g�~�o d#��L��}9�9a�0di�R�0�>���>tF�0��rj���'�ꈱ\��K(��M���2�-����:"�V�w�U�چ�G��P�Dd1���'#����ʷ�|�Hu'�V!G���+�#�����."=!���^��NT0��r͞�O��,w\��G�-4M<kA59'EB%����G��1��Y	��|��F�� Ji��ǀP���j0 eY>�d����/a�ݕ�,W�0�:=�^�����)�&�����K�Ņ3����EBQƄ�r�='��^��x�btmH�4��f���i�opS%�d�m��l�l�@��MH���a��0{�\U�w�8o; jn��ӧ�eʓA��Wv�h�*��)�dMZ~k�+�m��4����������(�$7=C�(D��&=UJĝ�Wh#$ �T:
Nx�9�y䮨A��C�r&�f�Ԃ���#��7\��`'Uf�;Y݀pT;��������i�V�KrM�ɱ<7�:�嗴������,<Os�����Qp+ؚph� #2(���@�U� �}��`t
�dڏIu2&% 9;9���G?g��z�{�Vޟ�̰��Ɯn:�U�t��q�׬z AL��Q��j+P�Q ~�2�p�h�I�_i��]2��Ɓ��c�bZ�^78%��r-����d9��)�q"��!���QÇ�6��:�n�L#��>�|�����n p���b��6�yg%���� X�	�N�C''|���*#y��ȁ���8�+����^�L_�q$yrjC��@���+��*��\͸�����,����3Vk����BŢ�|?��}@��D�!Vc�S��.��p��V���:�<�ijM.F揄���#�P�@�4/� �,Ͳ>���,�5�N̵��֋��^SB�ј:aPL��$Pn��+�}_�JRKG�Q�9T+��cE��ڀ�b���11ՙWMT�W}Z��w��ㄢT,���|��+֌h#��"�C����"3�S����_���s4�y�A�y�g��@���h[r�6JG�m{�p����!���i�oՓҽ}�|.!��@�C�:�����Y�G�K�-�c���՞�U͎�k��ু�=Is�!�c�
�����L����V=���ݓ��
Cvx��ǦmBu��P ��*���;Ӑ,;�/	����NF/X� �m�dG��y)������EO �)K�8�d�mD[�6�,FFdy��Ӑ)�9�^�������?��v�� ���!,���ĻZ[Vƥ�A�]<���,��<�mA!zv%>�,�*�7��0��qza�1T�?�^�۱����l5�`a0V3�?6@}3�y�5�P����z�
�:�+�w|�6d��Og���$.�By���$���l5POE����������7� ���|��k��Jy;I	�S`�R~��R>��=�;qkͭX�L�\�=�3PF����0��%�C��qv]���OFH��#�F@���u�ѿc��1���	|'򟊨�S�y�����0�W2чKH������CR�8�I;pr!S�4���!6ϝ��D���y���`}�bk��WAC+=��7,�d_�*)�\�bN*+����Q,?���Y�5"I�<�1g�[P��a�t��8&P�b �@��7�}S���=(:�#fЄbc h-B�۶XP� ��u0�3d$W��c��|z1�p��駛��%'Ӈ�r�ʯY�&do!��uu�(bq֠�X��ȏ�����'��l���FUv��2���^z+�QЪ��^m�ꬭj+t��zs���K�~������} l��\�"% w�P������5X&���eD�bt:�*:o9��*� �;1�%��@�t߲�����I    )��?k��	a�[�1�I.v�*�E���#�3��/�JJn��]���Xu�'�n��ckr��4Br(+ZY�&a�F����d!������Er[�mڑgIC�O<�S�����Etq{ba�r$sQ�!
��p(�-fyo�*�{D?��R�{G��6��>�[���<�T��zJ�?&4}v������YT1��oUt�U���<CV�B)���G0�;I�|]�=�UvcC��������Dܓ��L�{q��L9`R�����׷�\��/5A&6��3o��)�*q(A���U�!�����F��ȴ_�}d���1�"��Q�O��INwr��P� ����<���^5R!q6��&�цW�а�[$	�~��X��� r�DVXd�cz�^�b����������Np9����A����u�P���?�P�A��T�^��p-��L�	u|����EC�Z�^�k~/�6��:�y$ud������l�j���YݰGMo���Pr�:o��͓�=#Y����D����G��^�J�1�s��w~�N�� 
�4Ǫ%������݅�jW���#�[�-Q���7�������ПC�Kv��{���*���^��_D��b?1����r&�]�==]$@���:�Ͼ%k�o�)H�ߕMAv�HjqՕ���������Ge�,�=]�o��z�DCƺ�}�����W���6�Q�%X�1Yn~�^瀞$���/�J���zŝ8��B\��Q���o�v���h�d��%�����"�bYB�H|:VC@@L(V�(Eqr���p�i�]���#2�[����-ؒz��:��tU&��4!�Z�q�y�t�7��c���s�,���^o����p���*&$��(\���
�Ko��g��(�i����d�J��<���r��U��*����I���i���S�a�����i�Ȏ�j�B�45����w�:�v��dB�M$B(M���#8�צ�-�m��FQ�F2V��.����}�$\1�
&g��b�z�H�^���}5Df�vK�����$+`r�}�^�SbB���a���6��hս@ޜt������Ɏ�~Ӈ�P��f4_�'!���n�s���i�X��3���+�Sq��/(����5E2ޖw�Dʪ֨�s^�}G�f�a��ǃU���q9�d��4�������=%F�����C�8{�p%�Jr��G�CC�Rp��S�2�J^vzѐ�a_���?�s��"��j�e��y�.B��F����4/��[�o�l"a0�d�G-�%,v�9�6�Q3q�>���m�a����N46��@%������8����FK�n�!�����Q��TT��l�5�'(g�r�}"Z�[�8���?�'/�s��Q��!��D[d��4c���.F,�! �B���.m���.��Ev��А��-��X�Z�5G-��l1��C ~]��֩I�Y�N���lbQ�N���1��N�����q��bLYk��<��ɪ&��m��_��F��n
�ˡ�w>+�u�7�S=����%@�ͪoU3�_͒`b<�!�ŬL­�4�T�"�U�U�;�I�6�P����G�A��д�Jn�5���+E{�hAﴽ��!��O��ǧ�9��M�V4=�x��z��bI9.�n��f�)#���\�>����e���u��5�3��MR{2�noD^�8+Ւ��=ͺ��W�iӾ�Q�v�q�;ʋ؜ ����N��Ȗ	ԧ��?M]�U�Y�5�Ø��o�iR!�o1��� Za=
{웸�*
�l�.R� �[�0����ї�U ���6W� �$�0�H�=��°�>d��X�	�A�s
3M��I�h�SD{�^֞-ͬ���3��H:�B`tq&V�ꍮ(JjZ�(��	�$�� "6n;���������͝Js���/h6�OXE�6V6K(ނ��\0v�y�g &Y"�Rp�6#A	�98@8�|K-�C��4�¨Y6�D�Uk����	'�͉��dͭ8�,T6+-A�����S�2��!=P9G	��+�:�A�J/agy؉�9x��:�`�\���:�A�՛�{@�h�O�,�R:<m>]���F��S���L	�h;�/��L3�	>2w3�2��#��1D���6�1�?�)g4���L��k�@8>`6��<����:��N��Պ 4E���s
@|r����QU�,�OH+�A�$J̼�f�<�w$�Ly/�h��(y����]!�;��B��J�uy�oۢ�'Q�V;��k`LJu����4=
Ӟ	�\�vkaE���L�&��{4����-Ԯ��L���w>z����q�Ŋ��yq�e�sIӻ�^�9��4,,�
���͢mhd=pk��F�%�������XH��t�/�X��+�1�/�ц�,�;5&k#�@���dܚ;���ӽ_�3��mjפ3����5�CT��:w��¥Q�Q6>��k��j%�Ѣ]7��Q;��+WE�h�%���P H
�_��El���z+�\����oK3�hh~~6���[�r�BOWVԠr{� ��Q���T���"�(��J��M�i9Q�T��on<m�2Ե�?(&��{��(���N��0
�>!"%�3���$M�!*B�~[P�p�6��z���	����4v�{�w�_j�K���U�+�?��6Vy��l=�UI��k�}�g��3Ǐ��@�(�t��X%[}�P�Ch_�j)�s��Pm g�Hs~���}�:O\��N�D}�M)�q�QXl��J T�<��L�O�-b\ǼГČ�z1ȣ%�=��sc��D	Vm$�GUS�̿/ �Ŧm;��� �3���J#y'��{%S3�$�y�X�%b�՜��!.U�kF�J[Y��݅d)B�k�z�7Τ@�y>}>��~'�b�Ö3IW�i�?���90��9�P_��]����T"�da��a�K�C�>�@�Z�A�!P.�N2���'�&	�!VNo���b��s"oD�؊M_֎�Ѧ�/�]z�B`����Y
H,]�e���$"[�Ui�c��v^v���FYy7��7i�y��Z��i��`�9�' $v��b�F�T�i�jλ?�/g�=����0~�܎������jߩ/ ��ÎgY��s�e@�\�}��s�=���y�jv����Y����{�Q�>|��˕��N�.x]0���с�$B�D[YیI�+�.Zb�!���X�p��1�u~a$����H�Ek����D<��N쑛���$/�yT�{R�<�n �P�G=+1*�����{9��.�����y�T<���A!Fv���a����m'b��j�#B�#�k�.����������5��d.����$m�6$3	$�������ц��d12،+������{��Ԭ�Cץ�7��(�y���4Q�k�61N	�
����%�a�r
��u/@!�����^�MM�{��kn���ɀ3ȅY�K-e��tB�9"糣(�*'uW�*2����y.r�`����ƍ���A����z/�f�_��?��6�t #yhs$	� �T��xTϔ�Z#1�|��������#Z%�f�h�`�ӑ���?w l.D��������j~M�}���E�uȫ�W{f�Jy���WD+�Hg�F�PT��T^�+2I�)	N���l��P`E�'~&p����:'؃P^h�w�����yF�w-﵁�B[`m7��;���/o؟ �t<lҷ����+\�G��=4��i���q$��'A�����"r_1�\��j6�
�h`�<�,7�Z�d�.-��4V�ʀpZ�aN��I�PYX�\緰P
�Z�kѨI$sV�4�q��Fe %nЊJj!r�¢_�k���=���AV[�G���z����?���>0m��3�|xc����o_��������'�韕�ѭ몱��Ig��E�X(��e�f�o��0�`g1��v�彡$l�&Yu�C��"*XX�
����$I짙�͍ϔ!=�ތ�V��n���C    ��-hw��f�^Ӄ�ى�B����1����'V�^�(��6���������ݢE��Ҭ�@���9!�b$��*�V^��25]/��W�6J�`�%�8�UҐ�;_�=� _t��E�k���h�f��\K�F'wm'k�
�T��r���$o#$�D3����l;�~[���R��
��k~y�z-�yд���/ҵ\��k�h�U���=��c��#������=�B2�wOBe��-8x��8��ʛKt	P����$��`f��cJ	��8���ѻ:��Pq(r�fϏ!Q�j%�"dѕ,ה+�39!L�}�4u$�'�r�1OU�m�⽲�"	�_]����]�����ڳ���9�tV��}ٹ
]q=��YG�\|Z갥g|.pU5Y���>�Y���������������g0�ELk&�1�IU�����8���
�>�'���5G6�!�fKs�.�#�)�\��yF����G�caCy���"�J�r�1!ݥ2���zn�h�"˨��	S����<Ag<��$97�\&��˅�[�ھa�M%��ϼȋeoF�
�d#"j���ݬ�b[����O_J	*���l����Eh��#d��Lx�XE����X܉M�0�sqpŴ�m��-T�ͣ?٧��S�Tg������2�D�������x�\o��^�~����>���`Ð�F��z�x�&S��$Q�!�t0(}�K<�<P��A� ʆ 8;:6�7#�T�xj�1�#P�v�U&4�nX;�c��ѝ)�b�4E����T{VB��4�!�
OLs���%Lٺ��/"�0x7��P:�t����{���ak�
=B �;63��Ⱥm��Q�Hsc�`���h�o�|?����|d%�^t�ƑRjÐwx`$�W�;�'����bP���fЃF�O֕����ǖ= �;��b�U�_)<hi"*���E�F�`
���Fc�k���C�թ�h]B��oyn^-~�r���d��	��`#�"���d�3�d�H�	<��^~���3�lH㇭�H#`���׈����+�Y�0b3���IoV !�γ:�6.x���ـ��^��;���cip걜������[@��j�+�#���OV#KV0��:�%�	Х榟���_U�2G��J�|赿�77�/����0~H`c	���>��"0<��[�c+���AgP�,vj���`�k��{Z��n��rD���3���}��F��H9���)��6��4tP��u�-9(X4NX^�h�&��eZw�� ���	&�A��>i�+�7u�#'&9�q�[�6�?��M e�-����������Z�߀&�r���*b�EI�<���d�����3z�;�oV7�		}����)��e,����w֑A9
�7bj���7�U� ŃUYh/{�m �#T�O#R� d�)Q��&JG,�D,�а�mVɱ�Kt���a���(#FD#+XØ(�Ziic?��'J�Gͭ_��[p(�I�Z���)	?=ӂ��4/�|R���δw���N�7٥�A�=ؼ�<F�����m�}�~�W�����[�`�\K��ӌemW�k�X�m�,�kWh?9�"3e���WZ��>S�='\��gooD�v�sW&�����M��I0���X�z���4��0�w�=]9q{儣W�v�1��5�y��6 �P��d#��t~�Z�O�
��ઉ���1}�M�nC/gpE@z �e�rI� S��e⣞�"�SC`hW�\	��g�xH�4���gQ�!z�G8�W�m�I�� .��+:�����$~�D��&��%K��^ħ�Pm��� ��	XWy���XTn�h�JS�C���7���_gg`��dw���ԵСe̟�ܢ�F&"�HyJ"��5Z�^��Z�udu^�UL�f��M)[�a,$1|#֗�B�c���A�mj�Yq�I��A@�rNi��d[m���j:��i����U��cm&�7��U�\#.a����֚uM΢B�=�ɀ�۹��*���o�l�p�C����Û�&�&���M�)��?�R�v]Y� �D���K�Fv�mLX�&��Vb��SMd�4am�I_g�d}a�]4��v��E���� Ks�D3��'��!�3���6DS�T�l�)�$pp*��`�G1����lQ�f㓾}sLآo�@w��m��ؓ����d�t���Ӏ��|b�B��1@	��\�꘳���f�YD�nD���l�^l��i����[5��>¢'�H�"u[p>àQ
cHﭦ�Q��!a(��Z��j'4t;t��g
q�
��Pd��b�"�BX�`�w�����E�����,��'��-.�N�6n�5�6��04v�+���}�#gs]��p�C���J�f�a�z�
�e�	�V��1��ѕ���=���ּ��#�jk%�13��^͖��O�	�ʻ�8���Z��(�ʝ�X�A��R�]�L�_{��t�<)���� �8�ڛ$E���G��U��������kp�.۠k����̓�'�As�n?�8���
�>HN�����Y_�Q�AK����nV�S[ԯQ�oJѿ8�����+��?Wn3H%��3�EZ|��K������`�2�l��ζΰ�\c�����t�QE��5��)P� 3ֺ����G��?�ef����b�h>����	c����b��Bf��* G�0da8����|�vm�A6���kgd�֢j"�jr��" =6�_Lΐ�+)t���&���4�p�v�Hj���	����%�r���'F���t�A�D�V=�9v��TSҸpDv`��G{��Q.ΣNJ~q�������ʔ��l}1H�_suC�aę�+�D@��t����ԯ��Zk]��q�<h- $^XL����$��@�M���5��yB�bh�G���� p��0��/-���g��Դ��Ȫ�xو��,1�����/�l��:&%�U��Z<F?MS��*Ail �"1��k��Zhh͛��`P�X�H9T.�#>D_��t[�Mg�oq/��x$�0�3(2��^z�Pi)BP�@*��Z�w���ȉ�N/f���o�W��^�4,�_��1~�plּ	\vY���{�
�]~��pͭK{�0ߑ����Ār4gsH�h�-!Z���XC�e^  ��͞��#���~m���0f����k&p t�jbuϙ������;Ţ,&��X0?P�]���&�C��³���Q�lP�w�W3gѕ���c�!����ORaM]�侕-u*b�8�=�ҡ��$&m@G��Nph�4)�a|;]��3_��	�	(�eb���/���E?��m��l���^fȀ�E'U�jTj������S���U�?���Q�@|�+Ԗ�}B��4\� �e/�bT��e�07�J%M�XZ��%vƗ0����\ݻ�Y��iBj��B	�b���J�T���֦P	M�G���WX��#k��{��y�E<H\Z8YD�y��&��ȶ�rQ2��bz6�`��g�'����r�˖=Ɩ߳J�X]�{���Pڻ�a�Vo��xՏ����G�C� a�^�S�����h��;�`g�@z&�CD�GV��a�~-KŬ����C�d��U$π�Cz��]�}Ӭ�����z�ᷞb`ӑ"2>Ump8[��!ߏ��,k�o�4A��\ze؄��=>v,w�Jr�@�Ѭ7@�����<p�+����u�=6+�k"�h)������Vn2Ft@��$2�No��ǌg#��$�i�"��~Pt���)tߵ�GA �y��#���Ю���J�b7�>^+"N�g]����d�A��M��hljٌ{�(D�Ֆ/�Y�+#Oc�O���T���G��f7�O��g���BX���r��u�!4-E�F6����J��kDLc|�3p>�9&�q�b��
�<��΃�8�<yZ�5�pS��:�އHF?�Mƃgd�y��ޞ8�*]+g��� S	  8~ε�5�~��,iF�^x�&M�A����o,�]g�{^L����������,���r$�q̊¨G#2���.�D������J�`u�}�}E�� ~��&�����C2��5*��܄��޽��7*�[�� �(D^r�"���û=ݝl݉|~�c��G�q=!��h�2al�/'����	iBT��6�� �FB$Ez�%y-c��r�TW�]����������;�X߈u54fu�#�w,o�)��l��_ ۥ+��=߼�ňPJ��ވ�ҒҜ<|:б���fg���Ų�Y8�(r`��J+�UX9O�9� wh7����7�>R��XY����X؎&L����[�@����p��~�N��:���b6]���0��2����8���_��:Ys�=��j���Eַ{����"��t�8S��1?�R1�Y�M^����஧C2)~���cAKE�y-���OAv�N��6�\������!��D�̛��I%�m,C �*T[���Ӑ�^�gp�1��fX;hx"��S�S�m���M%m����N��R�Z�:E��%X���=r�⚸���(��V�u��s�h�ͨY��ش[�Q����4|�ܢ?�k��ţ8ѥ�I,;�iˈ��W�L�c$M�z�d���W0�<b!3�o�� �l2;O=
B�N��Dk�b�c��<���>p�Z�w<��-�_�������#�y��ƣuKJS��7�Kh�מPL�Z�P� o>�����լ�t�XG[=�U�XN�ǒ�B�n�F�<=T=��,���9�e-D��\��tZ���?�4��1���T=�uo���`ڐ#�^�*�[e4H���8>'�f�2��F����8^��:/�<�h�P��i?���G�$h��8��kr1��Wb魙��G�g�k��٨�ZQ��!t�t�k�� �|5ˊ�lЧ�I�Q��*�i���8��qIxE����L#x�_S2^�^�3��MM㏇Ϊ|���+�}�/ w����uW��߸޹]����Yo$�kW4�=�y��뭭ʶ4�#��o
tl�8�g|�<�a����i���>�<&���1̝_M���@��)Got�n�}X�F�b�ek�(�J�{/3{����\{��ʯPAˀJ������`1�z��x%>�t�O�\����&��C��)���jL� �7��i
&Û'#0_��|��fRL��y�����¹�a'k�=j6�ekG�CHn&%Ѓ�(m���)��$7�=M�I����0%����&�*���i\e�;���j=��kB�mg����QJ�_dp���"�'�W�`g�W��;�{�����oo�}/$�\=�L�V�9�=e5�\���N�@F�0rzBP% �r!�fgh����ɖ�*�E�]�(�q@��ݰ�^�����cH�?�'n>b��q��w��X��z�0X+�T�g�DK��Z'�(�|OW=d�B7�XHAG3�kpV�$���X1����04��P��5t8�a!����Ӎ.F/��;��vr�f&y-&|,,@�E�a\��L�v�"������e��qO�s���Hw�g#�{#w���!:����}:BU�5���,Jq�k�*���l|���|3MHSL��Ʒ�i��]u����<ɘ�'?u.
�n��p�q�_��!�;���rd��o�������0k�r�`�.Fϫ�����P���Cx(H��>8=�BS�#�7*�9����|���� �U��w@9i�EՊ�[�3�ƨ��Zv�0���r�����G	��C����XX�c����c�&m��o/ A��@�5�Һ��]n\����(��D���^�<V)�i.b�1AJy���nc��Gg,)+$9��]L2�6�|}ЧV#^սx�g�0<�+d������^��y �z��,yI/	u�ؘ�QD��Xgm� R6����"��H�sT��;�@���m
�N?4:�s�+WHX�9�z������,��&-O[,�F��`��5�j�쟈�r-_���4��=���q��"c'�kK���D�Ń�1M�"!���(@�U�l�I[Z�\����N|~�udO�����>�H���
�ؗ�n�E4���T$7gQA�C�i��@ۼo�J��d^����}7�#e0],�#p��외����3����dy9؍a���R �Ti��b}��3&����]�c4��󝻕��ݶ���,�Q�x|�VbYЗ�C/=�^�*�|�����3���ގru�>�d%��4���e���i��Z���w���E(�ڀ@��8��_����?�     