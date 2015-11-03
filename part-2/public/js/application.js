$(document).ready(function(){

  $(document).on("click", "#new_post_link", function(event){
    event.preventDefault();

    var request = $.ajax({
      method: "get",
      url: "/posts/new"
    });

    request.done(function(response){
      $("#replacable").append(response)
      $("#new_post_link").hide();
      // debugger
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
      $("#posts").append(response);
      $("#replacable").text("");
      $("#new_post_link").show();
    })

    request.fail(function(jsXHR){
      console.log("fail");
      console.log(jsXHR.responseText);
      $("#replacable").prepend(jsXHR.responseText);
    })
  });

});
