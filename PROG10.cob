       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG10.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  RESPOSTA PIC X.
       01  IDADE PIC 99.

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

       PERFORM PERGUNTA.

       PERFORM CONVERTE-MAIUSCULO.

       PERFORM EXIBE-RESPOSTA.

       PERFORM SUA-IDADE.

       PROGRAM-DONE.
           STOP RUN.

       PERGUNTA.
           DISPLAY 'VOCE GOSTA DE CARNE? (S/N)'.
           ACCEPT RESPOSTA.

       EXIBE-RESPOSTA.
           IF RESPOSTA IS EQUALS "S"
               DISPLAY "QUE LEGAL, VAMOS TOMAR UMA CERVEJA!"
               DISPLAY "RSRSRSRS"
           ELSE
               DISPLAY "QUE BOM, ASSIM SOBRA MAIS!"
               DISPLAY "KKKKKK".

       CONVERTE-MAIUSCULO.

           IF RESPOSTA IS EQUAL "n"
               MOVE "N" TO RESPOSTA
           .

           IF RESPOSTA IS EQUALS 's'
               move 'S' to RESPOSTA
           .

       SUA-IDADE.
           DISPLAY "QUAL SUA IDADE?".
           ACCEPT IDADE.

           PERFORM EXIBE-IDADE.

       EXIBE-IDADE.

           IF IDADE > 31
               DISPLAY "VOCE EH MAIS VELHO QUE EU"
               DISPLAY "HAHAHA"
           .

           IF IDADE <= 30
               DISPLAY "VOCE EH MAIS NOVO QUE EU"
           .


           IF IDADE = 31
               DISPLAY 'TEMOS A MESMA IDADE'
           .
