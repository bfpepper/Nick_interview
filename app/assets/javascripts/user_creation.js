function createUser(e) {
  var first = $("#first").val()
  var last = $("#last").val()
  var email = $("#email").val()
  var social = $("#social").val()

  $.ajax({
    method: 'POST',
    url: '/api/v1/users/',
    dataType: 'json',
    data: {user: {first_name: first, last_name: last, email: email, social: social}},
    success: function(response){
      console.log('createUser WORKING!');
      console.log(response);
    },
    error: function(response) {
      console.log('createUser NOT working');
    }
  })
}

$( document ).on( 'click', '#create_user', function(e) {
  e.preventDefault();
  createUser(e);
});
