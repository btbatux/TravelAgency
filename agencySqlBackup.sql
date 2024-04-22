PGDMP          -                |            agency    15.6    15.6 "    ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            `           1262    17841    agency    DATABASE     {   CREATE DATABASE agency WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_T�rkiye.1254';
    DROP DATABASE agency;
                postgres    false            �            1259    17854    hotels    TABLE     �  CREATE TABLE public.hotels (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    address_full character varying(250) NOT NULL,
    address_district character varying(50) NOT NULL,
    address_city character varying(50) NOT NULL,
    address_country character varying(50) NOT NULL,
    star_rating integer DEFAULT 3,
    has_car_park boolean DEFAULT false,
    has_internet boolean DEFAULT false,
    has_pool boolean DEFAULT false,
    has_conciege boolean DEFAULT false,
    has_spa boolean DEFAULT false,
    has_room_service boolean DEFAULT false,
    phone character varying(50),
    website character varying(250) NOT NULL,
    email character varying(50),
    created_at date DEFAULT CURRENT_DATE NOT NULL,
    updated_at date DEFAULT CURRENT_DATE NOT NULL,
    deleted_at date,
    created_by integer DEFAULT 1 NOT NULL,
    updated_by integer DEFAULT 1 NOT NULL,
    deleted_by integer
);
    DROP TABLE public.hotels;
       public         heap    postgres    false            �            1259    17853    hotels_id_seq    SEQUENCE     �   ALTER TABLE public.hotels ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.hotels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    17873    pansions    TABLE       CREATE TABLE public.pansions (
    id integer NOT NULL,
    name character varying(50) DEFAULT 'BED_AND_BREAKFAST'::character varying,
    breakfast boolean DEFAULT true,
    lunch boolean DEFAULT false,
    dinner boolean DEFAULT false,
    midnight_snack boolean DEFAULT false,
    soft_drinks boolean DEFAULT false,
    alcoholic_drinks boolean DEFAULT false,
    snacks boolean DEFAULT false,
    created_at date DEFAULT CURRENT_DATE NOT NULL,
    updated_at date DEFAULT CURRENT_DATE NOT NULL,
    deleted_at date,
    created_by integer DEFAULT 1 NOT NULL,
    updated_by integer DEFAULT 1 NOT NULL,
    deleted_by integer,
    hotel_id integer,
    CONSTRAINT type CHECK (((name)::text = ANY (ARRAY[('BED_AND_BREAKFAST'::character varying)::text, ('HALF_BOARD'::character varying)::text, ('FULL_BOARD'::character varying)::text, ('ALL_INCLUSIVE'::character varying)::text, ('ULTRA_ALL_INCLUSIVE'::character varying)::text, ('BED_ONLY'::character varying)::text, ('ALL_INCLUSIVE_NO_ALCOHOL'::character varying)::text])))
);
    DROP TABLE public.pansions;
       public         heap    postgres    false            �            1259    17872    pansions_id_seq    SEQUENCE     �   ALTER TABLE public.pansions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pansions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    17926    reservations    TABLE     �  CREATE TABLE public.reservations (
    id integer NOT NULL,
    guest_citizen_id character varying(50),
    guest_full_name character varying(50) NOT NULL,
    guest_email character varying(50) NOT NULL,
    guest_phone character varying(50) NOT NULL,
    check_in date NOT NULL,
    check_out date NOT NULL,
    adult_count integer NOT NULL,
    child_count integer NOT NULL,
    price integer NOT NULL,
    created_at date DEFAULT CURRENT_DATE NOT NULL,
    updated_at date DEFAULT CURRENT_DATE NOT NULL,
    deleted_at date,
    created_by integer DEFAULT 1 NOT NULL,
    updated_by integer DEFAULT 1 NOT NULL,
    deleted_by integer,
    hotel_id integer NOT NULL,
    room_id integer NOT NULL,
    status "char",
    season_id bigint,
    pansion_id bigint
);
     DROP TABLE public.reservations;
       public         heap    postgres    false            �            1259    17925    reservations_id_seq    SEQUENCE     �   ALTER TABLE public.reservations ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.reservations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    17903    rooms    TABLE     �  CREATE TABLE public.rooms (
    id integer NOT NULL,
    room_number character varying(50) NOT NULL,
    type character varying(50) DEFAULT 'DOUBLE'::character varying,
    double_bed_count integer DEFAULT 0,
    single_bed_count integer DEFAULT 0,
    adult_price integer DEFAULT 0,
    child_price integer DEFAULT 0,
    square_meters integer DEFAULT 0,
    has_television boolean DEFAULT true,
    has_balcony boolean DEFAULT false,
    has_air_conditioning boolean DEFAULT false,
    has_minibar boolean DEFAULT false,
    has_valuables_safe boolean DEFAULT false,
    has_gaming_console boolean DEFAULT false,
    has_projector boolean DEFAULT false,
    created_at date DEFAULT CURRENT_DATE NOT NULL,
    updated_at date DEFAULT CURRENT_DATE NOT NULL,
    deleted_at date,
    created_by integer DEFAULT 1 NOT NULL,
    updated_by integer DEFAULT 1 NOT NULL,
    deleted_by integer,
    hotel_id integer NOT NULL,
    season_id integer NOT NULL,
    pansion_id bigint
);
    DROP TABLE public.rooms;
       public         heap    postgres    false            �            1259    17902    rooms_id_seq    SEQUENCE     �   ALTER TABLE public.rooms ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    17892    seasons    TABLE     �  CREATE TABLE public.seasons (
    id integer NOT NULL,
    name character varying(50) DEFAULT 'LOW'::character varying,
    start_date date NOT NULL,
    end_date date NOT NULL,
    created_at date DEFAULT CURRENT_DATE NOT NULL,
    updated_at date DEFAULT CURRENT_DATE NOT NULL,
    deleted_at date,
    created_by integer DEFAULT 1 NOT NULL,
    updated_by integer DEFAULT 1 NOT NULL,
    deleted_by integer,
    hotel_id integer
);
    DROP TABLE public.seasons;
       public         heap    postgres    false            �            1259    17891    seasons_id_seq    SEQUENCE     �   ALTER TABLE public.seasons ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.seasons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    17843    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(50),
    username character varying(50),
    email character varying(50),
    password character varying(50),
    created_at date DEFAULT CURRENT_DATE NOT NULL,
    updated_at date DEFAULT CURRENT_DATE NOT NULL,
    deleted_at date,
    created_by integer DEFAULT 1 NOT NULL,
    updated_by integer DEFAULT 1 NOT NULL,
    deleted_by integer,
    role character varying(50) DEFAULT 'AGENT'::character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    17842    users_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            R          0    17854    hotels 
   TABLE DATA           $  COPY public.hotels (id, name, address_full, address_district, address_city, address_country, star_rating, has_car_park, has_internet, has_pool, has_conciege, has_spa, has_room_service, phone, website, email, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by) FROM stdin;
    public          postgres    false    217   �5       T          0    17873    pansions 
   TABLE DATA           �   COPY public.pansions (id, name, breakfast, lunch, dinner, midnight_snack, soft_drinks, alcoholic_drinks, snacks, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, hotel_id) FROM stdin;
    public          postgres    false    219   K7       Z          0    17926    reservations 
   TABLE DATA             COPY public.reservations (id, guest_citizen_id, guest_full_name, guest_email, guest_phone, check_in, check_out, adult_count, child_count, price, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, hotel_id, room_id, status, season_id, pansion_id) FROM stdin;
    public          postgres    false    225   <8       X          0    17903    rooms 
   TABLE DATA           c  COPY public.rooms (id, room_number, type, double_bed_count, single_bed_count, adult_price, child_price, square_meters, has_television, has_balcony, has_air_conditioning, has_minibar, has_valuables_safe, has_gaming_console, has_projector, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, hotel_id, season_id, pansion_id) FROM stdin;
    public          postgres    false    223   d9       V          0    17892    seasons 
   TABLE DATA           �   COPY public.seasons (id, name, start_date, end_date, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, hotel_id) FROM stdin;
    public          postgres    false    221   �:       P          0    17843    users 
   TABLE DATA           �   COPY public.users (id, name, username, email, password, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, role) FROM stdin;
    public          postgres    false    215   �;       a           0    0    hotels_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.hotels_id_seq', 4, true);
          public          postgres    false    216            b           0    0    pansions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pansions_id_seq', 23, true);
          public          postgres    false    218            c           0    0    reservations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.reservations_id_seq', 10, true);
          public          postgres    false    224            d           0    0    rooms_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rooms_id_seq', 30, true);
          public          postgres    false    222            e           0    0    seasons_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.seasons_id_seq', 11, true);
          public          postgres    false    220            f           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    214            �           2606    17871    hotels hotels_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.hotels
    ADD CONSTRAINT hotels_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.hotels DROP CONSTRAINT hotels_pkey;
       public            postgres    false    217            �           2606    17890    pansions pansions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pansions
    ADD CONSTRAINT pansions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pansions DROP CONSTRAINT pansions_pkey;
       public            postgres    false    219            �           2606    17934    reservations reservations_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.reservations DROP CONSTRAINT reservations_pkey;
       public            postgres    false    225            �           2606    17924    rooms rooms_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rooms DROP CONSTRAINT rooms_pkey;
       public            postgres    false    223            �           2606    17901    seasons seasons_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.seasons
    ADD CONSTRAINT seasons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.seasons DROP CONSTRAINT seasons_pkey;
       public            postgres    false    221            �           2606    17852    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            R   d  x����r�0���)� "
X���^�A�3:=yY$�d�!a�0�꽷�{5�+�K�=���@��)ڧLJ��J�J�3q"�++󈼃O�(pN$�婸��E E^\�N,��#��l�W��Y��̭�S*����^D�x����䠷Aw�*u��J�t,;k�-ZU�b�7�j�=�]s⚶=,uc��3l�a\�?�o �IH�X�Px�_�m ��R=�q��g�V���6jP(��4͎��:�71:���b�$Q��d>D�e�g��"�I��:����I5��p���9��1Uli�l����P, ���ڄ��<Cj���vT���I;��7�_CǱa?�6�      T   �   x����
�0EיQ�Ij�2�--��!;�������+cf�l�e�Ϊ�v�Ԯun�8���W��]&w����0N�| Y�t�*���/�����_x��Lۛ����Ҽ����s6�iP..����}��s@�=�K��lg�j���e�I�c�I���$�G�� L �bD�Mbe*���G���B�.]F	��c�0J,O%���'��&	(T#��q=E�      Z     x���MN�0��ϧ�Z��x]!!B�U7UM��Ei��4\���{1&i�&"}��5~��6�)�.��Ml� I2I���BA�R�[fA�7\?p�J�����	w�w����uΖ�-�pн���1]�۲�o��	#&\�q�qp"i�w�n�2��B��B4��F΄��P��6J��mQo��%�>&a>�3�Ë 3T�������l{>U���b�ֱ�����h���x�Yp�i��A(	�o���.J��M
}
u�D�������x�J�z)��1ɏx      X   g  x���Aj1E��wI�$�3ޖ�(ii�]�=A�O�U�t^̌���%3&ZL�o��׃��R�5��%�ˊ�]�;���ۉ]�sa�fO�8*������ʬ��6�T*�[Τ�����\:�/r�8���9�����V��$�ɊA�H�蜔��b1|��r�L��r����jPg9�����r�Ց�B�)^G��,��;ta9���@W�s��+t���ϛ�y��>s،���O��{���m#8G���J`�����9zG��D���;l!"G�H�����1����o+��� �|=^1��_�a(���/��ju��8��x�yBt�'q��:����-P��	�7���      V   �   x�3����4202�50"(�D�� �42Bf��q!��2���t�J�"t[��ۘ����*k	�nhD�v
�n�eJ�Ӎ��(q���sYRb�1�9R���l��!����G�+�V�畂�����cL�9&\����UH���$טp��qqq ���(      P   u   x�3�tt����LL��̃�I�%�z���PA##]]##df��!)�\F���~!���y%� � A�@ps:�e$�q&����%���9`�����H�b���� T�9�     