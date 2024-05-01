       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG40.

       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           COPY "CSELEC.cob".

       DATA DIVISION.
       FILE SECTION.
           COPY "CARQF.cob".

       WORKING-STORAGE SECTION.

       01  FINAL-ARQUIVO PIC X.

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           OPEN INPUT ARQUIVO-FUNCIONARIO.

           MOVE "N" TO FINAL-ARQUIVO.
           PERFORM LEIA-PROXIMO-REGISTRO.
           PERFORM EXIBA-REGISTROS
               UNTIL FINAL-ARQUIVO = "S"


           CLOSE ARQUIVO-FUNCIONARIO.

       PROGRAM-DONE.
           STOP RUN.

       LEIA-PROXIMO-REGISTRO.

           READ ARQUIVO-FUNCIONARIO RECORD AT END
           MOVE "S" TO FINAL-ARQUIVO.

       EXIBA-REGISTROS.
           PERFORM EXIBA-CAMPOS.
           PERFORM LEIA-PROXIMO-REGISTRO.

       EXIBA-CAMPOS.

           DISPLAY "".
           DISPLAY "CODIGO.....: " FUNCIONARIO-CODIGO.
           DISPLAY "NOME.......: " FUNCIONARIO-NOME.
           DISPLAY "ENDERECO...: " FUNCIONARIO-ENDERECO.
           DISPLAY "TELEFONE...: " FUNCIONARIO-TELEFONE.
           DISPLAY "EMAIL......: " FUNCIONARIO-EMAIL.
           DISPLAY "====================================".
