      *----------------------------------------------------------------*
      *  Purpose: CLASE 16 - EJERCICIO 1
      *
      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.

       PROGRAM-ID. CLVALTRAN.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       DECIMAL-POINT IS COMMA.


       DATA DIVISION.

        WORKING-STORAGE SECTION.

          01 WS-VAR-AUX.
           05 WS-VALIDAR-DATOS                 PIC X(01) VALUE SPACES.
             88 VALIDACION-OK                 VALUE 'S'.
             88 VALIDACION-NOTOK              VALUE 'N'.



       LINKAGE SECTION.



       01 LK-TRANSFERENCIAS.
          05 LK-NRO-OPERACION                  PIC 9(10).
          05 LK-FECHA                          PIC X(10).
          05 LK-CUENTA-DEBITO                  PIC X(22).
          05 LK-NRO-DOCUMENTO-D                PIC X(15).
          05 LK-CUENTA-CREDITO                 PIC X(22).
          05 LK-NRO-DOCUMENTO-C                PIC X(15).
          05 LK-COD-MONEDA                     PIC X(02).
          05 LK-IMPORTE                        PIC 9(10)V9(02).
          05 LK-COD-CONCEPTO                   PIC X(03).
          05 LK-OBSERVACION                    PIC X(11).






       PROCEDURE DIVISION USING LK-TRANSFERENCIAS.





      *----------------------------------------------------------------*

           PERFORM 1000-VALIDAR-DATOS
              THRU 1000-VALIDAR-DATOS-EXIT.



           STOP RUN.
      *----------------------------------------------------------------*
       1000-VALIDAR-DATOS.

           SET VALIDACION-OK TO TRUE.



           IF LK-FECHA  EQUAL SPACES
              SET VALIDACION-NOTOK TO TRUE
           END-IF.


           IF LK-CUENTA-DEBITO  EQUAL SPACES
              SET VALIDACION-NOTOK TO TRUE
           END-IF.

           IF LK-NRO-DOCUMENTO-D  EQUAL SPACES
              SET VALIDACION-NOTOK TO TRUE
           END-IF.

           IF LK-CUENTA-CREDITO  EQUAL SPACES
              SET VALIDACION-NOTOK TO TRUE
           END-IF.

           IF LK-COD-MONEDA  NOT EQUAL '01'
           AND LK-COD-MONEDA  NOT EQUAL '02'
              SET VALIDACION-NOTOK TO TRUE
           END-IF.

           IF LK-FECHA  EQUAL SPACES
              SET VALIDACION-NOTOK TO TRUE
           END-IF.


           IF LK-CUENTA-DEBITO  EQUAL SPACES
              SET VALIDACION-NOTOK TO TRUE
           END-IF.

           IF LK-NRO-DOCUMENTO-D  EQUAL SPACES
              SET VALIDACION-NOTOK TO TRUE
           END-IF.

           IF LK-CUENTA-CREDITO  EQUAL SPACES
              SET VALIDACION-NOTOK TO TRUE
           END-IF.

           IF LK-COD-MONEDA  NOT EQUAL '01'
           AND LK-COD-MONEDA  NOT EQUAL '02'
              SET VALIDACION-NOTOK TO TRUE
           END-IF.
           IF LK-FECHA  EQUAL SPACES
              SET VALIDACION-NOTOK TO TRUE
           END-IF.


           IF LK-CUENTA-DEBITO  EQUAL SPACES
              SET VALIDACION-NOTOK TO TRUE
           END-IF.

           IF LK-NRO-DOCUMENTO-D  EQUAL SPACES
              SET VALIDACION-NOTOK TO TRUE
           END-IF.

           IF LK-CUENTA-CREDITO  EQUAL SPACES
              SET VALIDACION-NOTOK TO TRUE
           END-IF.

           IF LK-COD-MONEDA  NOT EQUAL '01'
           AND LK-COD-MONEDA  NOT EQUAL '02'
              SET VALIDACION-NOTOK TO TRUE
           END-IF.
           IF LK-IMPORTE  IS NOT NUMERIC
           or LK-IMPORTE  <= ZEROS

              SET VALIDACION-NOTOK TO TRUE
           END-IF.

           EVALUATE LK-COD-CONCEPTO
             WHEN  'VAR'
             WHEN  'ALQ'
             WHEN  'FAC'
             WHEN  'HON'
                CONTINUE
             WHEN OTHER

               SET VALIDACION-NOTOK TO TRUE
           END-EVALUATE.


           IF VALIDACION-NOTOK
              DISPLAY 'La transferencia ' LK-NRO-OPERACION
              ' No paso la validacion  '
           ELSE

              DISPLAY 'La transferencia ' LK-NRO-OPERACION
              ' si paso la validacion  '
           END-IF.
       1000-VALIDAR-DATOS-EXIT.
           EXIT.
      *----------------------------------------------------------------*
       END PROGRAM CLVALTRAN.
