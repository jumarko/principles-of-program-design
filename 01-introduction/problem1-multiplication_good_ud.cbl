      *> Modify the original program to print the lower-left
      *> part of the table upside down.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULTIPLICATION-BAjD.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 LINE-NO PIC 99.
       77 COL-NO PIC 99.
       01 PRINT-LINE.
           02 NUM OCCURS 10 PIC ZZZ9.

       PROCEDURE DIVISION.
       PSTART.
           PERFORM PLINE VARYING LINE-NO
      * This is the only thing that had to be changed!
                   FROM 10 BY -1 UNTIL LINE-NO = 0
           STOP RUN.
       PLINE.
           MOVE SPACES TO PRINT-LINE.
           PERFORM PNUM VARYING COL-NO
                   FROM 1 BY 1 UNTIL COL-NO > LINE-NO
           DISPLAY PRINT-LINE.
       PNUM.
           MULTIPLY LINE-NO BY COL-NO GIVING NUM(COl-NO).
