PGDMP  	                    }            PracticeJPA    15.8    16.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16555    PracticeJPA    DATABASE     �   CREATE DATABASE "PracticeJPA" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "PracticeJPA";
                postgres    false            H           1247    16557    e_gender    TYPE     O   CREATE TYPE public.e_gender AS ENUM (
    'MALE',
    'FEMALE',
    'OTHER'
);
    DROP TYPE public.e_gender;
       public          postgres    false            K           1247    16564    e_user_status    TYPE     W   CREATE TYPE public.e_user_status AS ENUM (
    'ACTIVE',
    'INACTIVE',
    'NONE'
);
     DROP TYPE public.e_user_status;
       public          postgres    false            N           1247    16572    e_user_type    TYPE     Q   CREATE TYPE public.e_user_type AS ENUM (
    'OWNER',
    'ADMIN',
    'USER'
);
    DROP TYPE public.e_user_type;
       public          postgres    false            �            1259    16591    tbl_address    TABLE     �  CREATE TABLE public.tbl_address (
    id bigint NOT NULL,
    apartment_number character varying(255),
    floor character varying(255),
    building character varying(255),
    street_number character varying(255),
    street character varying(255),
    city character varying(255),
    country character varying(255),
    address_type integer,
    user_id bigint,
    created_at timestamp(6) without time zone DEFAULT now(),
    updated_at timestamp(6) without time zone DEFAULT now()
);
    DROP TABLE public.tbl_address;
       public         heap    postgres    false            �            1259    16590    tbl_address_id_seq    SEQUENCE     {   CREATE SEQUENCE public.tbl_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbl_address_id_seq;
       public          postgres    false    217                       0    0    tbl_address_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tbl_address_id_seq OWNED BY public.tbl_address.id;
          public          postgres    false    216            �            1259    16580    tbl_user    TABLE     H  CREATE TABLE public.tbl_user (
    id bigint NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    date_of_birth date NOT NULL,
    gender public.e_gender NOT NULL,
    phone character varying(255),
    email character varying(255),
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    status public.e_user_status NOT NULL,
    type public.e_user_type NOT NULL,
    created_at timestamp(6) without time zone DEFAULT now(),
    updated_at timestamp(6) without time zone DEFAULT now()
);
    DROP TABLE public.tbl_user;
       public         heap    postgres    false    840    846    843            �            1259    16579    tbl_user_id_seq    SEQUENCE     x   CREATE SEQUENCE public.tbl_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbl_user_id_seq;
       public          postgres    false    215                       0    0    tbl_user_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbl_user_id_seq OWNED BY public.tbl_user.id;
          public          postgres    false    214            v           2604    16594    tbl_address id    DEFAULT     p   ALTER TABLE ONLY public.tbl_address ALTER COLUMN id SET DEFAULT nextval('public.tbl_address_id_seq'::regclass);
 =   ALTER TABLE public.tbl_address ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            s           2604    16583    tbl_user id    DEFAULT     j   ALTER TABLE ONLY public.tbl_user ALTER COLUMN id SET DEFAULT nextval('public.tbl_user_id_seq'::regclass);
 :   ALTER TABLE public.tbl_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                      0    16591    tbl_address 
   TABLE DATA           �   COPY public.tbl_address (id, apartment_number, floor, building, street_number, street, city, country, address_type, user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    217   n                 0    16580    tbl_user 
   TABLE DATA           �   COPY public.tbl_user (id, first_name, last_name, date_of_birth, gender, phone, email, username, password, status, type, created_at, updated_at) FROM stdin;
    public          postgres    false    215   =                  0    0    tbl_address_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tbl_address_id_seq', 7, true);
          public          postgres    false    216                       0    0    tbl_user_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tbl_user_id_seq', 6, true);
          public          postgres    false    214            |           2606    16600    tbl_address tbl_address_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbl_address
    ADD CONSTRAINT tbl_address_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tbl_address DROP CONSTRAINT tbl_address_pkey;
       public            postgres    false    217            z           2606    16589    tbl_user tbl_user_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tbl_user
    ADD CONSTRAINT tbl_user_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tbl_user DROP CONSTRAINT tbl_user_pkey;
       public            postgres    false    215            }           2606    16601    tbl_address fk_address_and_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_address
    ADD CONSTRAINT fk_address_and_user FOREIGN KEY (user_id) REFERENCES public.tbl_user(id);
 I   ALTER TABLE ONLY public.tbl_address DROP CONSTRAINT fk_address_and_user;
       public          postgres    false    215    3194    217               �  x��V]o�8|^�
���)�oV�Kp1���9��^����������;KōlSOw��0�Ƭ83��!C�CF�tr��_�y�����q�=�C<t-m������]|0^Z3��Lʖ�.,Y
�X4����?�&�;����'jG�Jj�-�r��-�\E���;�~��*���EAU� .���w�9��;��G�θ��TU�)\xH^S���M�}�x����N�Fǯ��g>̬Q��)\brjJ|~��j�5����K?���\��pQBtchι)i}�����?�C~.�&�t0S�����4��T������ݾ������e�ʗ��%\�0�8�sx��#; ��c�*W&��(���.` WAs��R�����<	�4:���Y:_M�>py���6�}<�0�hq6f4f:C�v9.`W�y wn��e�̋�M.�q���^.�b���*i^R�[,6�Cj��r*�˿W����\�+�oMx �K=��ʹ�5�s$\����F��݀Z���������X*5VH��E���>���1n}�I\��5�%��q��_y2�.�n���F�RE��'�g��YZ[�Y�vۿ�Fzz��\\�["��.�&�.���'�n�V6�����*Q��8�L.�.,�YO��	4��%n�/����)Ot��p�+�_�ALb�����QfC��w\@�����ZZ���{�KR=���K4�6�Q.{��H�U�#wpo�m�u���i�m2�t�f�:��Bմ�6X����3ܬ{��j�Ke�I\�Z���Q_b��|��s�� ��ɍ�,�����b�OX�:t�\l�vq�
v+�*��&g\�ef�>FIP���0l�
���M��uN����r�6lޞz~�i�V������m��:���t�,n�9<��ߧ�R���Y-u�{ݬʌ̹��?J�߉{5         �  x���Qn�F��wO�p�3�]��N���#��Y�/LBH"*���N�ҋuv)[rL�S�0�4�if�F�E=�+q����^7�Z@�!�6�N,.>^	X�J�~�i�}�K�i����v#�}���G�����}�뛇+�����5�\�|�Ce]�Aas��.�,Wá���u�`�&�\�L���)�����P�vm��T�릋(@�L�|�i�(ħ���Ð]H��\���ń >DpŜ.�8��=c�P�"����<��peu�^���s�65G
�˥��)Pg�UZW�) ;�K4�z8$�DH�\��q�|����DsF]��bXtd`�h`dWÜ@�w�Y�t��o�%:Տm$�G06��N(;e�Q�X�zMI�Ʃ�:h������SQ� ���o����@�s�y�7�3�G�����K_�R�s�CO1���r�M�JE	|��V9��� U��1�Җ��Ғ���,P��a3�ʚJ����9��d>cML�1\Â)+�*fN�PR��b�tOͱ��#���Υ�a��BG����"PM,9�j�Żؔ4%4-��h@����l3�XJNe
?�Kb�A��9�]ڹT�v1���b����y�K
��m#~[7����x ?Q�}9�g��']�8��%
���i2%����d�[_�钬��ͪ�Ł�kA˃S���_9�H���Ūyԥ�f#b�d+�2�ϝW�|�b�'I�6!����x�����K�Wz��ӓJ�t���6���n�M���:���V�>5�ә��tIW�=u�ޝZBrq�;�{ʓC���,Kqy�T�X{���}�P��ӥ���iX�e��5�?�w��&X?u$]��$c��C�P||�}>���?��纤+|q�߳�x��d����(�}u���R�O?�{     