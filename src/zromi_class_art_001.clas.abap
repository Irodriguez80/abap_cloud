CLASS zromi_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zromi_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data: it_art TYPE STANDARD TABLE OF ZROMI_TBL_ARTE.

    it_art = VALUE #(
          ( client = sy-mandt id_art = 1 descr = 'Mini colores' descr2 = 'Un mini estuche, con mini colores'
            color = 'varios' piezas = 12 stock = 10 url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-mini-colores-estuche-01_700x.jpg?v=1676577703' )

          ( client = sy-mandt id_art = 2 descr = 'Cuaderno' descr2 = 'Cuaderno Italiano'
            color = 'negra' piezas = 1 stock = 100 url = 'https://lalibreteria.mx/cdn/shop/products/La-Libreteria-Circulo-Cuadrado-1_1000x.jpg?v=1588288683' )

          ( client = sy-mandt id_art = 3 descr = 'Plumones' descr2 = 'Plumones Gel Varios colores'
            color = 'varios' piezas = 6 stock = 20 url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-midori-color-pens-relaxation-2_700x.jpg?v=1749324081' )

          ( client = sy-mandt id_art = 4 descr = 'Lapiz' descr2 = 'Lapiz Blackwing'
            color = 'rojo' piezas = 12 stock = 50 url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-blackwing-matte-red-03_700x.jpg?v=1736476391' )
    ).

    INSERT ZROMI_TBL_ARTE FROM TABLE @it_art.

        IF SY-subrc = 0.
            out->write( 'Insert sucessful' ).
        Else.
            out->write( 'Insert wrong' ).
        ENDIF.





  ENDMETHOD.
ENDCLASS.
