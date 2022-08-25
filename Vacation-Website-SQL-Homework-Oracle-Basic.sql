--------------------------------------------------------
--  File created - Salý-Nisan-05-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ARAMA
--------------------------------------------------------

  CREATE TABLE "ARAMA" 
   (	"SEYAHAT_NOKTASI" VARCHAR2(20), 
	"BASLANGIC_TARIH" DATE, 
	"BITIS_TARIH" DATE, 
	"ODA_SAYI" NUMBER(1,0), 
	"COCUK_SAYI" NUMBER(1,0), 
	"ARAMA_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table BULUNMA
--------------------------------------------------------

  CREATE TABLE "BULUNMA" 
   (	"OTEL_ISMI" VARCHAR2(20), 
	"PUAN" NUMBER(1,0), 
	"MERKEZ_UZAK" NUMBER(2,0), 
	"SEYAHAT_NOKTASI" VARCHAR2(20), 
	"BULUNMA_ID" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table CINSIYET
--------------------------------------------------------

  CREATE TABLE "CINSIYET" 
   (	"CINSIYET_IDS" NUMBER(1,0), 
	"CINSIYET_TURU" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table DIL
--------------------------------------------------------

  CREATE TABLE "DIL" 
   (	"DIL_IDS" NUMBER, 
	"DIL" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table KISISEL_BILGILER
--------------------------------------------------------

  CREATE TABLE "KISISEL_BILGILER" 
   (	"ID" NUMBER(10,0), 
	"KULLANICI_ISIM" VARCHAR2(20), 
	"KULLANICI_SOYAD" VARCHAR2(20), 
	"KULLANICI_ADRES" VARCHAR2(100), 
	"DOGUM" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table KISISEL_KAYIT
--------------------------------------------------------

  CREATE TABLE "KISISEL_KAYIT" 
   (	"EMAIL" VARCHAR2(20), 
	"KIMLIKNO" NUMBER(11,0), 
	"TELNUMARA" NUMBER(11,0), 
	"ULKE_ID" NUMBER(1,0), 
	"CINSIYET_ID" NUMBER(1,0), 
	"KULLANICI_SIFRE" VARCHAR2(25), 
	"KISISEL_K_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table KISISEL_TERCIHLER
--------------------------------------------------------

  CREATE TABLE "KISISEL_TERCIHLER" 
   (	"PARA_ID" NUMBER(3,0), 
	"DIL_ID" NUMBER(3,0), 
	"ODEME_ID" NUMBER(1,0), 
	"KISISEL_T_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table ODEME_TURU
--------------------------------------------------------

  CREATE TABLE "ODEME_TURU" 
   (	"ODEME_IDS" NUMBER(1,0), 
	"ODEME_TÜRÜ" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table PARA
--------------------------------------------------------

  CREATE TABLE "PARA" 
   (	"PARA_IDS" NUMBER(1,0), 
	"PARA_ISMI" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table ULKE
--------------------------------------------------------

  CREATE TABLE "ULKE" 
   (	"ULKE_IDS" NUMBER(1,0), 
	"ULKE_ISMI" VARCHAR2(20)
   ) ;
REM INSERTING into ARAMA
SET DEFINE OFF;
Insert into ARAMA (SEYAHAT_NOKTASI,BASLANGIC_TARIH,BITIS_TARIH,ODA_SAYI,COCUK_SAYI,ARAMA_ID) values ('Kütahya',to_date('25/08/2021','DD/MM/RRRR'),to_date('25/08/2022','DD/MM/RRRR'),'1','0','2');
Insert into ARAMA (SEYAHAT_NOKTASI,BASLANGIC_TARIH,BITIS_TARIH,ODA_SAYI,COCUK_SAYI,ARAMA_ID) values ('Eskiþehir',to_date('26/09/2021','DD/MM/RRRR'),to_date('26/09/2022','DD/MM/RRRR'),'2','2','1');
REM INSERTING into BULUNMA
SET DEFINE OFF;
Insert into BULUNMA (OTEL_ISMI,PUAN,MERKEZ_UZAK,SEYAHAT_NOKTASI,BULUNMA_ID) values ('Kütahyalýlar','1','1','Kütahya','1');
Insert into BULUNMA (OTEL_ISMI,PUAN,MERKEZ_UZAK,SEYAHAT_NOKTASI,BULUNMA_ID) values ('Eskiþehirliler','4','2','Eskiþehir','2');
REM INSERTING into CINSIYET
SET DEFINE OFF;
Insert into CINSIYET (CINSIYET_IDS,CINSIYET_TURU) values ('1','Erkek');
Insert into CINSIYET (CINSIYET_IDS,CINSIYET_TURU) values ('2','Kadýn');
Insert into CINSIYET (CINSIYET_IDS,CINSIYET_TURU) values ('3','Diðer');
REM INSERTING into DIL
SET DEFINE OFF;
Insert into DIL (DIL_IDS,DIL) values ('1','Turkce');
Insert into DIL (DIL_IDS,DIL) values ('2','Azerbaycan Turkcesi');
REM INSERTING into KISISEL_BILGILER
SET DEFINE OFF;
Insert into KISISEL_BILGILER (ID,KULLANICI_ISIM,KULLANICI_SOYAD,KULLANICI_ADRES,DOGUM) values ('1','Mehmet','Duyar','Kütahya Merkez Deliveysel Mah Kolonya Caddesi No:55',to_date('11/11/1990','DD/MM/RRRR'));
Insert into KISISEL_BILGILER (ID,KULLANICI_ISIM,KULLANICI_SOYAD,KULLANICI_ADRES,DOGUM) values ('2','Ayþe','Gürbüz','Eskiþehir Merkez Dede Mah Kafagüzel Sokak No:26',to_date('05/02/1991','DD/MM/RRRR'));
REM INSERTING into KISISEL_KAYIT
SET DEFINE OFF;
Insert into KISISEL_KAYIT (EMAIL,KIMLIKNO,TELNUMARA,ULKE_ID,CINSIYET_ID,KULLANICI_SIFRE,KISISEL_K_ID) values ('Mehmet@mail.com','40111526598','5422568542','1','1','123456','1');
Insert into KISISEL_KAYIT (EMAIL,KIMLIKNO,TELNUMARA,ULKE_ID,CINSIYET_ID,KULLANICI_SIFRE,KISISEL_K_ID) values ('Ayþe@mail.com','40135748698','5423668542','1','2','654321','2');
REM INSERTING into KISISEL_TERCIHLER
SET DEFINE OFF;
Insert into KISISEL_TERCIHLER (PARA_ID,DIL_ID,ODEME_ID,KISISEL_T_ID) values ('1','1','1','1');
Insert into KISISEL_TERCIHLER (PARA_ID,DIL_ID,ODEME_ID,KISISEL_T_ID) values ('1','1','2','2');
REM INSERTING into ODEME_TURU
SET DEFINE OFF;
Insert into ODEME_TURU (ODEME_IDS,"ODEME_TÜRÜ") values ('1','Kredi Kartý');
Insert into ODEME_TURU (ODEME_IDS,"ODEME_TÜRÜ") values ('2','Havale');
REM INSERTING into PARA
SET DEFINE OFF;
Insert into PARA (PARA_IDS,PARA_ISMI) values ('1','TL');
Insert into PARA (PARA_IDS,PARA_ISMI) values ('2','EURO');
Insert into PARA (PARA_IDS,PARA_ISMI) values ('3','DOLAR');
REM INSERTING into ULKE
SET DEFINE OFF;
Insert into ULKE (ULKE_IDS,ULKE_ISMI) values ('1','Türkiye');
Insert into ULKE (ULKE_IDS,ULKE_ISMI) values ('2','Kuzey Kýbrýs');
Insert into ULKE (ULKE_IDS,ULKE_ISMI) values ('3','Azerbaycan');
--------------------------------------------------------
--  DDL for Index ARAMA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ARAMA_PK" ON "ARAMA" ("ARAMA_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BULUNMA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BULUNMA_PK" ON "BULUNMA" ("BULUNMA_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CINSIYET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CINSIYET_PK" ON "CINSIYET" ("CINSIYET_IDS") 
  ;
--------------------------------------------------------
--  DDL for Index DIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DIL_PK" ON "DIL" ("DIL_IDS") 
  ;
--------------------------------------------------------
--  DDL for Index KISISEL_BILGILER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KISISEL_BILGILER_PK" ON "KISISEL_BILGILER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index KISISEL_KAYIT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KISISEL_KAYIT_PK" ON "KISISEL_KAYIT" ("KISISEL_K_ID") 
  ;
--------------------------------------------------------
--  DDL for Index KISISEL_KAYIT_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "KISISEL_KAYIT_UK1" ON "KISISEL_KAYIT" ("EMAIL") 
  ;
--------------------------------------------------------
--  DDL for Index KISISEL_TERCIHLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KISISEL_TERCIHLER_PK" ON "KISISEL_TERCIHLER" ("KISISEL_T_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ODEME_TURU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ODEME_TURU_PK" ON "ODEME_TURU" ("ODEME_IDS") 
  ;
--------------------------------------------------------
--  DDL for Index PARA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PARA_PK" ON "PARA" ("PARA_IDS") 
  ;
--------------------------------------------------------
--  DDL for Index ULKE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ULKE_PK" ON "ULKE" ("ULKE_IDS") 
  ;
--------------------------------------------------------
--  DDL for Index ARAMA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ARAMA_PK" ON "ARAMA" ("ARAMA_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BULUNMA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BULUNMA_PK" ON "BULUNMA" ("BULUNMA_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CINSIYET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CINSIYET_PK" ON "CINSIYET" ("CINSIYET_IDS") 
  ;
--------------------------------------------------------
--  DDL for Index DIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DIL_PK" ON "DIL" ("DIL_IDS") 
  ;
--------------------------------------------------------
--  DDL for Index KISISEL_BILGILER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KISISEL_BILGILER_PK" ON "KISISEL_BILGILER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index KISISEL_KAYIT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KISISEL_KAYIT_PK" ON "KISISEL_KAYIT" ("KISISEL_K_ID") 
  ;
--------------------------------------------------------
--  DDL for Index KISISEL_KAYIT_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "KISISEL_KAYIT_UK1" ON "KISISEL_KAYIT" ("EMAIL") 
  ;
--------------------------------------------------------
--  DDL for Index KISISEL_TERCIHLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KISISEL_TERCIHLER_PK" ON "KISISEL_TERCIHLER" ("KISISEL_T_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ODEME_TURU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ODEME_TURU_PK" ON "ODEME_TURU" ("ODEME_IDS") 
  ;
--------------------------------------------------------
--  DDL for Index PARA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PARA_PK" ON "PARA" ("PARA_IDS") 
  ;
--------------------------------------------------------
--  DDL for Index ULKE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ULKE_PK" ON "ULKE" ("ULKE_IDS") 
  ;
--------------------------------------------------------
--  Constraints for Table ARAMA
--------------------------------------------------------

  ALTER TABLE "ARAMA" ADD CONSTRAINT "ARAMA_PK" PRIMARY KEY ("ARAMA_ID") ENABLE;
  ALTER TABLE "ARAMA" MODIFY ("ARAMA_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BULUNMA
--------------------------------------------------------

  ALTER TABLE "BULUNMA" ADD CONSTRAINT "PUAND" CHECK (PUAN>0 AND PUAN <= 5) ENABLE;
  ALTER TABLE "BULUNMA" ADD CONSTRAINT "BULUNMA_PK" PRIMARY KEY ("BULUNMA_ID") ENABLE;
  ALTER TABLE "BULUNMA" MODIFY ("BULUNMA_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CINSIYET
--------------------------------------------------------

  ALTER TABLE "CINSIYET" ADD CONSTRAINT "CINSIYET_PK" PRIMARY KEY ("CINSIYET_IDS") ENABLE;
  ALTER TABLE "CINSIYET" MODIFY ("CINSIYET_IDS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIL
--------------------------------------------------------

  ALTER TABLE "DIL" ADD CONSTRAINT "DIL_PK" PRIMARY KEY ("DIL_IDS") ENABLE;
  ALTER TABLE "DIL" MODIFY ("DIL" NOT NULL ENABLE);
  ALTER TABLE "DIL" MODIFY ("DIL_IDS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KISISEL_BILGILER
--------------------------------------------------------

  ALTER TABLE "KISISEL_BILGILER" ADD CONSTRAINT "KISISEL_BILGILER_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table KISISEL_KAYIT
--------------------------------------------------------

  ALTER TABLE "KISISEL_KAYIT" ADD CONSTRAINT "KISISEL_KAYIT_UK1" UNIQUE ("EMAIL") ENABLE;
  ALTER TABLE "KISISEL_KAYIT" ADD CONSTRAINT "KISISEL_KAYIT_PK" PRIMARY KEY ("KISISEL_K_ID") ENABLE;
  ALTER TABLE "KISISEL_KAYIT" MODIFY ("KISISEL_K_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KISISEL_TERCIHLER
--------------------------------------------------------

  ALTER TABLE "KISISEL_TERCIHLER" ADD CONSTRAINT "KISISEL_TERCIHLER_PK" PRIMARY KEY ("KISISEL_T_ID") ENABLE;
  ALTER TABLE "KISISEL_TERCIHLER" MODIFY ("KISISEL_T_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ODEME_TURU
--------------------------------------------------------

  ALTER TABLE "ODEME_TURU" ADD CONSTRAINT "ODEME_TURU_PK" PRIMARY KEY ("ODEME_IDS") ENABLE;
  ALTER TABLE "ODEME_TURU" MODIFY ("ODEME_IDS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PARA
--------------------------------------------------------

  ALTER TABLE "PARA" ADD CONSTRAINT "PARA_PK" PRIMARY KEY ("PARA_IDS") ENABLE;
  ALTER TABLE "PARA" MODIFY ("PARA_IDS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ULKE
--------------------------------------------------------

  ALTER TABLE "ULKE" ADD CONSTRAINT "ULKE_PK" PRIMARY KEY ("ULKE_IDS") ENABLE;
  ALTER TABLE "ULKE" MODIFY ("ULKE_IDS" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table KISISEL_KAYIT
--------------------------------------------------------

  ALTER TABLE "KISISEL_KAYIT" ADD CONSTRAINT "KISISEL_KAYIT_CSYET1" FOREIGN KEY ("CINSIYET_ID")
	  REFERENCES "CINSIYET" ("CINSIYET_IDS") ENABLE;
  ALTER TABLE "KISISEL_KAYIT" ADD CONSTRAINT "KISISEL_KAYIT_KB1" FOREIGN KEY ("KISISEL_K_ID")
	  REFERENCES "KISISEL_BILGILER" ("ID") ENABLE;
  ALTER TABLE "KISISEL_KAYIT" ADD CONSTRAINT "KISISEL_KAYIT_ULKE1" FOREIGN KEY ("ULKE_ID")
	  REFERENCES "ULKE" ("ULKE_IDS") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KISISEL_TERCIHLER
--------------------------------------------------------

  ALTER TABLE "KISISEL_TERCIHLER" ADD CONSTRAINT "KISISEL_TERCIHLER_DIL1" FOREIGN KEY ("DIL_ID")
	  REFERENCES "DIL" ("DIL_IDS") ENABLE;
  ALTER TABLE "KISISEL_TERCIHLER" ADD CONSTRAINT "KISISEL_TERCIHLER_ODEME1" FOREIGN KEY ("ODEME_ID")
	  REFERENCES "ODEME_TURU" ("ODEME_IDS") ENABLE;
  ALTER TABLE "KISISEL_TERCIHLER" ADD CONSTRAINT "KISISEL_TERCIHLER_PARA1" FOREIGN KEY ("PARA_ID")
	  REFERENCES "PARA" ("PARA_IDS") ENABLE;
