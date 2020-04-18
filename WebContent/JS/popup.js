


$( function () {


  // 모달

    $( '#boobtn' ).first().click( function () {
      $( '.modal-wrap' ).show();
      console.log("click1");
    } );
    $( '.modal-wrap' ).find( 'button' ).click( function () {
      $( this ).parents( '.modal-wrap' ).hide();
    } );
    
    $( '#del' ).first().click( function () {
	      $( '.modal-wrap-del' ).show();
	      console.log("click2");
	    } );
	    $( '.modal-wrap-del' ).find( 'button' ).click( function () {
	      $( this ).parents( '.modal-wrap-del' ).hide();
	    } );


} );


