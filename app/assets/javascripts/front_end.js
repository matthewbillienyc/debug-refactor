$(function(){
  $.ajax({
    url: '/companies',
    method: 'get',
    success: function(data) {
      debugger;
      var list = data.map(function(obj){
        return "<li>" + obj.name + "</li>"
      });
      $("#companies_list").append(list);
    }
  });

  $.ajax({
    url: '/meta_data',
    method: 'get',
    success: function(data) {
      var links = data.endpoints.map(function(endpoint){
        return "<li>" + endpoint.link + ": " + endpoint.info + " </li>";
      });

      $("#url_list").append(links);
    }
  });
});
