      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG16.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  TELEFONE.
           02 FILLER      PIC X(07) VALUE "LOCAL: ".
           02 LOCALIDADE  PIC X(04).
           02 FILLER      PIC X(10) VALUE "TERMINAL: ".
           02 TERMINAL    PIC X(10).
           02 FILLER      PIC X(03) VALUE " - ".
           02 NRC-CLIENTE.
              03 EMPRESA  PIC 9(02) VALUE 17.
              03 NRC      PIC X(13) VALUE "123456789".

       66  NUM-TERM RENAMES LOCALIDADE THRU TERMINAL.


       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
            MOVE "BHE"      TO LOCALIDADE.
            MOVE "38890403" TO TERMINAL.

            DISPLAY "LOCAL: " LOCALIDADE "TERMINAL: " TERMINAL
      -     " - " EMPRESA " - " NRC.
            DISPLAY "GRUPO: " TELEFONE.

            DISPLAY "RENAMES: " NUM-TERM.
       PROGRAM-DONE.
           STOP RUN.
