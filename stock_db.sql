PGDMP     (                     z            stock_db    13.5    13.5               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    18529    stock_db    DATABASE     d   CREATE DATABASE stock_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE stock_db;
                postgres    false            �            1259    18561 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    18559    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            #           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            �            1259    18571    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    18569    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            $           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            �            1259    18553    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    18551    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            %           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            �            1259    18579 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    18589    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    18587    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213            &           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            �            1259    18577    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211            '           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            �            1259    18597    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    18595 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215            (           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            �            1259    18657    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    18655    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            )           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            �            1259    18543    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    18541    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            *           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            �            1259    18532    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    18530    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            +           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            �            1259    18688    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    18700    stock_bureau_category    TABLE     (  CREATE TABLE public.stock_bureau_category (
    id integer NOT NULL,
    name character varying(36) NOT NULL,
    description character varying(255) NOT NULL,
    deleted boolean NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL
);
 )   DROP TABLE public.stock_bureau_category;
       public         heap    postgres    false            �            1259    18698    stock_bureau_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_bureau_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.stock_bureau_category_id_seq;
       public          postgres    false    220            ,           0    0    stock_bureau_category_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.stock_bureau_category_id_seq OWNED BY public.stock_bureau_category.id;
          public          postgres    false    219            �            1259    18710    stock_bureau_delivery    TABLE     !  CREATE TABLE public.stock_bureau_delivery (
    id integer NOT NULL,
    reference_delivery character varying(55) NOT NULL,
    date_delivery date NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL,
    provider_id integer
);
 )   DROP TABLE public.stock_bureau_delivery;
       public         heap    postgres    false            �            1259    18708    stock_bureau_delivery_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_bureau_delivery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.stock_bureau_delivery_id_seq;
       public          postgres    false    222            -           0    0    stock_bureau_delivery_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.stock_bureau_delivery_id_seq OWNED BY public.stock_bureau_delivery.id;
          public          postgres    false    221            �            1259    18720    stock_bureau_employees    TABLE     =  CREATE TABLE public.stock_bureau_employees (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    lastname character varying(45) NOT NULL,
    deleted boolean NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL,
    service_id integer
);
 *   DROP TABLE public.stock_bureau_employees;
       public         heap    postgres    false            �            1259    18718    stock_bureau_employees_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_bureau_employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.stock_bureau_employees_id_seq;
       public          postgres    false    224            .           0    0    stock_bureau_employees_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.stock_bureau_employees_id_seq OWNED BY public.stock_bureau_employees.id;
          public          postgres    false    223            �            1259    18856    stock_bureau_inventory    TABLE     �  CREATE TABLE public.stock_bureau_inventory (
    id integer NOT NULL,
    reference_inventory character varying(50) NOT NULL,
    date_inventory date NOT NULL,
    quantity_inventory integer NOT NULL,
    deleted boolean NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL,
    measure_id integer,
    product_id integer,
    type boolean NOT NULL
);
 *   DROP TABLE public.stock_bureau_inventory;
       public         heap    postgres    false            �            1259    18854    stock_bureau_inventory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_bureau_inventory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.stock_bureau_inventory_id_seq;
       public          postgres    false    246            /           0    0    stock_bureau_inventory_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.stock_bureau_inventory_id_seq OWNED BY public.stock_bureau_inventory.id;
          public          postgres    false    245            �            1259    18732    stock_bureau_linedelivery    TABLE     �  CREATE TABLE public.stock_bureau_linedelivery (
    id integer NOT NULL,
    quantity_delivery integer NOT NULL,
    price_delivery integer NOT NULL,
    observation_delivery character varying(50) NOT NULL,
    used boolean NOT NULL,
    deleted boolean NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL,
    delivery_id integer,
    line_ordered_id integer,
    measure_id integer,
    product_id integer
);
 -   DROP TABLE public.stock_bureau_linedelivery;
       public         heap    postgres    false            �            1259    18730     stock_bureau_linedelivery_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_bureau_linedelivery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.stock_bureau_linedelivery_id_seq;
       public          postgres    false    226            0           0    0     stock_bureau_linedelivery_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.stock_bureau_linedelivery_id_seq OWNED BY public.stock_bureau_linedelivery.id;
          public          postgres    false    225            �            1259    18833    stock_bureau_lineordered    TABLE     �  CREATE TABLE public.stock_bureau_lineordered (
    id integer NOT NULL,
    quantity_ordered integer NOT NULL,
    observation_ordered character varying(50) NOT NULL,
    livery boolean NOT NULL,
    deleted boolean NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL,
    measure_id integer,
    ordered_id integer,
    product_id integer
);
 ,   DROP TABLE public.stock_bureau_lineordered;
       public         heap    postgres    false            �            1259    18831    stock_bureau_lineordered_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_bureau_lineordered_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.stock_bureau_lineordered_id_seq;
       public          postgres    false    244            1           0    0    stock_bureau_lineordered_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.stock_bureau_lineordered_id_seq OWNED BY public.stock_bureau_lineordered.id;
          public          postgres    false    243            �            1259    18740    stock_bureau_lineoutput    TABLE     �  CREATE TABLE public.stock_bureau_lineoutput (
    id integer NOT NULL,
    quantity_output integer NOT NULL,
    observation_output character varying(50) NOT NULL,
    deleted boolean NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL,
    line_delivery_id integer,
    measure_id integer,
    output_id integer,
    product_id integer
);
 +   DROP TABLE public.stock_bureau_lineoutput;
       public         heap    postgres    false            �            1259    18738    stock_bureau_lineoutput_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_bureau_lineoutput_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.stock_bureau_lineoutput_id_seq;
       public          postgres    false    228            2           0    0    stock_bureau_lineoutput_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.stock_bureau_lineoutput_id_seq OWNED BY public.stock_bureau_lineoutput.id;
          public          postgres    false    227            �            1259    18748    stock_bureau_measure    TABLE     �   CREATE TABLE public.stock_bureau_measure (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    deleted boolean NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL
);
 (   DROP TABLE public.stock_bureau_measure;
       public         heap    postgres    false            �            1259    18746    stock_bureau_measure_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_bureau_measure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.stock_bureau_measure_id_seq;
       public          postgres    false    230            3           0    0    stock_bureau_measure_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.stock_bureau_measure_id_seq OWNED BY public.stock_bureau_measure.id;
          public          postgres    false    229            �            1259    18808    stock_bureau_ordered    TABLE       CREATE TABLE public.stock_bureau_ordered (
    id integer NOT NULL,
    reference_ordered character varying(50) NOT NULL,
    date_ordered date NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL,
    employee_id integer
);
 (   DROP TABLE public.stock_bureau_ordered;
       public         heap    postgres    false            �            1259    18806    stock_bureau_ordered_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_bureau_ordered_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.stock_bureau_ordered_id_seq;
       public          postgres    false    242            4           0    0    stock_bureau_ordered_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.stock_bureau_ordered_id_seq OWNED BY public.stock_bureau_ordered.id;
          public          postgres    false    241            �            1259    18798    stock_bureau_output    TABLE       CREATE TABLE public.stock_bureau_output (
    id integer NOT NULL,
    reference_output character varying(60) NOT NULL,
    date_output date NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL,
    user_id integer
);
 '   DROP TABLE public.stock_bureau_output;
       public         heap    postgres    false            �            1259    18796    stock_bureau_output_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_bureau_output_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.stock_bureau_output_id_seq;
       public          postgres    false    240            5           0    0    stock_bureau_output_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.stock_bureau_output_id_seq OWNED BY public.stock_bureau_output.id;
          public          postgres    false    239            �            1259    18758    stock_bureau_product    TABLE     X  CREATE TABLE public.stock_bureau_product (
    id integer NOT NULL,
    code character varying(80) NOT NULL,
    name character varying(80) NOT NULL,
    threshold integer NOT NULL,
    deleted boolean NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL,
    category_id integer
);
 (   DROP TABLE public.stock_bureau_product;
       public         heap    postgres    false            �            1259    18756    stock_bureau_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_bureau_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.stock_bureau_product_id_seq;
       public          postgres    false    232            6           0    0    stock_bureau_product_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.stock_bureau_product_id_seq OWNED BY public.stock_bureau_product.id;
          public          postgres    false    231            �            1259    18770    stock_bureau_provider    TABLE     |  CREATE TABLE public.stock_bureau_provider (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(255) NOT NULL,
    tel character varying(30) NOT NULL,
    address character varying(50) NOT NULL,
    deleted boolean NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL
);
 )   DROP TABLE public.stock_bureau_provider;
       public         heap    postgres    false            �            1259    18768    stock_bureau_provider_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_bureau_provider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.stock_bureau_provider_id_seq;
       public          postgres    false    234            7           0    0    stock_bureau_provider_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.stock_bureau_provider_id_seq OWNED BY public.stock_bureau_provider.id;
          public          postgres    false    233            �            1259    18780    stock_bureau_service    TABLE     �   CREATE TABLE public.stock_bureau_service (
    id integer NOT NULL,
    name character varying(45) NOT NULL,
    deleted boolean NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL
);
 (   DROP TABLE public.stock_bureau_service;
       public         heap    postgres    false            �            1259    18778    stock_bureau_service_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_bureau_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.stock_bureau_service_id_seq;
       public          postgres    false    236            8           0    0    stock_bureau_service_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.stock_bureau_service_id_seq OWNED BY public.stock_bureau_service.id;
          public          postgres    false    235            �            1259    18790    stock_bureau_stockmovement    TABLE     �  CREATE TABLE public.stock_bureau_stockmovement (
    id integer NOT NULL,
    date_movement date NOT NULL,
    quantity integer NOT NULL,
    type boolean NOT NULL,
    deleted boolean NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    date_created timestamp with time zone NOT NULL,
    line_delivery_id integer,
    line_output_id integer,
    measure_id integer,
    product_id integer,
    inventory_id integer
);
 .   DROP TABLE public.stock_bureau_stockmovement;
       public         heap    postgres    false            �            1259    18788 !   stock_bureau_stockmovement_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_bureau_stockmovement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.stock_bureau_stockmovement_id_seq;
       public          postgres    false    238            9           0    0 !   stock_bureau_stockmovement_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.stock_bureau_stockmovement_id_seq OWNED BY public.stock_bureau_stockmovement.id;
          public          postgres    false    237            �           2604    18564    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �           2604    18574    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �           2604    18556    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �           2604    18582    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �           2604    18592    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �           2604    18600    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    18660    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    18546    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �           2604    18535    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �           2604    18703    stock_bureau_category id    DEFAULT     �   ALTER TABLE ONLY public.stock_bureau_category ALTER COLUMN id SET DEFAULT nextval('public.stock_bureau_category_id_seq'::regclass);
 G   ALTER TABLE public.stock_bureau_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    18713    stock_bureau_delivery id    DEFAULT     �   ALTER TABLE ONLY public.stock_bureau_delivery ALTER COLUMN id SET DEFAULT nextval('public.stock_bureau_delivery_id_seq'::regclass);
 G   ALTER TABLE public.stock_bureau_delivery ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    18723    stock_bureau_employees id    DEFAULT     �   ALTER TABLE ONLY public.stock_bureau_employees ALTER COLUMN id SET DEFAULT nextval('public.stock_bureau_employees_id_seq'::regclass);
 H   ALTER TABLE public.stock_bureau_employees ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    18859    stock_bureau_inventory id    DEFAULT     �   ALTER TABLE ONLY public.stock_bureau_inventory ALTER COLUMN id SET DEFAULT nextval('public.stock_bureau_inventory_id_seq'::regclass);
 H   ALTER TABLE public.stock_bureau_inventory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            �           2604    18735    stock_bureau_linedelivery id    DEFAULT     �   ALTER TABLE ONLY public.stock_bureau_linedelivery ALTER COLUMN id SET DEFAULT nextval('public.stock_bureau_linedelivery_id_seq'::regclass);
 K   ALTER TABLE public.stock_bureau_linedelivery ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    18836    stock_bureau_lineordered id    DEFAULT     �   ALTER TABLE ONLY public.stock_bureau_lineordered ALTER COLUMN id SET DEFAULT nextval('public.stock_bureau_lineordered_id_seq'::regclass);
 J   ALTER TABLE public.stock_bureau_lineordered ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            �           2604    18743    stock_bureau_lineoutput id    DEFAULT     �   ALTER TABLE ONLY public.stock_bureau_lineoutput ALTER COLUMN id SET DEFAULT nextval('public.stock_bureau_lineoutput_id_seq'::regclass);
 I   ALTER TABLE public.stock_bureau_lineoutput ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    18751    stock_bureau_measure id    DEFAULT     �   ALTER TABLE ONLY public.stock_bureau_measure ALTER COLUMN id SET DEFAULT nextval('public.stock_bureau_measure_id_seq'::regclass);
 F   ALTER TABLE public.stock_bureau_measure ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    18811    stock_bureau_ordered id    DEFAULT     �   ALTER TABLE ONLY public.stock_bureau_ordered ALTER COLUMN id SET DEFAULT nextval('public.stock_bureau_ordered_id_seq'::regclass);
 F   ALTER TABLE public.stock_bureau_ordered ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    18801    stock_bureau_output id    DEFAULT     �   ALTER TABLE ONLY public.stock_bureau_output ALTER COLUMN id SET DEFAULT nextval('public.stock_bureau_output_id_seq'::regclass);
 E   ALTER TABLE public.stock_bureau_output ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            �           2604    18761    stock_bureau_product id    DEFAULT     �   ALTER TABLE ONLY public.stock_bureau_product ALTER COLUMN id SET DEFAULT nextval('public.stock_bureau_product_id_seq'::regclass);
 F   ALTER TABLE public.stock_bureau_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    18773    stock_bureau_provider id    DEFAULT     �   ALTER TABLE ONLY public.stock_bureau_provider ALTER COLUMN id SET DEFAULT nextval('public.stock_bureau_provider_id_seq'::regclass);
 G   ALTER TABLE public.stock_bureau_provider ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    18783    stock_bureau_service id    DEFAULT     �   ALTER TABLE ONLY public.stock_bureau_service ALTER COLUMN id SET DEFAULT nextval('public.stock_bureau_service_id_seq'::regclass);
 F   ALTER TABLE public.stock_bureau_service ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    18793    stock_bureau_stockmovement id    DEFAULT     �   ALTER TABLE ONLY public.stock_bureau_stockmovement ALTER COLUMN id SET DEFAULT nextval('public.stock_bureau_stockmovement_id_seq'::regclass);
 L   ALTER TABLE public.stock_bureau_stockmovement ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            �          0    18561 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   ށ      �          0    18571    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   ��      �          0    18553    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   �      �          0    18579 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   "�      �          0    18589    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   Å      �          0    18597    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   ��      �          0    18657    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   ��      �          0    18543    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   �      �          0    18532    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   ��                 0    18688    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    218   �                0    18700    stock_bureau_category 
   TABLE DATA           l   COPY public.stock_bureau_category (id, name, description, deleted, date_modified, date_created) FROM stdin;
    public          postgres    false    220   #�                0    18710    stock_bureau_delivery 
   TABLE DATA           �   COPY public.stock_bureau_delivery (id, reference_delivery, date_delivery, date_modified, date_created, provider_id) FROM stdin;
    public          postgres    false    222   x�                0    18720    stock_bureau_employees 
   TABLE DATA           v   COPY public.stock_bureau_employees (id, name, lastname, deleted, date_modified, date_created, service_id) FROM stdin;
    public          postgres    false    224   މ                0    18856    stock_bureau_inventory 
   TABLE DATA           �   COPY public.stock_bureau_inventory (id, reference_inventory, date_inventory, quantity_inventory, deleted, date_modified, date_created, measure_id, product_id, type) FROM stdin;
    public          postgres    false    246   c�                0    18732    stock_bureau_linedelivery 
   TABLE DATA           �   COPY public.stock_bureau_linedelivery (id, quantity_delivery, price_delivery, observation_delivery, used, deleted, date_modified, date_created, delivery_id, line_ordered_id, measure_id, product_id) FROM stdin;
    public          postgres    false    226   Ê                0    18833    stock_bureau_lineordered 
   TABLE DATA           �   COPY public.stock_bureau_lineordered (id, quantity_ordered, observation_ordered, livery, deleted, date_modified, date_created, measure_id, ordered_id, product_id) FROM stdin;
    public          postgres    false    244   6�      
          0    18740    stock_bureau_lineoutput 
   TABLE DATA           �   COPY public.stock_bureau_lineoutput (id, quantity_output, observation_output, deleted, date_modified, date_created, line_delivery_id, measure_id, output_id, product_id) FROM stdin;
    public          postgres    false    228   ��                0    18748    stock_bureau_measure 
   TABLE DATA           ^   COPY public.stock_bureau_measure (id, name, deleted, date_modified, date_created) FROM stdin;
    public          postgres    false    230   �                0    18808    stock_bureau_ordered 
   TABLE DATA           }   COPY public.stock_bureau_ordered (id, reference_ordered, date_ordered, date_modified, date_created, employee_id) FROM stdin;
    public          postgres    false    242   ��                0    18798    stock_bureau_output 
   TABLE DATA           v   COPY public.stock_bureau_output (id, reference_output, date_output, date_modified, date_created, user_id) FROM stdin;
    public          postgres    false    240   ��                0    18758    stock_bureau_product 
   TABLE DATA           |   COPY public.stock_bureau_product (id, code, name, threshold, deleted, date_modified, date_created, category_id) FROM stdin;
    public          postgres    false    232   ��                0    18770    stock_bureau_provider 
   TABLE DATA           z   COPY public.stock_bureau_provider (id, name, description, tel, address, deleted, date_modified, date_created) FROM stdin;
    public          postgres    false    234   U�                0    18780    stock_bureau_service 
   TABLE DATA           ^   COPY public.stock_bureau_service (id, name, deleted, date_modified, date_created) FROM stdin;
    public          postgres    false    236   Ў                0    18790    stock_bureau_stockmovement 
   TABLE DATA           �   COPY public.stock_bureau_stockmovement (id, date_movement, quantity, type, deleted, date_modified, date_created, line_delivery_id, line_output_id, measure_id, product_id, inventory_id) FROM stdin;
    public          postgres    false    238   ,�      :           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            ;           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            <           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);
          public          postgres    false    204            =           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            >           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    210            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            @           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    216            A           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);
          public          postgres    false    202            B           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
          public          postgres    false    200            C           0    0    stock_bureau_category_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.stock_bureau_category_id_seq', 1, true);
          public          postgres    false    219            D           0    0    stock_bureau_delivery_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.stock_bureau_delivery_id_seq', 7, true);
          public          postgres    false    221            E           0    0    stock_bureau_employees_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.stock_bureau_employees_id_seq', 2, true);
          public          postgres    false    223            F           0    0    stock_bureau_inventory_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.stock_bureau_inventory_id_seq', 1, true);
          public          postgres    false    245            G           0    0     stock_bureau_linedelivery_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.stock_bureau_linedelivery_id_seq', 7, true);
          public          postgres    false    225            H           0    0    stock_bureau_lineordered_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.stock_bureau_lineordered_id_seq', 1, true);
          public          postgres    false    243            I           0    0    stock_bureau_lineoutput_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.stock_bureau_lineoutput_id_seq', 3, true);
          public          postgres    false    227            J           0    0    stock_bureau_measure_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.stock_bureau_measure_id_seq', 4, true);
          public          postgres    false    229            K           0    0    stock_bureau_ordered_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.stock_bureau_ordered_id_seq', 2, true);
          public          postgres    false    241            L           0    0    stock_bureau_output_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.stock_bureau_output_id_seq', 6, true);
          public          postgres    false    239            M           0    0    stock_bureau_product_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.stock_bureau_product_id_seq', 5, true);
          public          postgres    false    231            N           0    0    stock_bureau_provider_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.stock_bureau_provider_id_seq', 1, true);
          public          postgres    false    233            O           0    0    stock_bureau_service_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.stock_bureau_service_id_seq', 1, true);
          public          postgres    false    235            P           0    0 !   stock_bureau_stockmovement_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.stock_bureau_stockmovement_id_seq', 9, true);
          public          postgres    false    237            �           2606    18686    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            �           2606    18613 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            �           2606    18576 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            �           2606    18566    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            �           2606    18604 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            �           2606    18558 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            �           2606    18594 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            �           2606    18628 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            �           2606    18584    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            �           2606    18602 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215            �           2606    18642 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215            �           2606    18680     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211            �           2606    18666 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            �           2606    18550 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            �           2606    18548 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            �           2606    18540 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            �           2606    18695 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    218            �           2606    18707 4   stock_bureau_category stock_bureau_category_name_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.stock_bureau_category
    ADD CONSTRAINT stock_bureau_category_name_key UNIQUE (name);
 ^   ALTER TABLE ONLY public.stock_bureau_category DROP CONSTRAINT stock_bureau_category_name_key;
       public            postgres    false    220            �           2606    18705 0   stock_bureau_category stock_bureau_category_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.stock_bureau_category
    ADD CONSTRAINT stock_bureau_category_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.stock_bureau_category DROP CONSTRAINT stock_bureau_category_pkey;
       public            postgres    false    220            �           2606    18715 0   stock_bureau_delivery stock_bureau_delivery_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.stock_bureau_delivery
    ADD CONSTRAINT stock_bureau_delivery_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.stock_bureau_delivery DROP CONSTRAINT stock_bureau_delivery_pkey;
       public            postgres    false    222            �           2606    18717 B   stock_bureau_delivery stock_bureau_delivery_reference_delivery_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_delivery
    ADD CONSTRAINT stock_bureau_delivery_reference_delivery_key UNIQUE (reference_delivery);
 l   ALTER TABLE ONLY public.stock_bureau_delivery DROP CONSTRAINT stock_bureau_delivery_reference_delivery_key;
       public            postgres    false    222                       2606    18729 :   stock_bureau_employees stock_bureau_employees_lastname_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.stock_bureau_employees
    ADD CONSTRAINT stock_bureau_employees_lastname_key UNIQUE (lastname);
 d   ALTER TABLE ONLY public.stock_bureau_employees DROP CONSTRAINT stock_bureau_employees_lastname_key;
       public            postgres    false    224                       2606    18727 6   stock_bureau_employees stock_bureau_employees_name_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.stock_bureau_employees
    ADD CONSTRAINT stock_bureau_employees_name_key UNIQUE (name);
 `   ALTER TABLE ONLY public.stock_bureau_employees DROP CONSTRAINT stock_bureau_employees_name_key;
       public            postgres    false    224                       2606    18725 2   stock_bureau_employees stock_bureau_employees_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.stock_bureau_employees
    ADD CONSTRAINT stock_bureau_employees_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.stock_bureau_employees DROP CONSTRAINT stock_bureau_employees_pkey;
       public            postgres    false    224            G           2606    18861 2   stock_bureau_inventory stock_bureau_inventory_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.stock_bureau_inventory
    ADD CONSTRAINT stock_bureau_inventory_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.stock_bureau_inventory DROP CONSTRAINT stock_bureau_inventory_pkey;
       public            postgres    false    246            K           2606    18863 E   stock_bureau_inventory stock_bureau_inventory_reference_inventory_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_inventory
    ADD CONSTRAINT stock_bureau_inventory_reference_inventory_key UNIQUE (reference_inventory);
 o   ALTER TABLE ONLY public.stock_bureau_inventory DROP CONSTRAINT stock_bureau_inventory_reference_inventory_key;
       public            postgres    false    246                       2606    18737 8   stock_bureau_linedelivery stock_bureau_linedelivery_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.stock_bureau_linedelivery
    ADD CONSTRAINT stock_bureau_linedelivery_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.stock_bureau_linedelivery DROP CONSTRAINT stock_bureau_linedelivery_pkey;
       public            postgres    false    226            C           2606    18838 6   stock_bureau_lineordered stock_bureau_lineordered_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.stock_bureau_lineordered
    ADD CONSTRAINT stock_bureau_lineordered_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.stock_bureau_lineordered DROP CONSTRAINT stock_bureau_lineordered_pkey;
       public            postgres    false    244                       2606    18745 4   stock_bureau_lineoutput stock_bureau_lineoutput_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.stock_bureau_lineoutput
    ADD CONSTRAINT stock_bureau_lineoutput_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.stock_bureau_lineoutput DROP CONSTRAINT stock_bureau_lineoutput_pkey;
       public            postgres    false    228                       2606    18755 2   stock_bureau_measure stock_bureau_measure_name_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.stock_bureau_measure
    ADD CONSTRAINT stock_bureau_measure_name_key UNIQUE (name);
 \   ALTER TABLE ONLY public.stock_bureau_measure DROP CONSTRAINT stock_bureau_measure_name_key;
       public            postgres    false    230                       2606    18753 .   stock_bureau_measure stock_bureau_measure_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.stock_bureau_measure
    ADD CONSTRAINT stock_bureau_measure_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.stock_bureau_measure DROP CONSTRAINT stock_bureau_measure_pkey;
       public            postgres    false    230            <           2606    18813 .   stock_bureau_ordered stock_bureau_ordered_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.stock_bureau_ordered
    ADD CONSTRAINT stock_bureau_ordered_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.stock_bureau_ordered DROP CONSTRAINT stock_bureau_ordered_pkey;
       public            postgres    false    242            ?           2606    18815 ?   stock_bureau_ordered stock_bureau_ordered_reference_ordered_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_ordered
    ADD CONSTRAINT stock_bureau_ordered_reference_ordered_key UNIQUE (reference_ordered);
 i   ALTER TABLE ONLY public.stock_bureau_ordered DROP CONSTRAINT stock_bureau_ordered_reference_ordered_key;
       public            postgres    false    242            5           2606    18803 ,   stock_bureau_output stock_bureau_output_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.stock_bureau_output
    ADD CONSTRAINT stock_bureau_output_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.stock_bureau_output DROP CONSTRAINT stock_bureau_output_pkey;
       public            postgres    false    240            8           2606    18805 <   stock_bureau_output stock_bureau_output_reference_output_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_output
    ADD CONSTRAINT stock_bureau_output_reference_output_key UNIQUE (reference_output);
 f   ALTER TABLE ONLY public.stock_bureau_output DROP CONSTRAINT stock_bureau_output_reference_output_key;
       public            postgres    false    240                       2606    18765 2   stock_bureau_product stock_bureau_product_code_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.stock_bureau_product
    ADD CONSTRAINT stock_bureau_product_code_key UNIQUE (code);
 \   ALTER TABLE ONLY public.stock_bureau_product DROP CONSTRAINT stock_bureau_product_code_key;
       public            postgres    false    232                        2606    18767 2   stock_bureau_product stock_bureau_product_name_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.stock_bureau_product
    ADD CONSTRAINT stock_bureau_product_name_key UNIQUE (name);
 \   ALTER TABLE ONLY public.stock_bureau_product DROP CONSTRAINT stock_bureau_product_name_key;
       public            postgres    false    232            "           2606    18763 .   stock_bureau_product stock_bureau_product_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.stock_bureau_product
    ADD CONSTRAINT stock_bureau_product_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.stock_bureau_product DROP CONSTRAINT stock_bureau_product_pkey;
       public            postgres    false    232            %           2606    18777 4   stock_bureau_provider stock_bureau_provider_name_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.stock_bureau_provider
    ADD CONSTRAINT stock_bureau_provider_name_key UNIQUE (name);
 ^   ALTER TABLE ONLY public.stock_bureau_provider DROP CONSTRAINT stock_bureau_provider_name_key;
       public            postgres    false    234            '           2606    18775 0   stock_bureau_provider stock_bureau_provider_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.stock_bureau_provider
    ADD CONSTRAINT stock_bureau_provider_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.stock_bureau_provider DROP CONSTRAINT stock_bureau_provider_pkey;
       public            postgres    false    234            *           2606    18787 2   stock_bureau_service stock_bureau_service_name_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.stock_bureau_service
    ADD CONSTRAINT stock_bureau_service_name_key UNIQUE (name);
 \   ALTER TABLE ONLY public.stock_bureau_service DROP CONSTRAINT stock_bureau_service_name_key;
       public            postgres    false    236            ,           2606    18785 .   stock_bureau_service stock_bureau_service_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.stock_bureau_service
    ADD CONSTRAINT stock_bureau_service_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.stock_bureau_service DROP CONSTRAINT stock_bureau_service_pkey;
       public            postgres    false    236            2           2606    18795 :   stock_bureau_stockmovement stock_bureau_stockmovement_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.stock_bureau_stockmovement
    ADD CONSTRAINT stock_bureau_stockmovement_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.stock_bureau_stockmovement DROP CONSTRAINT stock_bureau_stockmovement_pkey;
       public            postgres    false    238            �           1259    18687    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            �           1259    18624 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            �           1259    18625 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            �           1259    18610 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            �           1259    18640 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213            �           1259    18639 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213            �           1259    18654 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            �           1259    18653 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            �           1259    18681     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211            �           1259    18677 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            �           1259    18678 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            �           1259    18697 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    218            �           1259    18696 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    218            �           1259    18874 (   stock_bureau_category_name_be8a0116_like    INDEX     ~   CREATE INDEX stock_bureau_category_name_be8a0116_like ON public.stock_bureau_category USING btree (name varchar_pattern_ops);
 <   DROP INDEX public.stock_bureau_category_name_be8a0116_like;
       public            postgres    false    220            �           1259    18997 *   stock_bureau_delivery_provider_id_9d985608    INDEX     s   CREATE INDEX stock_bureau_delivery_provider_id_9d985608 ON public.stock_bureau_delivery USING btree (provider_id);
 >   DROP INDEX public.stock_bureau_delivery_provider_id_9d985608;
       public            postgres    false    222            �           1259    18877 6   stock_bureau_delivery_reference_delivery_c5d73593_like    INDEX     �   CREATE INDEX stock_bureau_delivery_reference_delivery_c5d73593_like ON public.stock_bureau_delivery USING btree (reference_delivery varchar_pattern_ops);
 J   DROP INDEX public.stock_bureau_delivery_reference_delivery_c5d73593_like;
       public            postgres    false    222                        1259    18881 -   stock_bureau_employees_lastname_a2a40c4a_like    INDEX     �   CREATE INDEX stock_bureau_employees_lastname_a2a40c4a_like ON public.stock_bureau_employees USING btree (lastname varchar_pattern_ops);
 A   DROP INDEX public.stock_bureau_employees_lastname_a2a40c4a_like;
       public            postgres    false    224                       1259    18880 )   stock_bureau_employees_name_64e262c9_like    INDEX     �   CREATE INDEX stock_bureau_employees_name_64e262c9_like ON public.stock_bureau_employees USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.stock_bureau_employees_name_64e262c9_like;
       public            postgres    false    224                       1259    18996 *   stock_bureau_employees_service_id_21fa9acf    INDEX     s   CREATE INDEX stock_bureau_employees_service_id_21fa9acf ON public.stock_bureau_employees USING btree (service_id);
 >   DROP INDEX public.stock_bureau_employees_service_id_21fa9acf;
       public            postgres    false    224            E           1259    18994 *   stock_bureau_inventory_measure_id_34ed983a    INDEX     s   CREATE INDEX stock_bureau_inventory_measure_id_34ed983a ON public.stock_bureau_inventory USING btree (measure_id);
 >   DROP INDEX public.stock_bureau_inventory_measure_id_34ed983a;
       public            postgres    false    246            H           1259    18995 *   stock_bureau_inventory_product_id_63324f36    INDEX     s   CREATE INDEX stock_bureau_inventory_product_id_63324f36 ON public.stock_bureau_inventory USING btree (product_id);
 >   DROP INDEX public.stock_bureau_inventory_product_id_63324f36;
       public            postgres    false    246            I           1259    18991 8   stock_bureau_inventory_reference_inventory_0413507b_like    INDEX     �   CREATE INDEX stock_bureau_inventory_reference_inventory_0413507b_like ON public.stock_bureau_inventory USING btree (reference_inventory varchar_pattern_ops);
 L   DROP INDEX public.stock_bureau_inventory_reference_inventory_0413507b_like;
       public            postgres    false    246            	           1259    18889 .   stock_bureau_linedelivery_delivery_id_e1239054    INDEX     {   CREATE INDEX stock_bureau_linedelivery_delivery_id_e1239054 ON public.stock_bureau_linedelivery USING btree (delivery_id);
 B   DROP INDEX public.stock_bureau_linedelivery_delivery_id_e1239054;
       public            postgres    false    226            
           1259    18978 2   stock_bureau_linedelivery_line_ordered_id_0ea3528b    INDEX     �   CREATE INDEX stock_bureau_linedelivery_line_ordered_id_0ea3528b ON public.stock_bureau_linedelivery USING btree (line_ordered_id);
 F   DROP INDEX public.stock_bureau_linedelivery_line_ordered_id_0ea3528b;
       public            postgres    false    226                       1259    18979 -   stock_bureau_linedelivery_measure_id_c65fd5cd    INDEX     y   CREATE INDEX stock_bureau_linedelivery_measure_id_c65fd5cd ON public.stock_bureau_linedelivery USING btree (measure_id);
 A   DROP INDEX public.stock_bureau_linedelivery_measure_id_c65fd5cd;
       public            postgres    false    226                       1259    18980 -   stock_bureau_linedelivery_product_id_f287439e    INDEX     y   CREATE INDEX stock_bureau_linedelivery_product_id_f287439e ON public.stock_bureau_linedelivery USING btree (product_id);
 A   DROP INDEX public.stock_bureau_linedelivery_product_id_f287439e;
       public            postgres    false    226            @           1259    18975 ,   stock_bureau_lineordered_measure_id_565d5d73    INDEX     w   CREATE INDEX stock_bureau_lineordered_measure_id_565d5d73 ON public.stock_bureau_lineordered USING btree (measure_id);
 @   DROP INDEX public.stock_bureau_lineordered_measure_id_565d5d73;
       public            postgres    false    244            A           1259    18976 ,   stock_bureau_lineordered_ordered_id_423da9d4    INDEX     w   CREATE INDEX stock_bureau_lineordered_ordered_id_423da9d4 ON public.stock_bureau_lineordered USING btree (ordered_id);
 @   DROP INDEX public.stock_bureau_lineordered_ordered_id_423da9d4;
       public            postgres    false    244            D           1259    18977 ,   stock_bureau_lineordered_product_id_708b51a8    INDEX     w   CREATE INDEX stock_bureau_lineordered_product_id_708b51a8 ON public.stock_bureau_lineordered USING btree (product_id);
 @   DROP INDEX public.stock_bureau_lineordered_product_id_708b51a8;
       public            postgres    false    244                       1259    18895 1   stock_bureau_lineoutput_line_delivery_id_96e62bea    INDEX     �   CREATE INDEX stock_bureau_lineoutput_line_delivery_id_96e62bea ON public.stock_bureau_lineoutput USING btree (line_delivery_id);
 E   DROP INDEX public.stock_bureau_lineoutput_line_delivery_id_96e62bea;
       public            postgres    false    228                       1259    18957 +   stock_bureau_lineoutput_measure_id_9f881a99    INDEX     u   CREATE INDEX stock_bureau_lineoutput_measure_id_9f881a99 ON public.stock_bureau_lineoutput USING btree (measure_id);
 ?   DROP INDEX public.stock_bureau_lineoutput_measure_id_9f881a99;
       public            postgres    false    228                       1259    18958 *   stock_bureau_lineoutput_output_id_e5c135b1    INDEX     s   CREATE INDEX stock_bureau_lineoutput_output_id_e5c135b1 ON public.stock_bureau_lineoutput USING btree (output_id);
 >   DROP INDEX public.stock_bureau_lineoutput_output_id_e5c135b1;
       public            postgres    false    228                       1259    18959 +   stock_bureau_lineoutput_product_id_9899d898    INDEX     u   CREATE INDEX stock_bureau_lineoutput_product_id_9899d898 ON public.stock_bureau_lineoutput USING btree (product_id);
 ?   DROP INDEX public.stock_bureau_lineoutput_product_id_9899d898;
       public            postgres    false    228                       1259    18896 '   stock_bureau_measure_name_54864ef0_like    INDEX     |   CREATE INDEX stock_bureau_measure_name_54864ef0_like ON public.stock_bureau_measure USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.stock_bureau_measure_name_54864ef0_like;
       public            postgres    false    230            :           1259    18956 )   stock_bureau_ordered_employee_id_2c971dd2    INDEX     q   CREATE INDEX stock_bureau_ordered_employee_id_2c971dd2 ON public.stock_bureau_ordered USING btree (employee_id);
 =   DROP INDEX public.stock_bureau_ordered_employee_id_2c971dd2;
       public            postgres    false    242            =           1259    18953 4   stock_bureau_ordered_reference_ordered_97694a76_like    INDEX     �   CREATE INDEX stock_bureau_ordered_reference_ordered_97694a76_like ON public.stock_bureau_ordered USING btree (reference_ordered varchar_pattern_ops);
 H   DROP INDEX public.stock_bureau_ordered_reference_ordered_97694a76_like;
       public            postgres    false    242            6           1259    18944 2   stock_bureau_output_reference_output_bc24fc77_like    INDEX     �   CREATE INDEX stock_bureau_output_reference_output_bc24fc77_like ON public.stock_bureau_output USING btree (reference_output varchar_pattern_ops);
 F   DROP INDEX public.stock_bureau_output_reference_output_bc24fc77_like;
       public            postgres    false    240            9           1259    18947 $   stock_bureau_output_user_id_9bbad97a    INDEX     g   CREATE INDEX stock_bureau_output_user_id_9bbad97a ON public.stock_bureau_output USING btree (user_id);
 8   DROP INDEX public.stock_bureau_output_user_id_9bbad97a;
       public            postgres    false    240                       1259    18908 )   stock_bureau_product_category_id_b8bcd6d5    INDEX     q   CREATE INDEX stock_bureau_product_category_id_b8bcd6d5 ON public.stock_bureau_product USING btree (category_id);
 =   DROP INDEX public.stock_bureau_product_category_id_b8bcd6d5;
       public            postgres    false    232                       1259    18904 '   stock_bureau_product_code_e30816f3_like    INDEX     |   CREATE INDEX stock_bureau_product_code_e30816f3_like ON public.stock_bureau_product USING btree (code varchar_pattern_ops);
 ;   DROP INDEX public.stock_bureau_product_code_e30816f3_like;
       public            postgres    false    232                       1259    18905 '   stock_bureau_product_name_8080b708_like    INDEX     |   CREATE INDEX stock_bureau_product_name_8080b708_like ON public.stock_bureau_product USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.stock_bureau_product_name_8080b708_like;
       public            postgres    false    232            #           1259    18909 (   stock_bureau_provider_name_581bf579_like    INDEX     ~   CREATE INDEX stock_bureau_provider_name_581bf579_like ON public.stock_bureau_provider USING btree (name varchar_pattern_ops);
 <   DROP INDEX public.stock_bureau_provider_name_581bf579_like;
       public            postgres    false    234            (           1259    18912 '   stock_bureau_service_name_2362fafc_like    INDEX     |   CREATE INDEX stock_bureau_service_name_2362fafc_like ON public.stock_bureau_service USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.stock_bureau_service_name_2362fafc_like;
       public            postgres    false    236            -           1259    19004 0   stock_bureau_stockmovement_inventory_id_3fb72b6c    INDEX        CREATE INDEX stock_bureau_stockmovement_inventory_id_3fb72b6c ON public.stock_bureau_stockmovement USING btree (inventory_id);
 D   DROP INDEX public.stock_bureau_stockmovement_inventory_id_3fb72b6c;
       public            postgres    false    238            .           1259    18935 4   stock_bureau_stockmovement_line_delivery_id_1fc8b214    INDEX     �   CREATE INDEX stock_bureau_stockmovement_line_delivery_id_1fc8b214 ON public.stock_bureau_stockmovement USING btree (line_delivery_id);
 H   DROP INDEX public.stock_bureau_stockmovement_line_delivery_id_1fc8b214;
       public            postgres    false    238            /           1259    18936 2   stock_bureau_stockmovement_line_output_id_220c095a    INDEX     �   CREATE INDEX stock_bureau_stockmovement_line_output_id_220c095a ON public.stock_bureau_stockmovement USING btree (line_output_id);
 F   DROP INDEX public.stock_bureau_stockmovement_line_output_id_220c095a;
       public            postgres    false    238            0           1259    18937 .   stock_bureau_stockmovement_measure_id_a6ec0fdf    INDEX     {   CREATE INDEX stock_bureau_stockmovement_measure_id_a6ec0fdf ON public.stock_bureau_stockmovement USING btree (measure_id);
 B   DROP INDEX public.stock_bureau_stockmovement_measure_id_a6ec0fdf;
       public            postgres    false    238            3           1259    18938 .   stock_bureau_stockmovement_product_id_f23f19d6    INDEX     {   CREATE INDEX stock_bureau_stockmovement_product_id_f23f19d6 ON public.stock_bureau_stockmovement USING btree (product_id);
 B   DROP INDEX public.stock_bureau_stockmovement_product_id_f23f19d6;
       public            postgres    false    238            N           2606    18619 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    205    3024    209            M           2606    18614 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    207    209    3029            L           2606    18605 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3019    203    205            P           2606    18634 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3029    213    207            O           2606    18629 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    211    3037            R           2606    18648 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    3024    205    215            Q           2606    18643 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    215    3037    211            S           2606    18667 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    203    3019    217            T           2606    18672 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    211    3037    217            U           2606    18869 L   stock_bureau_delivery stock_bureau_deliver_provider_id_9d985608_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_delivery
    ADD CONSTRAINT stock_bureau_deliver_provider_id_9d985608_fk_stock_bur FOREIGN KEY (provider_id) REFERENCES public.stock_bureau_provider(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.stock_bureau_delivery DROP CONSTRAINT stock_bureau_deliver_provider_id_9d985608_fk_stock_bur;
       public          postgres    false    222    234    3111            V           2606    18864 L   stock_bureau_employees stock_bureau_employe_service_id_21fa9acf_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_employees
    ADD CONSTRAINT stock_bureau_employe_service_id_21fa9acf_fk_stock_bur FOREIGN KEY (service_id) REFERENCES public.stock_bureau_service(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.stock_bureau_employees DROP CONSTRAINT stock_bureau_employe_service_id_21fa9acf_fk_stock_bur;
       public          postgres    false    236    224    3116            j           2606    18981 L   stock_bureau_inventory stock_bureau_invento_measure_id_34ed983a_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_inventory
    ADD CONSTRAINT stock_bureau_invento_measure_id_34ed983a_fk_stock_bur FOREIGN KEY (measure_id) REFERENCES public.stock_bureau_measure(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.stock_bureau_inventory DROP CONSTRAINT stock_bureau_invento_measure_id_34ed983a_fk_stock_bur;
       public          postgres    false    230    3097    246            k           2606    18986 L   stock_bureau_inventory stock_bureau_invento_product_id_63324f36_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_inventory
    ADD CONSTRAINT stock_bureau_invento_product_id_63324f36_fk_stock_bur FOREIGN KEY (product_id) REFERENCES public.stock_bureau_product(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.stock_bureau_inventory DROP CONSTRAINT stock_bureau_invento_product_id_63324f36_fk_stock_bur;
       public          postgres    false    246    232    3106            Z           2606    18884 P   stock_bureau_linedelivery stock_bureau_linedel_delivery_id_e1239054_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_linedelivery
    ADD CONSTRAINT stock_bureau_linedel_delivery_id_e1239054_fk_stock_bur FOREIGN KEY (delivery_id) REFERENCES public.stock_bureau_delivery(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.stock_bureau_linedelivery DROP CONSTRAINT stock_bureau_linedel_delivery_id_e1239054_fk_stock_bur;
       public          postgres    false    226    3067    222            W           2606    18839 T   stock_bureau_linedelivery stock_bureau_linedel_line_ordered_id_0ea3528b_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_linedelivery
    ADD CONSTRAINT stock_bureau_linedel_line_ordered_id_0ea3528b_fk_stock_bur FOREIGN KEY (line_ordered_id) REFERENCES public.stock_bureau_lineordered(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.stock_bureau_linedelivery DROP CONSTRAINT stock_bureau_linedel_line_ordered_id_0ea3528b_fk_stock_bur;
       public          postgres    false    3139    226    244            X           2606    18844 O   stock_bureau_linedelivery stock_bureau_linedel_measure_id_c65fd5cd_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_linedelivery
    ADD CONSTRAINT stock_bureau_linedel_measure_id_c65fd5cd_fk_stock_bur FOREIGN KEY (measure_id) REFERENCES public.stock_bureau_measure(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.stock_bureau_linedelivery DROP CONSTRAINT stock_bureau_linedel_measure_id_c65fd5cd_fk_stock_bur;
       public          postgres    false    3097    230    226            Y           2606    18849 O   stock_bureau_linedelivery stock_bureau_linedel_product_id_f287439e_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_linedelivery
    ADD CONSTRAINT stock_bureau_linedel_product_id_f287439e_fk_stock_bur FOREIGN KEY (product_id) REFERENCES public.stock_bureau_product(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.stock_bureau_linedelivery DROP CONSTRAINT stock_bureau_linedel_product_id_f287439e_fk_stock_bur;
       public          postgres    false    226    3106    232            g           2606    18960 N   stock_bureau_lineordered stock_bureau_lineord_measure_id_565d5d73_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_lineordered
    ADD CONSTRAINT stock_bureau_lineord_measure_id_565d5d73_fk_stock_bur FOREIGN KEY (measure_id) REFERENCES public.stock_bureau_measure(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.stock_bureau_lineordered DROP CONSTRAINT stock_bureau_lineord_measure_id_565d5d73_fk_stock_bur;
       public          postgres    false    3097    230    244            h           2606    18965 N   stock_bureau_lineordered stock_bureau_lineord_ordered_id_423da9d4_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_lineordered
    ADD CONSTRAINT stock_bureau_lineord_ordered_id_423da9d4_fk_stock_bur FOREIGN KEY (ordered_id) REFERENCES public.stock_bureau_ordered(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.stock_bureau_lineordered DROP CONSTRAINT stock_bureau_lineord_ordered_id_423da9d4_fk_stock_bur;
       public          postgres    false    3132    244    242            i           2606    18970 N   stock_bureau_lineordered stock_bureau_lineord_product_id_708b51a8_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_lineordered
    ADD CONSTRAINT stock_bureau_lineord_product_id_708b51a8_fk_stock_bur FOREIGN KEY (product_id) REFERENCES public.stock_bureau_product(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.stock_bureau_lineordered DROP CONSTRAINT stock_bureau_lineord_product_id_708b51a8_fk_stock_bur;
       public          postgres    false    232    3106    244            ^           2606    18890 S   stock_bureau_lineoutput stock_bureau_lineout_line_delivery_id_96e62bea_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_lineoutput
    ADD CONSTRAINT stock_bureau_lineout_line_delivery_id_96e62bea_fk_stock_bur FOREIGN KEY (line_delivery_id) REFERENCES public.stock_bureau_linedelivery(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.stock_bureau_lineoutput DROP CONSTRAINT stock_bureau_lineout_line_delivery_id_96e62bea_fk_stock_bur;
       public          postgres    false    228    3085    226            [           2606    18816 M   stock_bureau_lineoutput stock_bureau_lineout_measure_id_9f881a99_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_lineoutput
    ADD CONSTRAINT stock_bureau_lineout_measure_id_9f881a99_fk_stock_bur FOREIGN KEY (measure_id) REFERENCES public.stock_bureau_measure(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.stock_bureau_lineoutput DROP CONSTRAINT stock_bureau_lineout_measure_id_9f881a99_fk_stock_bur;
       public          postgres    false    3097    228    230            \           2606    18821 L   stock_bureau_lineoutput stock_bureau_lineout_output_id_e5c135b1_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_lineoutput
    ADD CONSTRAINT stock_bureau_lineout_output_id_e5c135b1_fk_stock_bur FOREIGN KEY (output_id) REFERENCES public.stock_bureau_output(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.stock_bureau_lineoutput DROP CONSTRAINT stock_bureau_lineout_output_id_e5c135b1_fk_stock_bur;
       public          postgres    false    240    3125    228            ]           2606    18826 M   stock_bureau_lineoutput stock_bureau_lineout_product_id_9899d898_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_lineoutput
    ADD CONSTRAINT stock_bureau_lineout_product_id_9899d898_fk_stock_bur FOREIGN KEY (product_id) REFERENCES public.stock_bureau_product(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.stock_bureau_lineoutput DROP CONSTRAINT stock_bureau_lineout_product_id_9899d898_fk_stock_bur;
       public          postgres    false    228    3106    232            f           2606    18948 K   stock_bureau_ordered stock_bureau_ordered_employee_id_2c971dd2_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_ordered
    ADD CONSTRAINT stock_bureau_ordered_employee_id_2c971dd2_fk_stock_bur FOREIGN KEY (employee_id) REFERENCES public.stock_bureau_employees(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.stock_bureau_ordered DROP CONSTRAINT stock_bureau_ordered_employee_id_2c971dd2_fk_stock_bur;
       public          postgres    false    224    242    3079            e           2606    18939 E   stock_bureau_output stock_bureau_output_user_id_9bbad97a_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_output
    ADD CONSTRAINT stock_bureau_output_user_id_9bbad97a_fk_stock_bur FOREIGN KEY (user_id) REFERENCES public.stock_bureau_employees(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.stock_bureau_output DROP CONSTRAINT stock_bureau_output_user_id_9bbad97a_fk_stock_bur;
       public          postgres    false    224    240    3079            _           2606    18899 K   stock_bureau_product stock_bureau_product_category_id_b8bcd6d5_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_product
    ADD CONSTRAINT stock_bureau_product_category_id_b8bcd6d5_fk_stock_bur FOREIGN KEY (category_id) REFERENCES public.stock_bureau_category(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.stock_bureau_product DROP CONSTRAINT stock_bureau_product_category_id_b8bcd6d5_fk_stock_bur;
       public          postgres    false    220    3065    232            d           2606    18999 R   stock_bureau_stockmovement stock_bureau_stockmo_inventory_id_3fb72b6c_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_stockmovement
    ADD CONSTRAINT stock_bureau_stockmo_inventory_id_3fb72b6c_fk_stock_bur FOREIGN KEY (inventory_id) REFERENCES public.stock_bureau_inventory(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.stock_bureau_stockmovement DROP CONSTRAINT stock_bureau_stockmo_inventory_id_3fb72b6c_fk_stock_bur;
       public          postgres    false    246    3143    238            `           2606    18915 V   stock_bureau_stockmovement stock_bureau_stockmo_line_delivery_id_1fc8b214_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_stockmovement
    ADD CONSTRAINT stock_bureau_stockmo_line_delivery_id_1fc8b214_fk_stock_bur FOREIGN KEY (line_delivery_id) REFERENCES public.stock_bureau_linedelivery(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.stock_bureau_stockmovement DROP CONSTRAINT stock_bureau_stockmo_line_delivery_id_1fc8b214_fk_stock_bur;
       public          postgres    false    238    226    3085            a           2606    18920 T   stock_bureau_stockmovement stock_bureau_stockmo_line_output_id_220c095a_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_stockmovement
    ADD CONSTRAINT stock_bureau_stockmo_line_output_id_220c095a_fk_stock_bur FOREIGN KEY (line_output_id) REFERENCES public.stock_bureau_lineoutput(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.stock_bureau_stockmovement DROP CONSTRAINT stock_bureau_stockmo_line_output_id_220c095a_fk_stock_bur;
       public          postgres    false    3091    228    238            b           2606    18925 P   stock_bureau_stockmovement stock_bureau_stockmo_measure_id_a6ec0fdf_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_stockmovement
    ADD CONSTRAINT stock_bureau_stockmo_measure_id_a6ec0fdf_fk_stock_bur FOREIGN KEY (measure_id) REFERENCES public.stock_bureau_measure(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.stock_bureau_stockmovement DROP CONSTRAINT stock_bureau_stockmo_measure_id_a6ec0fdf_fk_stock_bur;
       public          postgres    false    3097    230    238            c           2606    18930 P   stock_bureau_stockmovement stock_bureau_stockmo_product_id_f23f19d6_fk_stock_bur    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_bureau_stockmovement
    ADD CONSTRAINT stock_bureau_stockmo_product_id_f23f19d6_fk_stock_bur FOREIGN KEY (product_id) REFERENCES public.stock_bureau_product(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.stock_bureau_stockmovement DROP CONSTRAINT stock_bureau_stockmo_product_id_f23f19d6_fk_stock_bur;
       public          postgres    false    3106    238    232            �      x������ � �      �      x������ � �      �   �  x�e���0F����	&�_��kL�D���-L��ZǱ?�w$=V�g�������vx�C����[ֿ�5-}A��ϥ�GC�-Ko�g�-+?]�g�uC�Z�^q|v���+HM7|�rd;`[�3,{REC�#pg������J��>Q._g/F:e�u)T%d��K1xOqt	�?}���|�o���� �<�ޛ/ӭ��V�|�yyk�����&�Zw|8��f!ß�kó��Q574�6���[mH�W�0yW�=3iW����+DV�h҇��xs-��&�ʰ�`&ߊ��`m��HM�R�}�Ҟ'R�K_�l�R
���Z
B�#1�4��{~�gwN���4�"?(�L�ʏ�!H� �!1����c��8���W��I�Y
X�zò��$ސ����5�ny�.���׾2�G,�P!M��TH�=ri|
������i���W&� ��p&����p~�HKM���%!!��u�#P�ذ�p�t��G$��8���cn�P�2�v]흕F�\Pﭵ �sA��V\�3�Zsi�P��4}ڹ#�Zr��c	�KIs��c��ŵú���2�J�#E6|cz̀���2ò/��g�$Q�Ӯ�9މJ�L^���b���t��p��t,u�)u{_����Z��=nfT�tD%.l&T�t@%�0�)Sy<%F�j���t�eT��S���5��|+0gz8�X`Z(�Z`F;f�����s����]��͛�5=��Ȧ��t;(k���;$�S����?]>�      �   �   x�3�,H�NI3�/�H425S124300P)�ps��3��KJr�\͒�RL��Ms\�L�ý�2B��R�r͓*�
=
ӽ��MR�#m9c�8K8Sr3�89!���K��ʔp��*Z� �����������W� �);      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�m�]N!������q���a�2��@2�g]#��u�G���ʸ�ZxF,y�I�Z>TB^�s��͙3�DǛ��L'e9��V��+�۶�zQR�~�_k����C���h;,���x�=�%�B�y���+ ��HR���	�����a�q�r���էG�Z�G�c��7�}ߚ�y��ܮڞaW@/�y�vl"pC��퉈� f���      �   �  x������0��x��HfZ�ײI��O�@�R���$b41��0}[����C�f,  ��m��-r r �Gl*h*YJ��/�)��?��i|$U�B�:ۿ)��� u*�%D���W�M�.F��;�O�m��
H2�AF�S����W������1&�iъr�,��w3�P��ug����<������m0^�wvSK�^u�G��?ǧ6)\dJ,��i��i۾W8��)�Z#钻qCx���v$�^�CJ�ƅM�=���₰�����%ܜ�J�m9�y�N>wrѭ=������x���8��m��0�pb3�7!cl�U$��L�g��K�t�n>S��
[T��1j���:��� ��X2������tM�&Q�f~��!��*Y����?�7zzQI� �8jJ&�4�0x*%*����]�;������)d�i*)&��>Q�6�R]��,f�("+�AV��UVȓR=Zȳe��>�פ!�dRp���]�v���p��             x������ � �         E   x�3�ppq�tEb�q��*[Y�X��Y�k��Z���A�\1z\\\ S��         V   x���1�0Cѹ9;je74��Y���9P7C�җ���ZQk����Z�{��|�
L*e.gn�ʀ�����W�]D�6�!�         u   x�e̱
�P�9����Gr�W_2�PZ�"�ࢨ�HA��ߋ�v>p���8v[�O��V����Mw� �X-Z�:�#7	.��J�G-�	x2/��W�A�n�����i�ABۄ���[��)1�6�"�         P   x�U���0k{
z��1�4�T��?J�I����q^���Lx����hI�1|~�f��z� g�y��T��Yw         c   x�e�;�0��Z9���N��g����a�}Կ�9."��*���*�%#[�F��җk�Y{�'�N16���0X���].�)^m���op������         E   x�]ɹ�@�x]9���~Ĺb*�)�dc(ܸ@%��k�ծ͘+-��U�j���H~ \�)"^2U      
   t   x�m�1
1D�Z>��a�4���βuN��;&�#�DO'���!^�����^�L��Ar՘� m �(HY~��tlԟ�(��.���!R�R��#�ةyXV����O�7^$(i         y   x�}�;�@E��^=���x2v��iP�����A�$��t��۴tx����:h;����(fQ���+
�S�vx�v5����T���_��ys��)��}���̇��F5\���T|"�b)�         R   x�3�t�u100606202���@��T0��22�2��33�02��60  k�e2אsͬ�L��M-ͱ��&k����� !u         �   x���;
1E�z���a��~ck�������!�� �כ��
�c��'׿�O�V���'�&�{�8]
��흝+H�+{�=ъ�0,ܹ�l��s#��g�|��q�-�t)��U���\IE��K̢��ҷ���cx         �   x����
�0���S�.��M��ܢlk��'�7Ͼ�#�*^j@X�]��ƪ�e�ES��<�*�Sm��i"���x
���v�N�������4Hy�%��`,�m��rQ{%�$,*�a����(����zr��1�
�#cX����݇������\� ����\��Fk�y�FP         k   x�3����u��pp�t�4�54յ0�51����S����SHQ��K��L�4202�50�50T0��24�2��31432��60@�5�2ʚ虚��e�b���� މ]         L   x�3�tt����	r�t�L�4202�50�5�P04�2��24�35�0�4�60@�5�24�32�475�r��qqq ���         �   x�m�K!�5�½��A�!<��=���E��0�]�𥏚�n�7�I�3=�����H�z8�⬎V:4P���8�v�2�r��	��ى>�m�u�9���59[�N�i��=�`�.�6Ҁq��L�JGSb�fh�m���A�N��~�
vAtg.}�t�#m�1ԗ杶IZb�3T'*@-�>�6��}�:��#��1o%���Fem     