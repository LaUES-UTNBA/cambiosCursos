$(document).ready(function(){
  
  var notification_success = $(".notice").data("notice");
  if(notification_success){
    $.notify({message: notification_success}, {type: "success", delay: 0});
  }

  var notification_error = $(".error").data("error");
  if(notification_error){
    $.notify({message: notification_error}, {type: "danger", delay: 0});
  }

  var notification_alert = $(".alert").find("div").data("alert");
  if(notification_alert){
    $.notify({message: notification_alert}, {type: "warning", delay: 0});
  }

});