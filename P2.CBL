
       IDENTIFICATION DIVISION.

       PROGRAM-ID. AGENCIA-DE-EMPREGO.

       ENVIRONMENT DIVISION.
           special-names.
           decimal-point is comma.

       DATA DIVISION.

           WORKING-STORAGE SECTION.

           01 DADOS.

               02 NOME PIC X(40).
               02 SEXO PIC X(01).
               02 SALARIO PIC 9(06)v99.
               02 IDADE PIC 9(03).
               02 CODIGO PIC 9(01).
               02 X    PIC 9(02).


           01 MENSAGENS-DE-TELA.

               02 MENSA1 PIC X(50) VALUE "DIGITE NOME: ".
               02 MENSA2 PIC X(50) VALUE "DIGITE SEXO: ".
               02 MENSA3 PIC X(50) VALUE "DIGITE SALARIO: ".
               02 MENSA4 PIC X(50) VALUE "DIGITE IDADE: ".
               02 MENSA5 PIC X(50) VALUE "DIGITE CODIGO PROFISSAO: ".



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

                DISPLAY "CADASTRO" AT 0115.

           ENTRADA.

                   DISPLAY MENSA1 AT 0515.

                   ACCEPT NOME AT 0535.
                   IF NOME = " " THEN
                    DISPLAY "VOCE NAO DIGITOU UM NOME"
                   STOP RUN.

                   DISPLAY MENSA2 AT 0715.

                   ACCEPT SEXO AT 0735.

                   DISPLAY MENSA3 AT 0915.

                   ACCEPT SALARIO AT 0935.

                   DISPLAY MENSA4 AT 1115.

                   ACCEPT IDADE AT 1135.

                   DISPLAY "1 - CARTOGRAFO"            AT 1315.
                   DISPLAY "2 - ASSISTENTE SOCIAL"     AT 1415.
                   DISPLAY "3 - PSICOLOGO"             AT 1515.
                   DISPLAY "4 - ATENDENTE"             AT 1615.
                   DISPLAY "5 - SECRETARIA BILINGUE"   AT 1715.
                   DISPLAY "6 - GEOLOGO"               AT 1815.



                   DISPLAY MENSA5 AT 2015.

                   ACCEPT CODIGO AT 2045.


        CALCULA.

                   DISPLAY NOME AT 2201.
                   DISPLAY " " AT  2301.

                   IF NOME = " "
                       DISPLAY "VOCE NAO DIGITOU UM NOME"
                   ELSE
                   IF CODIGO=1 THEN

                   DISPLAY "CARTOGRAFO"

                   ELSE

                   IF CODIGO=2 THEN

                   DISPLAY "ASSISTENTE SOCIAL"

                   ELSE

                   IF CODIGO=3 THEN

                   DISPLAY "PSICOLOGO"

                   ELSE

                   IF CODIGO=4 THEN

                   DISPLAY "ATENDENTE"

                   IF CODIGO=5 THEN

                   DISPLAY "SECRETARIA BILINGUE"

                   ELSE

                   DISPLAY "GEOLOGO".

           STOP RUN.














