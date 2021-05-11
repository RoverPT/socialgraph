
function listallusers() {
    $.get(
        "api/listallusers.php",
        function (data) {
            if (data.response.code == 0) {
                for (let i = 0; i < data.result.length; i++) {
                    $finallist = '<li class="list-group-item list-group-item-action" id="user' + data.result[i]._id + '" + \
                    onclick="filluserinfo(' + data.result[i]._id + ')" \
                    age="' + data.result[i].age + '" \
                    gender="' + data.result[i].gender + '"><span id="raw_firstname' + data.result[i]._id + '">' + data.result[i].firstname + '</span> \
                    <span id="raw_surname' + data.result[i]._id + '">' + data.result[i].surname + '</span></li>';
                    $("#userlist").append($finallist);
                }
            }
            else {
                console.log("load error", data.response.message);
            }
        },
        "json"
    ).fail(function (error_data) {
        console.log("fail", error_data);
    });
}

function filluserinfo(in_id) {
    $("#info_firstname").text($("#raw_firstname" + in_id).text());
    $("#info_surname").text($("#raw_surname" + in_id).text());
    $("#info_age").text($("#user" + in_id).attr("age"));
    if ($("#user" + in_id).attr("gender") == "male") {
        $("#info_gender").html('<i class="fas fa-male fa-10x"></i>');
    } else {
        $("#info_gender").html('<i class="fas fa-female fa-10x"></i>');
    }
    clean_info();
    get_directfriends(in_id);
    get_friendsoffriends(in_id);
    get_suggestedfriends(in_id);
    get_recomendedcities(in_id);
}

function clean_info() {
    $("#direct_friends").html('');
    $("#friendsoffriends").html('');
    $("#suggestedfriends").html('');
    $("#recommendedcities").html('');
}

function get_directfriends(in_id) {

    $.get(
        "api/directfriends.php", { id: in_id },
        function (data) {
            if (data.response.code == 0) {
                for (let i = 0; i < data.result.length; i++) {
                    $final_direct = '<li class="list-group-item list-group-item-action" >' + data.result[i].firstname + ' ' + data.result[i].surname + '</li>';
                    $("#direct_friends").append($final_direct);
                }
            }
            else {
                console.log("load error", data.response.message);
            }
        },
        "json"
    ).fail(function (error_data) {
        console.log("fail", error_data);
    });
}

function get_friendsoffriends(in_id) {

    $.get(
        "api/friendsoffriends.php", { id: in_id },
        function (data) {
            if (data.response.code == 0) {
                for (let i = 0; i < data.result.length; i++) {
                    $final_foff = '<li class="list-group-item list-group-item-action" >' + data.result[i].firstname + ' ' + data.result[i].surname + '</li>';
                    $("#friendsoffriends").append($final_foff);
                }
            }
            else {
                console.log("load error", data.response.message);
            }
        },
        "json"
    ).fail(function (error_data) {
        console.log("fail", error_data);
    });
}

function get_suggestedfriends(in_id) {

    $.get(
        "api/suggestedfriends.php", { id: in_id },
        function (data) {
            if (data.response.code == 0) {
                for (let i = 0; i < data.result.length; i++) {
                    $final_susfrie = '<li class="list-group-item list-group-item-action" >' + data.result[i].firstname + ' ' + data.result[i].surname + '</li>';
                    $("#suggestedfriends").append($final_susfrie);
                }
            }
            else {
                console.log("load error", data.response.message);
            }
        },
        "json"
    ).fail(function (error_data) {
        console.log("fail", error_data);
    });
}

function get_recomendedcities(in_id) {

    $.get(
        "api/recommendcities.php", { id: in_id },
        function (data) {
            if (data.response.code == 0) {
                for (let i = 0; i < data.result.length; i++) {
                    $final_citie = '<li class="list-group-item list-group-item-action" >' + data.result[i].citie_name + '</li>';
                    $("#recommendedcities").append($final_citie);
                }
            }
            else {
                console.log("load error", data.response.message);
            }
        },
        "json"
    ).fail(function (error_data) {
        console.log("fail", error_data);
    });
}
