$(document).ready(function(){
  $("#ticket_state_id").change(function(){
    var state_id = $(this).val();
    (state_id == '') ? $("#ticket_district_id").prop("disabled", true) : $("#ticket_district_id").prop("disabled", false);
    $.ajax({
      url: "/tickets/collect_districts/",
      method: "GET",
      dataType: "json",
      data: {state_id: state_id},
      error: function (xhr, status, error) {
        console.error('AJAX Error: ' + status + error);
      },
      success: function (response) {
        var cities = response["cities"];
        $("#ticket_district_id").empty();
        $("#ticket_district_id").append('<option>Select City</option>');
        for(var i = 0; i < cities.length; i++){
          $("#ticket_district_id").append('<option value="' + cities[i]["id"] + '">' +cities[i]["name"] + '</option>');
        }
      }
    });
  });
})