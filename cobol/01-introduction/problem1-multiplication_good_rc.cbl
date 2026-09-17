      * Expected program output:
      *  11  12  13  14  15  16  17  18  19  20
      *  22  24  26  28  30  32  34  36  38  40
      *  33  36  39  42  45  48  51  54  57  60
      *  44  48  52  56  60  64  68  72  76  80
      *  55  60  65  70  75  80  85  90  95 100
      *  66  72  78  84  90  96 102 108 114 120
      *  77  84  91  98 105 112 119 126 133 140
      *  88  96 104 112 120 128 136 144 152 160
      *  99 108 117 126 135 144 153 162 171 180
      * 110 120 130 140 150 160 170 180 190 200
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULTIPLICATION-BAjD.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 LINE-NO PIC 99.
       77 COL-NO PIC 99.
       01 PRINT-LINE.
      * One way: change 'OCCURS 10' to 'OCCURS 20'
      * - but this will shift the entire table to the right (lot of extra space)
           02 NUM OCCURS 20 PIC ZZZ9.

       PROCEDURE DIVISION.
       PSTART.
           PERFORM PLINE VARYING LINE-NO
                   FROM 1 BY 1 UNTIL LINE-NO > 10
           STOP RUN.
       PLINE.
           MOVE SPACES TO PRINT-LINE.
           PERFORM PNUM VARYING COL-NO
      *            We only change this condition: FROM 10 ... UNTIL COL-NO > 20
                   FROM 10 BY 1 UNTIL COL-NO > 20
           DISPLAY PRINT-LINE.
       PNUM.
      * Another way: modify `NUM(COL-NO)` to `NUM(COL-NO - 10)`
           MULTIPLY LINE-NO BY COL-NO GIVING NUM(COl-NO - 10).
