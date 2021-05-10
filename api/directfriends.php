<?php
try {

    if (!isset($_GET["id"])){
        throw new Exception("missing id!", 1);
    }

    require_once('connection.php');

    $conn = open_BD();

    $sql = "SELECT users.firstname , users.surname FROM phptest.connections 
    inner join users on users._id = id_user_2
    where id_user_1=:id_user
    order by users.firstname;";
    $stm = $conn->prepare($sql);
    $stm->execute([":id_user"=> $_GET["id"] ]);

    $response = $stm->fetchall(PDO::FETCH_ASSOC);

    $info["result"] = $response;
    $info["response"]["code"] = 0;
    $info["response"]["message"] = "Success";
} catch (Exception $e) {
    $info["response"]["code"] = 1;
    $info["response"]["message"] = $e->getMessage();
} finally {
    echo json_encode($info);
}
