
       IDENTIFICATION DIVISION.

       PROGRAM-ID. FIBONACCI.

       ENVIRONMENT DIVISION.
           special-names.
           decimal-point is comma.

       DATA DIVISION.

           WORKING-STORAGE SECTION.

           01 DADOS.

               02 N PIC 9(04).

               02 X1 PIC 9(03) VALUE ZEROS.
               02 X2 PIC 9(03) VALUE ZEROS.
               02 X3 PIC 9(03) VALUE ZEROS.
               02 I  PIC s9(03) VALUE ZEROS.
               02 Z  PIC s9(03) VALUE ZEROS.
           01 MENSAGENS-DE-TELA.

               02 MENSA1 PIC X(30) VALUE "DIGITE N: ".
               02 MENSA2 PIC X(30) VALUE "SEQUENCIA: ".

           01 DATA-DO-SISTEMA.

               02 ANO  PIC 9(02) VALUE ZEROS.
               02 MES  PIC 9(02) VALUE ZEROS.
               02 DIA  PIC 9(02) VALUE ZEROS.


       SCREEN SECTION.

       01 TELA01.
           02 LINE 02 COLUMN 05 PIC 9(02)/ USING DIA.
           02 LINE 02 COLUMN 08 PIC 9(02)/ USING MES.
           02 LINE 02 COLUMN 11 PIC 9(02) USING ANO.
           02 LINE 02 COLUMN 28 VALUE "FIBONACCI".


       PROCEDURE DIVISION.

           INICIO.

                ACCEPT DATA-DO-SISTEMA FROM DATE.

                DISPLAY ERASE AT 0101.

                DISPLAY TELA01 AT 0101.

           ENTRADA.

                   DISPLAY MENSA1 AT 0515.

                   ACCEPT N AT 0535.

                   DISPLAY MENSA2 AT 0715.

               CALCULA.

                   COMPUTE X1 = 0.
                   COMPUTE X2 = 1.


                   IF N<=0 THEN

                   DISPLAY "Voce digitou 0"

                   ELSE

                       COMPUTE Z = N - 1.
                       IF Z > 0 THEN
                           DISPLAY 000 AT 0801
                           DISPLAY " " AT 0901

                           PERFORM VARYING I FROM 1 BY 1 UNTIL I>Z

                               COMPUTE X3=X1

                               COMPUTE X1=X1+X2

                               COMPUTE X2=X3

                               DISPLAY X1


                           END-PERFORM.

               STOP RUN.














