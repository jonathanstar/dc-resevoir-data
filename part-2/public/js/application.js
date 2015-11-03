$(document).ready(function(){

  $(document).on("click", "#new_post_link", function(event){
    event.preventDefault();

    var request = $.ajax({
      method: "get",
      url: "/posts/new"
    });

    request.done(function(response){
      $("#new_post_link").replaceWith($(response))
    });

    request.fail(function(jsXHR){
      console.log("fail");
      console.log(jsXHR.responseText);
    });

  });

  $(document).on("submit", "#post_form", function(){
    event.preventDefault();

    var request = $.ajax({
      method: "post",
      url: "/posts",
      data: $(this).serialize()
    });

    request.done(function(response){
      console.log(response);
    })

    request.fail(function(jsXHR){
      console.log("fail");
      console.log(jsXHR.responseText);
      $("#post_form_container").prepend(jsXHR.responseText);
    })
  });

});
