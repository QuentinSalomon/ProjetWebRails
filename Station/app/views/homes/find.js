$("#result").text("");
<% @research.each do |r| %>
  $("#result").append("<%= r.name %>");
<%end%>
