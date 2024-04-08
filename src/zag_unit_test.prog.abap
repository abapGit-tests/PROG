*&---------------------------------------------------------------------*
*& Report ZAG_UNIT_TEST
*&---------------------------------------------------------------------*
REPORT zag_unit_test.

TABLES: usr02.

SELECT-OPTIONS: s_bname FOR usr02-bname.
PARAMETERS: p_foo TYPE c AS CHECKBOX.

WRITE: / 'Hello world'.
