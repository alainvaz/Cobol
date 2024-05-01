           ID DIVISION.
           PROGRAM-ID. PROG14.
           ENVIRONMENT DIVISION.
           DATA DIVISION.
           WORKING-STORAGE SECTION.

       01  VALOR1 PIC 9(5)V9(2) VALUE 76543.98.
       01  VALOR2 PIC 9(2)V9(2) VALUE 12.36.
       01  VALOR3 PIC S9(3)V9(2) VALUE -587.21.

           PROCEDURE DIVISION.
           PROGRAM-BEGIN.
               DISPLAY "VALOR 1: " VALOR1.
               DISPLAY "VALOR 2: " VALOR2.
               DISPLAY "VALOR 3: " VALOR3.
           PROGRAM-DONE.
               STOP RUN.
