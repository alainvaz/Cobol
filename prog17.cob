           IDENTIFICATION DIVISION.
           PROGRAM-ID. PROG17.

           ENVIRONMENT DIVISION.

           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT OPTIONAL ARQUIVO-CLIENTE
               ASSIGN TO "clientes.dat"
               ORGANIZATION IS SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  ARQUIVO-CLIENTE.
      *     LABEL RECORDS ARE STANDARD.
       01  CLIENTE-REGISTRO.
           05 CLIENTE-NOME     PIC X(20).
           05 CLIENTE-ENDERECO PIC X(50).
           05 CLIENTE-TELEFONE PIC X(15).
           05 CLIENTE-EMAIL    PIC X(30).

       WORKING-STORAGE SECTION.

       01  RESPOSTA PIC X.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           OPEN EXTEND ARQUIVO-CLIENTE.

           MOVE "S" TO RESPOSTA.

           PERFORM ADICIONA-REGISTROS
                UNTIL RESPOSTA = "N".

           CLOSE ARQUIVO-CLIENTE.

       PROGRAM-DONE.
           STOP RUN.

       ADICIONA-REGISTROS.

           MOVE SPACE TO CLIENTE-REGISTRO.

           DISPLAY "INFORME O NOME: ".
           ACCEPT CLIENTE-NOME.

           DISPLAY "INFORME O ENDERECO: ".
           ACCEPT CLIENTE-ENDERECO.

           DISPLAY "INFORME O TELEFONE: ".
           ACCEPT CLIENTE-TELEFONE.

           DISPLAY "INFORME O E-MAIL: "
           ACCEPT CLIENTE-EMAIL.

           WRITE CLIENTE-REGISTRO.

           DISPLAY "-------------------".
           DISPLAY "DESEJA ADICIONAR OUTRO CLIENTE? (S/N)".
           ACCEPT RESPOSTA.
