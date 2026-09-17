      *> Attempt to modify the bad version of the program
      *> to print the upper-right triangular half of the
      *> multiplication table.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULTIPLICATION-BAD-UPPER-RIGHT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 LINE-NO PIC 99.
       77 COL-NO PIC 99.
       01 PRINT-LINE.
           02 NUM OCCURS 10 PIC ZZZ9.

       PROCEDURE DIVISION.
       PSTART.
           MOVE SPACES TO PRINT-LINE.
           MOVE 1 TO LINE-NO.
           MOVE 1 TO NUM (1).
           PERFORM PLINE UNTIL LINE-NO = 10.
           DISPLAY PRINT-LINE.
           STOP RUN.
       PLINE.
           MOVE    LINE-NO TO COL-NO.
           PERFORM PNUM UNTIL COL-NO > 10.
           DISPLAY PRINT-LINE.
           ADD 1 TO LINE-NO.
       PNUM.
           ADD 1 TO COL-NO.
           MULTIPLY LINE-NO BY COL-NO GIVING NUM(COl-NO).
