PGDMP                      }            Food Booking Application    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16746    Food Booking Application    DATABASE     �   CREATE DATABASE "Food Booking Application" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
 *   DROP DATABASE "Food Booking Application";
                     postgres    false            �            1259    16752 	   customers    TABLE     �   CREATE TABLE public.customers (
    customerid integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    phone character varying(15),
    city character varying(50),
    joindate date
);
    DROP TABLE public.customers;
       public         heap r       postgres    false            �            1259    16757    orders    TABLE     �   CREATE TABLE public.orders (
    orderid integer NOT NULL,
    customerid integer,
    restaurantid integer,
    orderdate date,
    orderamount numeric(10,2),
    orderstatus character varying(20)
);
    DROP TABLE public.orders;
       public         heap r       postgres    false            �            1259    16767    payments    TABLE     �   CREATE TABLE public.payments (
    paymentid integer NOT NULL,
    orderid integer,
    paymentmethod character varying(20),
    amount numeric(10,2),
    paymentdate date
);
    DROP TABLE public.payments;
       public         heap r       postgres    false            �            1259    16747    restaurants    TABLE     �   CREATE TABLE public.restaurants (
    restaurantid integer NOT NULL,
    name character varying(100),
    city character varying(50),
    cuisinetype character varying(50),
    rating numeric(2,1),
    averagecostfortwo integer
);
    DROP TABLE public.restaurants;
       public         heap r       postgres    false            �            1259    16762    reviews    TABLE     �   CREATE TABLE public.reviews (
    reviewid integer NOT NULL,
    customerid integer,
    restaurantid integer,
    rating numeric(2,1),
    comment character varying(255),
    reviewdate date
);
    DROP TABLE public.reviews;
       public         heap r       postgres    false            �          0    16752 	   customers 
   TABLE DATA           [   COPY public.customers (customerid, firstname, lastname, phone, city, joindate) FROM stdin;
    public               postgres    false    218   �       �          0    16757    orders 
   TABLE DATA           h   COPY public.orders (orderid, customerid, restaurantid, orderdate, orderamount, orderstatus) FROM stdin;
    public               postgres    false    219   �       �          0    16767    payments 
   TABLE DATA           Z   COPY public.payments (paymentid, orderid, paymentmethod, amount, paymentdate) FROM stdin;
    public               postgres    false    221          �          0    16747    restaurants 
   TABLE DATA           g   COPY public.restaurants (restaurantid, name, city, cuisinetype, rating, averagecostfortwo) FROM stdin;
    public               postgres    false    217          �          0    16762    reviews 
   TABLE DATA           b   COPY public.reviews (reviewid, customerid, restaurantid, rating, comment, reviewdate) FROM stdin;
    public               postgres    false    220          3           2606    16756    customers customers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customerid);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public                 postgres    false    218            5           2606    16761    orders orders_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public                 postgres    false    219            9           2606    16771    payments payments_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (paymentid);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public                 postgres    false    221            1           2606    16751    restaurants restaurants_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.restaurants
    ADD CONSTRAINT restaurants_pkey PRIMARY KEY (restaurantid);
 F   ALTER TABLE ONLY public.restaurants DROP CONSTRAINT restaurants_pkey;
       public                 postgres    false    217            7           2606    16766    reviews reviews_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (reviewid);
 >   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_pkey;
       public                 postgres    false    220            �   �   x�e��n�0D�ÿP�r$ʥ�� ���V�bG`**������i<;ZiT�~�hŎ����ؽ��Q&O�N�J�28�����R0�u߮Iu�n�&XGx��2a��J�U�������S�P�G�S�����	'�q.]�l�:�Tw~���_��U�,�%�[�>=�����m�����|N.q��F�;M�z�}����LW�4�v'��fx	�x\	�w��U¿!2����$�s�n�      �   �   x�m�1
�0���.�-�����RS!C�����k��[߉"�>H��Dv"4�R��]_uvg*!�R05u�o���M喕�*
uYl*C<k�/^�6/�ӌ�a�'E��%�)Aq� �mUL)�U��[��
FW������P�4��qr����!���R,      �   �   x�u�;�0D��]�f��'5�HC�H�����&��Hv1z�;Ϡ�����*1b������3Y�}ߞ��(8#�7��c%6��Χ��@KùoW#N����^��'�R�����\�>�z��w��^&��=7?�      �   �   x�e�Mo�0D��_���	v�����*�H��^���Ǝ"~}�/@�q5O�v�xh틡��q���l���j�CK)2T�9�Ş���}}Q�DM0����?�h�s��Yc��L�&P	SX5�f}��}J*�[v!��7��Rh,Î��n�Tq��������	��%�d-�J-��+ս��`��NU%j{<�h����S	���������jOm
:�b,��銖������r�R���),r�      �   �   x�Mлn�0Й�
�j��GƠC�6S�,j�ɐ��ׇ�Ȁ�P�W	2���ψ6�d�o��2�^ǴPE)0Y�p�!ۼ���4!4��ю�����_�.���ڲ��.�����=��XK̀����W�TG���d�
^�KU=��"�w�9?��m��9eKnx���{�v	��ې��ó�|�G��|��|�+��R��#����V�	�p�n`�1� ��Z�     