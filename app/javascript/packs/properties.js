$(function(){
  $("#show-tel").on("click", function(){
      console.log('ff');
    var $this = $(this);
    $this.text( $this.data("telephone") );

  })

  $("#toggleDetails").on("click", function(){
    var details = $('#prop-details');
      details.toggleClass("open");
  })

  $("#send").on("click", function(){
      var  agent_id = $("#agent_id").val(),
      first_name = $("#first_name").val(),
      last_name = $("#Last_name").val(),
      email = $("#email").val(),
      message = $("#message").val();
    $.ajax({
      url:"/agent/message",
      method:"POST",
      dataType:"json",
      data:{
           agent_id: agent_id,
           first_name:first_name ,
           Last_name: last_name,
           email: email,
           message:message
      },
      success: function(data){
        console.log(data)
      }
    })
  })
})
