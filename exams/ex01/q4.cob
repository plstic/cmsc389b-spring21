      *> >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Q4.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
      *> main data
           01 WS-N PIC  9(5).
           01 WS-S PIC S9(5).
           01 WS-a PIC S9(5).
           01 WS-b PIC S9(5).
           01 WS-c PIC S9(5).
           01 WS-d PIC S9(5).
      *> extra data

       PROCEDURE DIVISION.
           DISPLAY "N = " WITH NO ADVANCING.
           ACCEPT WS-N.
           DISPLAY "S = " WITH NO ADVANCING.
           ACCEPT WS-S.
           DISPLAY "a = " WITH NO ADVANCING.
           ACCEPT WS-a.
           DISPLAY "b = " WITH NO ADVANCING.
           ACCEPT WS-b.
           DISPLAY "c = " WITH NO ADVANCING.
           ACCEPT WS-c.
           DISPLAY "d = " WITH NO ADVANCING.
           ACCEPT WS-d.

           PERFORM c-sequence.
           STOP RUN.

      *> YOUR CODE HERE!
      *>   can just print out "true" or "false"
           c-sequence.
           DISPLAY "false".
