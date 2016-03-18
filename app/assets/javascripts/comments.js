function reply(user_name, comment_id){
  $("#comment_body").val("Reply @" + user_name + " ").focus();
  $("#comment_id").val(comment_id);
}
