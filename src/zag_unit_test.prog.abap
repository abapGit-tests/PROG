*&---------------------------------------------------------------------*
*& Report ZAG_UNIT_TEST
*&---------------------------------------------------------------------*
REPORT zag_unit_test.

TABLES usr02.

SELECT-OPTIONS s_bname FOR usr02-bname.
PARAMETERS p_foo TYPE c AS CHECKBOX.

DATA gt_users TYPE STANDARD TABLE OF usr02 WITH KEY bname.

SELECT * FROM usr02 INTO TABLE gt_users WHERE bname IN s_bname.

IF p_foo = abap_true.
  WRITE / 'Hello world'.
ENDIF.
