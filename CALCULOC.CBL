       IDENTIFICATION DIVISION.
             PROGRAM-ID. CUSTO-DE-DISTRIBUICAO.
             ENVIRONMENT DIVISION.
             special-names.
             decimal-point is comma.
       DATA DIVISION.
           WORKING-STORAGE SECTION.

           01 DADOS.
                02 MERCADORIA PIC X(20).
                02 QTD PIC 9(4).
                02 PRECOUNITARIO PIC 9(4)V99.
                02 PRECOTOTAL PIC 9(6)V99.
                02 PRECOVENDA PIC 9(7)V99.


           01 MENSAGENS-DE-TELA.
                02 MENSA1 PIC X(30) VALUE "DIGITE O NOME: ".
                02 MENSA2 PIC X(30) VALUE "DIGITE QTD.: ".
                02 MENSA3 PIC X(30) VALUE "DIGITE O PRE€O: ".
                02 MENSA4 PIC X(30) VALUE "VALOR TOTAL DE MERCADORIA: ".
                02 MENSA5 PIC X(30) VALUE "PRE€O DE VENDA COM 30%: ".
                02 MENSA6 PIC X(30) VALUE "FIM DE PROGRAMA".

           01 DATA-DO-SISTEMA.
                02 ANO PIC 9(02) VALUE ZEROS.
                02 MES PIC 9(02) VALUE ZEROS.
                02 DIA PIC 9(02) VALUE ZEROS.

           SCREEN SECTION.

           01 TELA01.
                02 LINE 02 COLUMN 05 PIC 9(02)/ USING DIA.
                02 LINE 02 COLUMN 08 PIC 9(02)/ USING MES.
                02 LINE 02 COLUMN 11 PIC 9(02)/ USING ANO.

                02 LINE 02 COLUMN 28 VALUE "CALCULO DE CUSTOS".

           PROCEDURE DIVISION.

               INICIO.

                   DISPLAY ERASE AT 0101.

                   ACCEPT DATA-DO-SISTEMA FROM DATE.

                   DISPLAY TELA01 AT 0101.

               ENTRADA.
                   DISPLAY MENSA1 AT 1010.
                   ACCEPT MERCADORIA AT 1030.
                   DISPLAY MENSA2 AT 1410.
                   ACCEPT QTD AT 1430.
                   DISPLAY MENSA3 AT 1810.
                   ACCEPT PRECOUNITARIO AT 1830.
                   DISPLAY MENSA4 AT 2210.

                   DISPLAY MENSA5 AT 2610.



               CALCULA.
                   COMPUTE PRECOTOTAL = QTD*PRECOUNITARIO.
                   DISPLAY PRECOTOTAL AT 2230.

                   COMPUTE PRECOVENDA = PRECOTOTAL * 1,3.
                   DISPLAY PRECOVENDA AT 2630.

                   DISPLAY MENSA6 AT 3010.
                   STOP RUN.


