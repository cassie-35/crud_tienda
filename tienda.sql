PGDMP  .                	    |            tienda    17.0    17.0 >    9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            <           1262    16472    tienda    DATABASE     y   CREATE DATABASE tienda WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE tienda;
                     postgres    false            �            1259    16480    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap r       postgres    false            �            1259    16512 	   categoria    TABLE     6  CREATE TABLE public.categoria (
    id bigint NOT NULL,
    nombre character varying,
    descripcion text,
    fecha_de_creacion date,
    estado character varying,
    imagen character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.categoria;
       public         heap r       postgres    false            �            1259    16511    categoria_id_seq    SEQUENCE     y   CREATE SEQUENCE public.categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.categoria_id_seq;
       public               postgres    false    224            =           0    0    categoria_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;
          public               postgres    false    223            �            1259    16488    clientes    TABLE     >  CREATE TABLE public.clientes (
    id bigint NOT NULL,
    nombre character varying,
    email character varying,
    telefono character varying,
    direccion character varying,
    fecha_registro date,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.clientes;
       public         heap r       postgres    false            �            1259    16487    clientes_id_seq    SEQUENCE     x   CREATE SEQUENCE public.clientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clientes_id_seq;
       public               postgres    false    220            >           0    0    clientes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;
          public               postgres    false    219            �            1259    16551    detalle_de_pedidos    TABLE     H  CREATE TABLE public.detalle_de_pedidos (
    id bigint NOT NULL,
    cantidad integer,
    precio_unitario numeric(10,2),
    subtotal numeric(10,2),
    pedido_id bigint NOT NULL,
    producto_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 &   DROP TABLE public.detalle_de_pedidos;
       public         heap r       postgres    false            �            1259    16550    detalle_de_pedidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_de_pedidos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.detalle_de_pedidos_id_seq;
       public               postgres    false    230            ?           0    0    detalle_de_pedidos_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.detalle_de_pedidos_id_seq OWNED BY public.detalle_de_pedidos.id;
          public               postgres    false    229            �            1259    16497    pedidos    TABLE     <  CREATE TABLE public.pedidos (
    id bigint NOT NULL,
    fecha_pedido date,
    total numeric(10,2),
    estado character varying,
    metodo_de_pago character varying,
    cliente_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.pedidos;
       public         heap r       postgres    false            �            1259    16496    pedidos_id_seq    SEQUENCE     w   CREATE SEQUENCE public.pedidos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pedidos_id_seq;
       public               postgres    false    222            @           0    0    pedidos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pedidos_id_seq OWNED BY public.pedidos.id;
          public               postgres    false    221            �            1259    16530 	   productos    TABLE     O  CREATE TABLE public.productos (
    id bigint NOT NULL,
    nombre character varying,
    precio numeric(10,2),
    stock integer,
    descripcion text,
    categoria_id bigint NOT NULL,
    proveedor_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.productos;
       public         heap r       postgres    false            �            1259    16529    productos_id_seq    SEQUENCE     y   CREATE SEQUENCE public.productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public               postgres    false    228            A           0    0    productos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;
          public               postgres    false    227            �            1259    16521 
   proveedors    TABLE     G  CREATE TABLE public.proveedors (
    id bigint NOT NULL,
    nombre character varying,
    contacto character varying,
    telefono character varying,
    email character varying,
    direccion character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.proveedors;
       public         heap r       postgres    false            �            1259    16520    proveedors_id_seq    SEQUENCE     z   CREATE SEQUENCE public.proveedors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.proveedors_id_seq;
       public               postgres    false    226            B           0    0    proveedors_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.proveedors_id_seq OWNED BY public.proveedors.id;
          public               postgres    false    225            �            1259    16473    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap r       postgres    false            z           2604    16515    categoria id    DEFAULT     l   ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);
 ;   ALTER TABLE public.categoria ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    223    224    224            x           2604    16491    clientes id    DEFAULT     j   ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);
 :   ALTER TABLE public.clientes ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            }           2604    16554    detalle_de_pedidos id    DEFAULT     ~   ALTER TABLE ONLY public.detalle_de_pedidos ALTER COLUMN id SET DEFAULT nextval('public.detalle_de_pedidos_id_seq'::regclass);
 D   ALTER TABLE public.detalle_de_pedidos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    230    230            y           2604    16500 
   pedidos id    DEFAULT     h   ALTER TABLE ONLY public.pedidos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_id_seq'::regclass);
 9   ALTER TABLE public.pedidos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221    222            |           2604    16533    productos id    DEFAULT     l   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    228    227    228            {           2604    16524    proveedors id    DEFAULT     n   ALTER TABLE ONLY public.proveedors ALTER COLUMN id SET DEFAULT nextval('public.proveedors_id_seq'::regclass);
 <   ALTER TABLE public.proveedors ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    225    226            *          0    16480    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public               postgres    false    218   �K       0          0    16512 	   categoria 
   TABLE DATA           w   COPY public.categoria (id, nombre, descripcion, fecha_de_creacion, estado, imagen, created_at, updated_at) FROM stdin;
    public               postgres    false    224    L       ,          0    16488    clientes 
   TABLE DATA           r   COPY public.clientes (id, nombre, email, telefono, direccion, fecha_registro, created_at, updated_at) FROM stdin;
    public               postgres    false    220   M       6          0    16551    detalle_de_pedidos 
   TABLE DATA           �   COPY public.detalle_de_pedidos (id, cantidad, precio_unitario, subtotal, pedido_id, producto_id, created_at, updated_at) FROM stdin;
    public               postgres    false    230   :M       .          0    16497    pedidos 
   TABLE DATA           v   COPY public.pedidos (id, fecha_pedido, total, estado, metodo_de_pago, cliente_id, created_at, updated_at) FROM stdin;
    public               postgres    false    222   WM       4          0    16530 	   productos 
   TABLE DATA              COPY public.productos (id, nombre, precio, stock, descripcion, categoria_id, proveedor_id, created_at, updated_at) FROM stdin;
    public               postgres    false    228   tM       2          0    16521 
   proveedors 
   TABLE DATA           n   COPY public.proveedors (id, nombre, contacto, telefono, email, direccion, created_at, updated_at) FROM stdin;
    public               postgres    false    226   �M       )          0    16473    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public               postgres    false    217   nN       C           0    0    categoria_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.categoria_id_seq', 7, true);
          public               postgres    false    223            D           0    0    clientes_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.clientes_id_seq', 1, false);
          public               postgres    false    219            E           0    0    detalle_de_pedidos_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.detalle_de_pedidos_id_seq', 1, false);
          public               postgres    false    229            F           0    0    pedidos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pedidos_id_seq', 1, false);
          public               postgres    false    221            G           0    0    productos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.productos_id_seq', 1, false);
          public               postgres    false    227            H           0    0    proveedors_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.proveedors_id_seq', 2, true);
          public               postgres    false    225            �           2606    16486 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public                 postgres    false    218            �           2606    16519    categoria categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public                 postgres    false    224            �           2606    16495    clientes clientes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public                 postgres    false    220            �           2606    16556 *   detalle_de_pedidos detalle_de_pedidos_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.detalle_de_pedidos
    ADD CONSTRAINT detalle_de_pedidos_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.detalle_de_pedidos DROP CONSTRAINT detalle_de_pedidos_pkey;
       public                 postgres    false    230            �           2606    16504    pedidos pedidos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_pkey;
       public                 postgres    false    222            �           2606    16537    productos productos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public                 postgres    false    228            �           2606    16528    proveedors proveedors_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.proveedors
    ADD CONSTRAINT proveedors_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.proveedors DROP CONSTRAINT proveedors_pkey;
       public                 postgres    false    226                       2606    16479 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public                 postgres    false    217            �           1259    16567 %   index_detalle_de_pedidos_on_pedido_id    INDEX     i   CREATE INDEX index_detalle_de_pedidos_on_pedido_id ON public.detalle_de_pedidos USING btree (pedido_id);
 9   DROP INDEX public.index_detalle_de_pedidos_on_pedido_id;
       public                 postgres    false    230            �           1259    16568 '   index_detalle_de_pedidos_on_producto_id    INDEX     m   CREATE INDEX index_detalle_de_pedidos_on_producto_id ON public.detalle_de_pedidos USING btree (producto_id);
 ;   DROP INDEX public.index_detalle_de_pedidos_on_producto_id;
       public                 postgres    false    230            �           1259    16510    index_pedidos_on_cliente_id    INDEX     U   CREATE INDEX index_pedidos_on_cliente_id ON public.pedidos USING btree (cliente_id);
 /   DROP INDEX public.index_pedidos_on_cliente_id;
       public                 postgres    false    222            �           1259    16548    index_productos_on_categoria_id    INDEX     ]   CREATE INDEX index_productos_on_categoria_id ON public.productos USING btree (categoria_id);
 3   DROP INDEX public.index_productos_on_categoria_id;
       public                 postgres    false    228            �           1259    16549    index_productos_on_proveedor_id    INDEX     ]   CREATE INDEX index_productos_on_proveedor_id ON public.productos USING btree (proveedor_id);
 3   DROP INDEX public.index_productos_on_proveedor_id;
       public                 postgres    false    228            �           2606    16562 &   detalle_de_pedidos fk_rails_13865b3663    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_de_pedidos
    ADD CONSTRAINT fk_rails_13865b3663 FOREIGN KEY (producto_id) REFERENCES public.productos(id);
 P   ALTER TABLE ONLY public.detalle_de_pedidos DROP CONSTRAINT fk_rails_13865b3663;
       public               postgres    false    230    228    4750            �           2606    16557 &   detalle_de_pedidos fk_rails_1c376c695c    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_de_pedidos
    ADD CONSTRAINT fk_rails_1c376c695c FOREIGN KEY (pedido_id) REFERENCES public.pedidos(id);
 P   ALTER TABLE ONLY public.detalle_de_pedidos DROP CONSTRAINT fk_rails_1c376c695c;
       public               postgres    false    230    222    4742            �           2606    16543    productos fk_rails_231f91056b    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_rails_231f91056b FOREIGN KEY (proveedor_id) REFERENCES public.proveedors(id);
 G   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_rails_231f91056b;
       public               postgres    false    4746    226    228            �           2606    16505    pedidos fk_rails_8781d0f1b6    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_rails_8781d0f1b6 FOREIGN KEY (cliente_id) REFERENCES public.clientes(id);
 E   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_rails_8781d0f1b6;
       public               postgres    false    222    220    4739            �           2606    16538    productos fk_rails_d08a14d98a    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_rails_d08a14d98a FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);
 G   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_rails_d08a14d98a;
       public               postgres    false    228    224    4744            *   A   x�K�+�,���M�+�LI-K��/ ���Ltt���L���M�,�M�,,qJYs��qqq ��Y      0   �   x�ŒK��0���)�y�@Z1'����GI(eN?��H�,��,lY�m���k���%,���wx$h�$�$�#�)���C�V<��0�8�mu��Љy����2B�P��Vi�в�9�����d��B>��ӕ�e�J���p��wޥF2�����>�
�~4��-~!���l�L.͗0'�6n���b(A󭧊�D���:V�~�us������yV��A�K�,���~V�Ӣ      ,      x������ � �      6      x������ � �      .      x������ � �      4      x������ � �      2   �   x�}�1n�0Dk��K�7�T��f��Ҧ����`mr�(G؋�4Q�b��f4���ea=u�tf����@�$���(ļv������ �4����:EJd	^��`��هo_	28^\�+Spv&&�T�� �.D�27FhU�Q\�pi�W{n>jY����zmZ��i����[w�S�}�a�;����ֹP%JsG�s��S}      )   3   x�32021406 R�Ʀ\F���!2����kah��5FQlab����� Uf     