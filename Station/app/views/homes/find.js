$("#result").text("");
$("#result").addClass("result-hidden")
$("#result").append("<%= escape_javascript(render partial: 'station', locals: {stations: @research}) %>")
$("#result").css('display','none')
$("#result").fadeIn()

//
