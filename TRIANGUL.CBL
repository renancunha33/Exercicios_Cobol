         IDENTIFICATION DIVISION.
             PROGRAM-ID. Calculo-area-circunferencia.
             ENVIRONMENT DIVISION.
             special-names.
               decimal-point is comma.
             DATA DIVISION.
             WORKING-STORAGE SECTION.
             01 DADOS.
               02 wRAIO PIC 9(03)v99.
               02 wAREA PIC 9(05)v99.
             01 MENSAGEMS-DE-TELA.
               02 MENSA1        PIC X(50) VALUE
                  "DIGITE O RAIO".
               02 MENSA2        PIC X(30) VALUE
                  "FIM DO PROGRAMA".
               02 MENSA3        PIC X(30) VALUE SPACE.

          01 DATA-DO-SISTEMA.
             02 ANO        PIC 9(02) VALUE ZEROS.
             02 MES        PIC 9(02) VALUE ZEROS.
             02 DIA        PIC 9(02) VALUE ZEROS.
          SCREEN SECTION.
          01 TELA01.
            02 LINE 02 COLUMN 05 PIC 9(02)/ USING DIA.
            02 LINE 02 COLUMN 08 PIC 9(02)/ USING MES.
            02 LINE 02 COLUMN 11 PIC 9(02) USING ANO.

            02 LINE 02 COLUMN 28 VALUE
            "CALCULO DA AREA DE UM CIRCULO".
            02 LINE 08 COLUMN 15 VALUE "RAIO".
            02 LINE 10 COLUMN 15 VALUE "AREA".

         PROCEDURE DIVISION.
            inicio.
              ACCEPT DATA-DO-SISTEMA FROM DATE.
              DISPLAY ERASE AT 0101.
              DISPLAY TELA01 AT 0101.
            entrada.
              DISPLAY MENSA1 AT 2030.
              ACCEPT wRAIO AT 0821.
              DISPLAY MENSA3 AT 1830.
            calcula.
            compute wArea=3,1416*(wRaio**2).
            Display wArea AT 1021.
            finaliza.
            DISPLAY MENSA2 AT 1830.
            stop" ".
                stop run.
