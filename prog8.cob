       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG3.
      *    PROGRAMA QUE DEMONSTRA O USO DE PARAGRAFOS
      *    PROGRAMA PARA SOMAR OS NUMEROS E EXIBIR RESULTADOS
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  PRIMEIRO-NUMERO PIC 9(2).
       01  SEGUNDO-NUMERO  PICTURE  99.
       01  RESULTADO PICTURE IS 9(3).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

       RECEBE-PRIMEIRO-NUMERO.

           DISPLAY "INFORME O PRIMEIRO NUMERO:".
           ACCEPT PRIMEIRO-NUMERO.

       RECEBE-SEGUNDO-NUMERO.
           DISPLAY "INFORME O SEGUNDO NUMERO:".
           ACCEPT SEGUNDO-NUMERO.

       INFORMA-RESULTADO.
           COMPUTE RESULTADO = PRIMEIRO-NUMERO + SEGUNDO-NUMERO.

           DISPLAY "RESULTADO DA SOMA DOS NUMEROS:".
           DISPLAY RESULTADO.

       PROGRAM-DONE.
           STOP RUN.
