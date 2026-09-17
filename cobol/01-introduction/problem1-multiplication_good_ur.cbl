      *> Attempt to modify the good version of the program
      *> to print the upper-right triangular half of the
      *> multiplication table.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULTIPLICATION-GOOD-UPPER-RIGHT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 LINE-NO PIC 99.
       77 COL-NO PIC 99.
       01 PRINT-LINE.
           02 NUM OCCURS 10 PIC ZZZ9.

       PROCEDURE DIVISION.
       PSTART.
           PERFORM PLINE VARYING LINE-NO
                   FROM 1 BY 1 UNTIL LINE-NO > 10
           STOP RUN.
       PLINE.
           MOVE SPACES TO PRINT-LINE.
           PERFORM PNUM VARYING COL-NO
      *            The only thing that I had to change
      *            is this condition
                   FROM LINE-NO BY 1 UNTIL COL-NO > 10.
           DISPLAY PRINT-LINE.
       PNUM.
           MULTIPLY LINE-NO BY COL-NO GIVING NUM(COl-NO).
