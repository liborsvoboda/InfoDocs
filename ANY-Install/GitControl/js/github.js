/**
 * Created by podarok on 20.05.16.
 */
$.getJSON( "https://api.github.com/repos/cibox/cibox/stats/contributors", function( data ) {
    var items = [];
    $.each( data, function( key, val ) {
        console.log(val.author);
        items.push("<div class='col-lg-2 col-sm-2 col-xs-4 contributor' id='@" + val.author.login + "'>" +
                "<div class='contributor-wrapper'>" +
                "<div class='contributor-photo'>" +
                    "<a target=_blank href='" + val.author.html_url + "'>" +
                        "<img src='" + val.author.avatar_url + "&s=400'>" +
                    "</a>" +
                "</div>" +
                "<div class='contributor-name'>" +
                    "<a target=_blank href='" + val.author.html_url + "'>" +
                        val.author.login +
                    "</a>" +
                "</div>" +
                "</div>" +
            "</div>" );
    });
    items.reverse();
    $( "<div/>", {
        "class": "contributors-list",
        html: items.join( "" )
    }).appendTo( ".contributors" );
});
