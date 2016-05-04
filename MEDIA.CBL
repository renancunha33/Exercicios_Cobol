
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  CALCULO-DE-MEDIA.
       ENVIRONMENT DIVISION.
       special-names.
           decimal-point is comma.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 DADOS.
           02 NOTA1     PIC  9(02)V99.
           02 NOTA2     PIC  9(02)V99.
           02 MEDIA     PIC  9(02)V99.
           02 NOME      PIC  X(50).
       01 MENSAGENS-DE-TELA.
           02 MENSA0       PIC X(50) VALUE "DIGITE O NOME DO ALUNO:".
           02 MENSA1       PIC X(50) VALUE "DIGITE A NOTA 1:".
           02 MENSA2       PIC X(50) VALUE "DIGITE A NOTA 2:".
           02 MENSA3       PIC X(50) VALUE "A MEDIA E:".
           02 MENSA4       PIC X(50) VALUE "FIM DO PROGRAMA".

       01 DATA-DO-SISTEMA.
          02 ANO           PIC 9(02) VALUE ZEROS.
          02 MES           PIC 9(02) VALUE ZEROS.
          02 DIA           PIC 9(02) VALUE ZEROS.
       SCREEN SECTION.
       01 TELA01.
          02 LINE 02 COLUMN 05 PIC 9(02)/ USING DIA.
          02 LINE 02 COLUMN 08 PIC 9(02)/ USING MES.
          02 LINE 02 COLUMN 11 PIC 9(02)  USING ANO.
          02 LINE 02 COLUMN VALUE "CALCULO DA MEDIA DE NOTAS".
       PROCEDURE DIVISION.
           inicio.
                DISPLAY ERASE AT 0101.
                ACCEPT DATA-DO-SISTEMA FROM DATE.
                DISPLAY TELA01 AT 0101.
           entrada.
                DISPLAY MENSA0 AT 1010.
                ACCEPT NOME    AT 1050.
                DISPLAY MENSA1 AT 1410.
                ACCEPT NOTA1   AT 1450.
                DISPLAY MENSA2 AT 1810.
                ACCEPT NOTA2   AT 1850.
                DISPLAY MENSA3 AT 2210.
                   
           calcula.
                COMPUTE MEDIA=(NOTA1+NOTA2)/2.
                DISPLAY MEDIA AT 2250.
                DISPLAY MENSA4 AT 2610. 
                STOP RUN.


