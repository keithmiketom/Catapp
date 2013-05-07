var display_content = function(response){
  $("#content").html(response);

  $("#content a").on("click", monitor_links);

}

var monitor_links = function(e){
    e.preventDefault();

    var link =$(this);
    var url = $(this).attr("href");
    $.ajax({
        url: url,
        method: $(this).attr("data-method"),
        success: display_content,
        error: function() { $(link).parent("tr").remove();}
    });

}

$("#menu a").on("click", monitor_links);


/*

var add_events = (function () {
    $(".products tr").on("click", function () {
        var id = $(this).find("td:first").text();
        var url = "product.aspx?id=" + id;
        $.get(url, ajax_loaded);

        past_url = url;
    });
});

var ajax_loaded = (function (response) {
    $("#content").slideUp(
        500,
        function () {
            $("#content")
                .html(response)
                .slideDown(500);

            add_events();
        }
    );
});

var past_url;
$("#menu a").on("click", function (e) {
    e.preventDefault();

    var url = $(this).attr("href");
    if (past_url != url) {
        past_url = url;
        $.get(url, ajax_loaded);
    }
});*/

