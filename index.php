<!doctype html>
<html lang="pt">

<head>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta http-equiv="content-language" content="pt" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="utf-8">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/fontawesome.min.css" />

    <title>Social Graph Test</title>
</head>

<body>
    <div class="container-fluid">

        <div class="row">
            <div class="col-sm-4">
                <ul class="list-group" id="userlist">
                </ul>
            </div>
            <div class="col-sm-8">
                <div class="d-flex align-items-center">
                    <div class="flex-shrink-0" id="info_gender">

                    </div>
                    <div class="flex-grow-1 ">
                        <ul class="list-group">
                            <li class="list-group-item" id="info_firstname">firstname</li>
                            <li class="list-group-item" id="info_surname">surname</li>
                            <li class="list-group-item" id="info_age">age</li>
                        </ul>
                    </div>
                </div>
                <br />
                <div class="card border-primary">
                    <div class="card-header">Direct friend(s)</div>
                    <div class="card-body">
                        <p class="card-text">
                        <ul class="list-group" id="direct_friends">
                            <li class="list-group-item">User 1</li>
                        </ul>
                        </p>
                    </div>
                </div>
                <br />
                <div class="card border-primary">
                    <div class="card-header">Friends of friend(s)</div>
                    <div class="card-body">
                        <p class="card-text">
                        <ul class="list-group" id="friendsoffriends">
                            <li class="list-group-item">User 1</li>
                        </ul>
                        </p>
                    </div>
                </div>
                <br />
                <div class="card border-primary">
                    <div class="card-header">Suggested friend(s)</div>
                    <div class="card-body">
                        <p class="card-text">
                        <ul class="list-group" id="suggestedfriends">
                            <li class="list-group-item">User 1</li>
                        </ul>
                        </p>
                    </div>
                </div>
                <br />
                <div class="card border-primary">
                    <div class="card-header">Recommended citie(s)</div>
                    <div class="card-body">
                        <p class="card-text">
                        <ul class="list-group" id="recommendedcities">
                            <li class="list-group-item">citie 1</li>
                        </ul>
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/fontawesome.min.js"></script>
    <script type="text/javascript" src="js/socialgraph.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            listallusers();
        });
    </script>
</body>

</html>