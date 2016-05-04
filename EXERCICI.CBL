       IDENTIFICATION DIVISION.
           PROGRAM-ID. CALCULO-SOMA-SUBTR-MULT-DIV.

       ENVIRONMENT DIVISION.
           special-names.
           decimal-point is comma.

       DATA DIVISION.

           WORKING-STORAGE SECTION.

           01 DADOS.
               02 A PIC 9(03).
               02 B PIC 9(03).
               02 RESULT PIC 9(10).

           01 MENSAGENS-DE-TELA.

               02 MENSA1   PIC X(30) VALUE "DIGITE O VALOR DE A".
               02 MENSA2   PIC X(30) VALUE "DIGITE O VALOR DE B".
               02 MENSA3   PIC X(30) VALUE "SOMA: ".
               02 MENSA4   PIC X(30) VALUE "SUBTRACAO: ".
               02 MENSA5   PIC X(30) VALUE "MULTIPLICACAO: ".
               02 MENSA6   PIC X(30) VALUE "DIVISAO: ".

           01 DATA-DO-SISTEMA.

               02 ANO  PIC 9(02) VALUE ZEROS.
               02 MES  PIC 9(02) VALUE ZEROS.
               02 DIA  PIC 9(02) VALUE ZEROS.

           SCREEN SECTION.

           01 TELA01.

               02 LINE 02 COLUMN 05 PIC 9(02)/ USING DIA.
               02 LINE 02 COLUMN 08 PIC 9(02)/ USING MES.
               02 LINE 02 COLUMN 11 PIC 9(02)  USING ANO.

               02 LINE 02 COLUMN 28 VALUE
               "CALCULO ARITMETICO DE DOIS NUMEROS".

       PROCEDURE DIVISION.

           inicio.

               DISPLAY ERASE AT 0101.

               ACCEPT DATA-DO-SISTEMA FROM DATE.

               DISPLAY TELA01 AT 0101.

           entrada.

               DISPLAY MENSA1 AT 1010.
               ACCEPT A       AT 1030.
               DISPLAY MENSA2 AT 1410.
               ACCEPT B AT 1430.
               DISPLAY MENSA3 AT 2010.
               DISPLAY MENSA4 AT 2210.
               DISPLAY MENSA5 AT 2410.
               DISPLAY MENSA6 AT 2610.

           calcula.

               COMPUTE RESULT = A+B.
               DISPLAY RESULT AT 1930.

               COMPUTE RESULT = (A)-(B).
               DISPLAY RESULT AT 2130.

               COMPUTE RESULT = A*B.
               DISPLAY RESULT AT 2330.

               COMPUTE RESULT = A/B.
               DISPLAY RESULT AT 2530.

               STOP RUN.




