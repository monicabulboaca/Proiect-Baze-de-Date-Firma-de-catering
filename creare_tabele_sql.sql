savepoint s1;

---------------------MENIURI---------
CREATE TABLE MENIURI(
    id_meniu    NUMBER(2) NOT NULL,
    nume_meniu  VARCHAR(30) NOT NULL,
    data_creare DATE DEFAULT sysdate NOT NULL
);

ALTER TABLE MENIURI ADD CONSTRAINT nume_meniu_ck CHECK (
    REGEXP_LIKE ( nume_meniu,
    '^[A-Z][a-z]+([\ \-]([A-Z]?[a-z]+|[1-9][0-9]*))*$' ) );

ALTER TABLE MENIURI ADD CONSTRAINT meniuri_pk PRIMARY KEY ( id_meniu );

ALTER TABLE MENIURI ADD CONSTRAINT meniuri_nume_meniu_un UNIQUE ( nume_meniu );


------------------CATEGORII MENIU----------
CREATE TABLE CATEGORII (
    id_categorie        NUMBER(2) NOT NULL,
    nume_categorie      VARCHAR2(30) NOT NULL,
    meniuri_nr_meniu    NUMBER(2) NOT NULL,
    data_creare         DATE DEFAULT sysdate
);

ALTER TABLE categorii
    ADD CONSTRAINT nume_categorie_ck CHECK ( 
    REGEXP_LIKE ( nume_categorie,'^[A-Z][a-z]+([\ \-][a-z]+)*$' ) );

ALTER TABLE categorii ADD CONSTRAINT categorii_pk PRIMARY KEY ( id_categorie );

ALTER TABLE categorii ADD CONSTRAINT categorii_nr_meniu_nume_cat_un UNIQUE ( meniuri_nr_meniu, nume_categorie );

----------------------CATEGORII PRODUSE---------------

CREATE TABLE CATEGORII_PRODUSE (
    categorii_nr_categorie  NUMBER(2) NOT NULL,
    produse_nr_produs       number(4) NOT NULL
);


ALTER TABLE CATEGORII_PRODUSE ADD CONSTRAINT categorii_produse_pk PRIMARY KEY ( categorii_nr_categorie,
                                                                                produse_nr_produs );   

-------------------PRODUSE----------------------------
CREATE TABLE PRODUSE (
        id_produs               NUMBER(2) NOT NULL,
        nume_produs             VARCHAR2(50) NOT NULL,
        tip_produs              VARCHAR2(10) NOT NULL,
        pret                    NUMBER(3) NOT NULL,
        stare                   VARCHAR2(7) DEFAULT 'ACTIV' NOT NULL,
        data_creare             DATE DEFAULT sysdate,
        tipuri_aliment_id_tip   NUMBER(2)
);

ALTER TABLE produse
    ADD CONSTRAINT nume_produs_ck CHECK ( REGEXP_LIKE ( nume_produs,
                                                        '^[A-Z][a-z]+([\ \-]([A-Z]?[a-z]+|[0-9]+(\.[0-9]*[1-9])?))*$' ) );
                                                                
ALTER TABLE produse
    ADD CHECK ( tip_produs IN ( 'bautura', 'preparat' ) );

ALTER TABLE produse ADD CONSTRAINT pret_ck CHECK ( pret > 0 );

ALTER TABLE produse
    ADD CONSTRAINT stare_ck CHECK ( stare IN ( 'ACTIV', 'INACTIV' ) );

ALTER TABLE produse ADD CONSTRAINT produse_pk PRIMARY KEY ( id_produs );


---------------------TIPURI ALIMENT-----------
CREATE TABLE TIPURI_ALIMENT (
    id_tip      NUMBER(2) NOT NULL,
    nume_tip    VARCHAR2(20) NOT NULL
);

ALTER TABLE tipuri_aliment
    ADD CONSTRAINT nume_tip_ck CHECK ( REGEXP_LIKE ( nume_tip,
                                                     '^[a-z]+\-?[a-z]+$' ) );
                                            
ALTER TABLE tipuri_aliment ADD CONSTRAINT tipuri_aliment_pk PRIMARY KEY ( id_tip );    

ALTER TABLE tipuri_aliment ADD CONSTRAINT tipuri_aliment_nume_tip_un UNIQUE ( nume_tip );


--------------------STOCURI PRODUS------------
drop table stocuri_produs;
CREATE TABLE stocuri_produs (
    stoc_produs             NUMBER(3) NOT NULL,
    produse_id_produs     NUMBER(4) NOT NULL
);

ALTER TABLE stocuri_produs ADD CONSTRAINT stocuri_produs_ck CHECK (stoc_produs > 0);

ALTER TABLE stocuri_produs ADD CONSTRAINT produse_id_produs_pk PRIMARY KEY (produse_id_produs);

-------------------INGREDIENTE------------------
CREATE TABLE INGREDIENTE (
    id_ingredient           NUMBER(4) NOT NULL,
    nume_ingredient         VARCHAR2(30) NOT NULL,
    stoc_ingredient         NUMBER(5, 2) NOT NULL,
    tipuri_aliment_id_tip   NUMBER(2)
);

ALTER TABLE ingrediente
    ADD CONSTRAINT nume_ingredient_ck CHECK ( REGEXP_LIKE ( nume_ingredient,
                                                            '^[a-z]+(\ [a-z]+)*$' ) );
                                                            
ALTER TABLE ingrediente ADD CONSTRAINT stoc_ingredient_ck CHECK ( stoc_ingredient > 0 );

ALTER TABLE ingrediente ADD CONSTRAINT ingrediente_pk PRIMARY KEY ( id_ingredient );

ALTER TABLE ingrediente ADD CONSTRAINT ingrediente_nume_ingr_un UNIQUE ( nume_ingredient);


------------------COMENZI-----------

CREATE TABLE COMENZI (
    id_comanda      NUMBER(5) NOT NULL,
    data_comanda    DATE DEFAULT sysdate NOT NULL,
    nr_masa         NUMBER(2)
);

ALTER TABLE comenzi ADD CONSTRAINT nr_masa_ck CHECK ( nr_masa > 0 );

ALTER TABLE comenzi ADD CONSTRAINT comenzi_pk PRIMARY KEY ( id_comanda );

--------------------RETETE------------
drop table retete;
CREATE TABLE RETETE (
    produse_id_produs     NUMBER(4) NOT NULL,
    ingrediente_id_ingr   NUMBER(4) NOT NULL,
    cantitate_ingr          NUMBER(4, 2) NOT NULL
);

ALTER TABLE retete ADD CONSTRAINT cantitate_ingr_ck CHECK ( cantitate_ingr > 0 );

ALTER TABLE retete ADD CONSTRAINT retete_pk PRIMARY KEY ( produse_id_produs,
                                                          ingrediente_id_ingr );
                  
-------------------PRODUSE COMENZI---------

CREATE TABLE PRODUSE_COMENZI (
    nr_produse_comandate    NUMBER(2) NOT NULL,
    produse_nr_produs       NUMBER(4) NOT NULL,
    comenzi_id_comanda      NUMBER(9) NOT NULL
);

ALTER TABLE produse_comenzi ADD CONSTRAINT nr_produse_comandate_ck CHECK ( nr_produse_comandate > 0 );

ALTER TABLE produse_comenzi ADD CONSTRAINT produse_comenzi_pk PRIMARY KEY ( produse_nr_produs,
                                                                            comenzi_id_comanda );
-----------CONSTRANGERI FOREIGN KEY---------------
----CATEGORII MENIU-----

ALTER TABLE CATEGORII ADD CONSTRAINT categ_meniuri_fk 
    FOREIGN KEY ( meniuri_nr_meniu) REFERENCES MENIURI(id_meniu);
 
    
----CATEGORII PRODUSE-----

ALTER TABLE CATEGORII_PRODUSE ADD CONSTRAINT categorii_produse_categorii_fk 
    FOREIGN KEY (categorii_nr_categorie) REFERENCES categorii( id_categorie );
    
ALTER TABLE CATEGORII_PRODUSE ADD CONSTRAINT ctg_nume_prod_fk 
    FOREIGN KEY (produse_nr_produs) REFERENCES produse( id_produs );
    
    
----INGREDIENTE----
ALTER TABLE INGREDIENTE ADD CONSTRAINT ingrediente_tipuri_aliment_fk
    FOREIGN KEY (tipuri_aliment_id_tip) REFERENCES tipuri_aliment(id_tip);
  
    
----PRODUSE-------
ALTER TABLE PRODUSE ADD CONSTRAINT produse_tipuri_aliment_fk 
    FOREIGN KEY (tipuri_aliment_id_tip) REFERENCES tipuri_aliment(id_tip)
        ON DELETE SET NULL
    NOT DEFERRABLE;


----RETETE------
ALTER TABLE retete
    ADD CONSTRAINT retete_ingrediente_fk FOREIGN KEY ( ingrediente_id_ingr )
        REFERENCES ingrediente ( id_ingredient )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE retete
    ADD CONSTRAINT retete_produse_fk FOREIGN KEY ( produse_id_produs )
        REFERENCES produse ( id_produs )
            ON DELETE CASCADE
    NOT DEFERRABLE;
    
--PRODUSE COMENZI--
ALTER TABLE produse_comenzi
    ADD CONSTRAINT produse_comenzi_comenzi_fk FOREIGN KEY ( comenzi_id_comanda )
        REFERENCES comenzi ( id_comanda )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE produse_comenzi
    ADD CONSTRAINT produse_comenzi_produse_fk FOREIGN KEY ( produse_nr_produs )
        REFERENCES produse ( id_produs )
    NOT DEFERRABLE;
    
----STOCURI PRODUS-----
ALTER TABLE stocuri_produs
    ADD CONSTRAINT stocuri_produs_produse_fk FOREIGN KEY ( produse_id_produs )
        REFERENCES produse ( id_produs )
            ON DELETE CASCADE
    NOT DEFERRABLE;

--TRIGGERS---    
CREATE OR REPLACE TRIGGER trg_data_creare_categorii 
    BEFORE INSERT ON categorii 
    FOR EACH ROW 
BEGIN
	IF ( :new.data_creare < SYSDATE )
	THEN
		RAISE_APPLICATION_ERROR( -20001,
			'Data invalida: ' || TO_CHAR( :new.data_creare, 'DD.MM.YYYY HH24:MI:SS' ) || 'trebuie sa fie egala sau mai mare decat data curenta.' );
	END IF;
END; 
/    
    
CREATE OR REPLACE TRIGGER trg_data_creare_meniuri 
    BEFORE INSERT ON meniuri 
    FOR EACH ROW 
BEGIN
	IF ( :new.data_creare < SYSDATE )
	THEN
		RAISE_APPLICATION_ERROR( -20001,
			'Data invalida: ' || TO_CHAR( :new.data_creare, 'DD.MM.YYYY HH24:MI:SS' ) || 'trebuie sa fie egala sau mai mare decat data curenta.' );
	END IF;
END; 
/    
    
CREATE OR REPLACE TRIGGER trg_data_creare_produse 
    BEFORE INSERT ON produse 
    FOR EACH ROW 
BEGIN
	IF ( :new.data_creare < SYSDATE )
	THEN
		RAISE_APPLICATION_ERROR( -20001,
			'Data invalida: ' || TO_CHAR( :new.data_creare, 'DD.MM.YYYY HH24:MI:SS' ) || 'trebuie sa fie egala sau mai mare decat data curenta.' );
	END IF;
END; 
/    
    
-----SEQUENCES AND TRIGGERS-----
CREATE SEQUENCE categorii_id_categorie_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER categorii_id_categorie_trg BEFORE
    INSERT ON categorii
    FOR EACH ROW
    WHEN (new.id_categorie IS NULL)
BEGIN
    :new.id_categorie := CATEGORII_ID_CATEGORIE_SEQ.nextval;
END;
/

CREATE SEQUENCE ingrediente_id_ingredient_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER ingrediente_id_ingredient_trg BEFORE
    INSERT ON ingrediente
    FOR EACH ROW
    WHEN ( new.id_ingredient IS NULL )
BEGIN
    :new.id_ingredient := ingrediente_id_ingredient_seq.nextval;
END;
/


CREATE SEQUENCE meniuri_id_meniu_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER meniuri_id_meniu_trg BEFORE
    INSERT ON meniuri
    FOR EACH ROW
    WHEN ( new.id_meniu IS NULL )
BEGIN
    :new.id_meniu := meniuri_id_meniu_seq.nextval;
END;
/


CREATE SEQUENCE produse_id_produs_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER produse_id_produs_trg BEFORE
    INSERT ON produse
    FOR EACH ROW
    WHEN ( new.id_produs IS NULL )
BEGIN
    :new.id_produs := produse_id_produs_seq.nextval;
END;
/


CREATE SEQUENCE tipuri_aliment_id_tip_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER tipuri_aliment_id_tip_trg BEFORE
    INSERT ON tipuri_aliment
    FOR EACH ROW
    WHEN ( new.id_tip IS NULL )
BEGIN
    :new.id_tip := tipuri_aliment_id_tip_seq.nextval;
END;
/


