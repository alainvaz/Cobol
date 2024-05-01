           ID DIVISION.
           PROGRAM-ID. PROG15.
           ENVIRONMENT DIVISION.
           DATA DIVISION.

           WORKING-STORAGE SECTION.
       01  RESULTADO-ADICAO        PIC 9(3).
       01  RESULTADO-SUBTRACAO     PIC 9(3).
       01  RESULTADO-MULTIPLICACAO PIC 9(3).
       01  RESULTADO-DIVISAO       PIC 9(3).
       01  NUMERO-2                PIC 9(2) VALUE 2.
       01  NUMERO-4                PIC 9(2) VALUE 4.
           PROCEDURE DIVISION.
           PROGRAM-BEGIN.
               PERFORM S-ADD.
               PERFORM S-SUBTRACT.
               PERFORM S-MULTIPLY.
               PERFORM S-DIVIDE.

           PROGRAM-DONE.
               STOP RUN.

           S-ADD.
               ADD NUMERO-2 TO RESULTADO-ADICAO.
               DISPLAY "SOMA 2: " RESULTADO-ADICAO.
               ADD NUMERO-4 TO RESULTADO-ADICAO.
               DISPLAY "SOMA MAIS 4: " RESULTADO-ADICAO.
               DISPLAY "================================".
           S-SUBTRACT.
               MOVE NUMERO-4 TO RESULTADO-SUBTRACAO.
               DISPLAY "VALOR DO RESULTADO: " RESULTADO-SUBTRACAO.
               SUBTRACT NUMERO-2 FROM RESULTADO-SUBTRACAO.
               DISPLAY "VALOR APOS SUBTRAIR: " RESULTADO-SUBTRACAO.
               DISPLAY "================================".
               S-MULTIPLY.
               MOVE NUMERO-2 TO RESULTADO-MULTIPLICACAO.
               DISPLAY "VALOR DO NUMERO: " RESULTADO-MULTIPLICACAO.
               MULTIPLY NUMERO-4 BY RESULTADO-MULTIPLICACAO.
               DISPLAY "VALOR DA MULTIPLICACAO: "
      -                RESULTADO-MULTIPLICACAO.
               DISPLAY "================================".
           S-DIVIDE.
               MOVE NUMERO-4 TO RESULTADO-DIVISAO.
               DISPLAY "VALOR NUMERO: " RESULTADO-DIVISAO.
               DIVIDE NUMERO-2 INTO RESULTADO-DIVISAO.
               DISPLAY "RESULTADO DIVISAO: " RESULTADO-DIVISAO.
