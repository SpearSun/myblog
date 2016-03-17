$(document).ready(function(){
  $("#user_name").blur(function(){
    $(".name_validate").empty();
    $(".name_validate").append($("#user_name").val());
  });
});
