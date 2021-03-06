PGDMP     5                     z            postgres    14.1    14.1 :    0           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            1           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            2           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            3           1262    13754    postgres    DATABASE     d   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Polish_Poland.1250';
    DROP DATABASE postgres;
                postgres    false            4           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3379                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            5           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    16506    adresses    TABLE     ?   CREATE TABLE public.adresses (
    id integer NOT NULL,
    country text NOT NULL,
    city text NOT NULL,
    street text,
    house_number text NOT NULL,
    apartment_number text,
    postal text NOT NULL
);
    DROP TABLE public.adresses;
       public         heap    postgres    false            ?            1259    16505    adresses_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.adresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.adresses_id_seq;
       public          postgres    false    225            6           0    0    adresses_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.adresses_id_seq OWNED BY public.adresses.id;
          public          postgres    false    224            ?            1259    16409    doctors    TABLE     ?   CREATE TABLE public.doctors (
    id integer NOT NULL,
    name text NOT NULL,
    surname text NOT NULL,
    title text NOT NULL,
    adress_id integer NOT NULL
);
    DROP TABLE public.doctors;
       public         heap    postgres    false            ?            1259    16408    doctors_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.doctors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.doctors_id_seq;
       public          postgres    false    213            7           0    0    doctors_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.doctors_id_seq OWNED BY public.doctors.id;
          public          postgres    false    212            ?            1259    16395    patients    TABLE       CREATE TABLE public.patients (
    "ERP_number" integer NOT NULL,
    name text NOT NULL,
    surname text NOT NULL,
    date_of_birth date NOT NULL,
    sex text NOT NULL,
    is_alive boolean NOT NULL,
    blood_type text NOT NULL,
    adress_id integer
);
    DROP TABLE public.patients;
       public         heap    postgres    false            ?            1259    16394    patients_ERP_number_seq    SEQUENCE     ?   CREATE SEQUENCE public."patients_ERP_number_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."patients_ERP_number_seq";
       public          postgres    false    211            8           0    0    patients_ERP_number_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."patients_ERP_number_seq" OWNED BY public.patients."ERP_number";
          public          postgres    false    210            ?            1259    16448    samples    TABLE     ?   CREATE TABLE public.samples (
    id integer NOT NULL,
    test_id integer NOT NULL,
    name text NOT NULL,
    quantity numeric NOT NULL,
    unit text NOT NULL
);
    DROP TABLE public.samples;
       public         heap    postgres    false            ?            1259    16447    samples_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.samples_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.samples_id_seq;
       public          postgres    false    221            9           0    0    samples_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.samples_id_seq OWNED BY public.samples.id;
          public          postgres    false    220            ?            1259    16418    technicians    TABLE     ?   CREATE TABLE public.technicians (
    id integer NOT NULL,
    name text NOT NULL,
    surname text NOT NULL,
    adress_id integer
);
    DROP TABLE public.technicians;
       public         heap    postgres    false            ?            1259    16417    technicians_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.technicians_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.technicians_id_seq;
       public          postgres    false    215            :           0    0    technicians_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.technicians_id_seq OWNED BY public.technicians.id;
          public          postgres    false    214            ?            1259    16457    test_results    TABLE     ?   CREATE TABLE public.test_results (
    name text NOT NULL,
    id integer NOT NULL,
    result integer NOT NULL,
    unit text NOT NULL,
    date date NOT NULL,
    sample_id integer NOT NULL,
    technican_id integer NOT NULL
);
     DROP TABLE public.test_results;
       public         heap    postgres    false            ?            1259    16456    test_results_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.test_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.test_results_id_seq;
       public          postgres    false    223            ;           0    0    test_results_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.test_results_id_seq OWNED BY public.test_results.id;
          public          postgres    false    222            ?            1259    16439    tests    TABLE     ?   CREATE TABLE public.tests (
    id integer NOT NULL,
    date_of_order date NOT NULL,
    end_date date,
    doctor_id integer NOT NULL,
    status text NOT NULL,
    visit_id integer NOT NULL
);
    DROP TABLE public.tests;
       public         heap    postgres    false            ?            1259    16438    tests_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tests_id_seq;
       public          postgres    false    219            <           0    0    tests_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tests_id_seq OWNED BY public.tests.id;
          public          postgres    false    218            ?            1259    16427    visits    TABLE     ?   CREATE TABLE public.visits (
    id integer NOT NULL,
    date_of_admission date NOT NULL,
    date_of_discharge date,
    doctor_admissing_id integer NOT NULL,
    patient_erp integer NOT NULL,
    doctor_discharging_id integer
);
    DROP TABLE public.visits;
       public         heap    postgres    false            ?            1259    16426    visits_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.visits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.visits_id_seq;
       public          postgres    false    217            =           0    0    visits_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.visits_id_seq OWNED BY public.visits.id;
          public          postgres    false    216            ?           2604    16509    adresses id    DEFAULT     j   ALTER TABLE ONLY public.adresses ALTER COLUMN id SET DEFAULT nextval('public.adresses_id_seq'::regclass);
 :   ALTER TABLE public.adresses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            ?           2604    16412 
   doctors id    DEFAULT     h   ALTER TABLE ONLY public.doctors ALTER COLUMN id SET DEFAULT nextval('public.doctors_id_seq'::regclass);
 9   ALTER TABLE public.doctors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            ?           2604    16398    patients ERP_number    DEFAULT     ~   ALTER TABLE ONLY public.patients ALTER COLUMN "ERP_number" SET DEFAULT nextval('public."patients_ERP_number_seq"'::regclass);
 D   ALTER TABLE public.patients ALTER COLUMN "ERP_number" DROP DEFAULT;
       public          postgres    false    210    211    211            ?           2604    16451 
   samples id    DEFAULT     h   ALTER TABLE ONLY public.samples ALTER COLUMN id SET DEFAULT nextval('public.samples_id_seq'::regclass);
 9   ALTER TABLE public.samples ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            ?           2604    16421    technicians id    DEFAULT     p   ALTER TABLE ONLY public.technicians ALTER COLUMN id SET DEFAULT nextval('public.technicians_id_seq'::regclass);
 =   ALTER TABLE public.technicians ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            ?           2604    16460    test_results id    DEFAULT     r   ALTER TABLE ONLY public.test_results ALTER COLUMN id SET DEFAULT nextval('public.test_results_id_seq'::regclass);
 >   ALTER TABLE public.test_results ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            ?           2604    16442    tests id    DEFAULT     d   ALTER TABLE ONLY public.tests ALTER COLUMN id SET DEFAULT nextval('public.tests_id_seq'::regclass);
 7   ALTER TABLE public.tests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            ?           2604    16430 	   visits id    DEFAULT     f   ALTER TABLE ONLY public.visits ALTER COLUMN id SET DEFAULT nextval('public.visits_id_seq'::regclass);
 8   ALTER TABLE public.visits ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            ?           2606    16513    adresses adresses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.adresses
    ADD CONSTRAINT adresses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.adresses DROP CONSTRAINT adresses_pkey;
       public            postgres    false    225            ?           2606    16416    doctors doctors_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.doctors DROP CONSTRAINT doctors_pkey;
       public            postgres    false    213            ?           2606    16402    patients patients_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pkey PRIMARY KEY ("ERP_number");
 @   ALTER TABLE ONLY public.patients DROP CONSTRAINT patients_pkey;
       public            postgres    false    211            ?           2606    16455    samples samples_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.samples
    ADD CONSTRAINT samples_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.samples DROP CONSTRAINT samples_pkey;
       public            postgres    false    221            ?           2606    16425    technicians technicians_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.technicians
    ADD CONSTRAINT technicians_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.technicians DROP CONSTRAINT technicians_pkey;
       public            postgres    false    215            ?           2606    16464    test_results test_results_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.test_results
    ADD CONSTRAINT test_results_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.test_results DROP CONSTRAINT test_results_pkey;
       public            postgres    false    223            ?           2606    16446    tests tests_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_pkey;
       public            postgres    false    219            ?           2606    16432    visits visits_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.visits
    ADD CONSTRAINT visits_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.visits DROP CONSTRAINT visits_pkey;
       public            postgres    false    217            ?           2606    16524    technicians adress_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.technicians
    ADD CONSTRAINT adress_id FOREIGN KEY (adress_id) REFERENCES public.adresses(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public.technicians DROP CONSTRAINT adress_id;
       public          postgres    false    3223    215    225            ?           2606    16514    doctors adress_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT adress_id_fkey FOREIGN KEY (adress_id) REFERENCES public.adresses(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 @   ALTER TABLE ONLY public.doctors DROP CONSTRAINT adress_id_fkey;
       public          postgres    false    3223    213    225            ?           2606    16519    patients adress_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.patients
    ADD CONSTRAINT adress_id_fkey FOREIGN KEY (adress_id) REFERENCES public.adresses(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 A   ALTER TABLE ONLY public.patients DROP CONSTRAINT adress_id_fkey;
       public          postgres    false    3223    211    225            ?           2606    16495    visits doctor_admissing_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.visits
    ADD CONSTRAINT doctor_admissing_id_fkey FOREIGN KEY (doctor_admissing_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 I   ALTER TABLE ONLY public.visits DROP CONSTRAINT doctor_admissing_id_fkey;
       public          postgres    false    217    3211    213            ?           2606    16500 !   visits doctor_discharging_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.visits
    ADD CONSTRAINT doctor_discharging_id_fkey FOREIGN KEY (doctor_discharging_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 K   ALTER TABLE ONLY public.visits DROP CONSTRAINT doctor_discharging_id_fkey;
       public          postgres    false    3211    213    217            ?           2606    16480    tests doctor_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 >   ALTER TABLE ONLY public.tests DROP CONSTRAINT doctor_id_fkey;
       public          postgres    false    219    213    3211            ?           2606    16490    visits patient_erp_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.visits
    ADD CONSTRAINT patient_erp_fkey FOREIGN KEY (patient_erp) REFERENCES public.patients("ERP_number") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 A   ALTER TABLE ONLY public.visits DROP CONSTRAINT patient_erp_fkey;
       public          postgres    false    217    211    3209            ?           2606    16470    test_results sample_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.test_results
    ADD CONSTRAINT sample_id_fkey FOREIGN KEY (sample_id) REFERENCES public.samples(id) NOT VALID;
 E   ALTER TABLE ONLY public.test_results DROP CONSTRAINT sample_id_fkey;
       public          postgres    false    223    3219    221            ?           2606    16475    test_results technican_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.test_results
    ADD CONSTRAINT technican_id_fkey FOREIGN KEY (technican_id) REFERENCES public.technicians(id) ON DELETE CASCADE NOT VALID;
 H   ALTER TABLE ONLY public.test_results DROP CONSTRAINT technican_id_fkey;
       public          postgres    false    215    223    3213            ?           2606    16465    samples test_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.samples
    ADD CONSTRAINT test_id_fkey FOREIGN KEY (test_id) REFERENCES public.tests(id) NOT VALID;
 >   ALTER TABLE ONLY public.samples DROP CONSTRAINT test_id_fkey;
       public          postgres    false    3217    221    219            ?           2606    16485    tests visit_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT visit_id_fkey FOREIGN KEY (visit_id) REFERENCES public.visits(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 =   ALTER TABLE ONLY public.tests DROP CONSTRAINT visit_id_fkey;
       public          postgres    false    3215    219    217           