       IDENTIFICATION DIVISION.
       PROGRAM-ID. Calculo-de-equacao-2-grau.
       ENVIRONMENT DIVISION.

       special-names.
           decimal-point is comma.

       DATA DIVISION.

       WORKING-STORAGE SECTION.

       01 DADOS.
           02 A          PIC 9(03)v99.
           02 B          PIC 9(03)v99.
           02 C          PIC 9(03)v99.
           02 x          PIC 9(03)v999.
           02 x2         PIC 9(03)V999.
           02 DELTA      PIC S9(03)V999.

       01 MENSAGENS-DE-TELA.
           02 MENSAG1    PIC X(100) VALUE
                "DIGITE 3 NUMEROS PARA REALIZAR O CALCULO DA EQUACAO".
           02 MENSAG2    PIC X(10) VALUE
                "A: ".
           02 MENSAG3    PIC X(10) VALUE
                "B: ".
           02 MENSAG4    PIC X(10) VALUE
                "C: ".
           02 RESULTADO  PIC X(18) VALUE
                "RESULTADO DE x1: ".
           02 RESULTADO2 PIC X(18) VALUE
                "RESULTADO DE x2: ".
           02 RAIZ-NEG   PIC X(20) VALUE
                "SUA RAIZ E NEGATIVA".
           02 FIM        PIC X(20) VALUE
                "END RUN".
           02 MENSAG5    PIC X(30) VALUE SPACE.

       01 DATA-DO-SISTEMA.
           02 ANO        PIC 9(02) VALUE ZEROS.
           02 MES        PIC 9(02) VALUE ZEROS.
           02 DIA        PIC 9(02) VALUE ZEROS.

       SCREEN SECTION.
       01 TELA01.
           02 LINE 02 COLUMN 05 PIC 9(02)/ USING DIA.
           02 LINE 02 COLUMN 08 PIC 9(02)/ USING MES.
           02 LINE 02 COLUMN 11 PIC 9(02)/ USING ANO.
           02 LINE 02 COLUMN 28 VALUE
              "CALCULO DA EQUACAO DE 2 GRAU".

       PROCEDURE DIVISION.
           inicio.
               ACCEPT DATA-DO-SISTEMA FROM DATE.
               DISPLAY ERASE AT 0101.
               DISPLAY TELA01 AT 0101.
           entrada.
               DISPLAY MENSAG1 AT 0515.
               DISPLAY MENSAG2 AT 0615.
               ACCEPT A        AT 0620.
               DISPLAY MENSAG3 AT 0715.
               ACCEPT B        AT 0720.
               DISPLAY MENSAG4 AT 0815.
               ACCEPT C        AT 0820.
           calcula.
               COMPUTE DELTA=(B**2)-(4*A*C).
               IF DELTA<0
                   DISPLAY RAIZ-NEG AT 1325
               ELSE
                   COMPUTE x=(-B - FUNCTION sqrt(DELTA))/(2*A)
                   COMPUTE x2=(-B + FUNCTION sqrt(DELTA))/(2*A)
                   DISPLAY RESULTADO  AT 1015
                   DISPLAY x          AT 1035
                   DISPLAY RESULTADO2 AT 1115
                   DISPLAY x2         AT 1135.
               DISPLAY FIM     AT 1525.
           STOP RUN.


