$(document).on('ready page:load', function ratyPlugin(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
          readOnly: true,
          score: function() {
              return $(this).attr('data-score');
      }
  });
    //elevate zoom plugin
    $('.img-zoom').elevateZoom();
});