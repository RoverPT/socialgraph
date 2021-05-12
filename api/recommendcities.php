<?php
try {

    if (!isset($_GET["id"])) {
        throw new Exception("missing id!", 1);
    }

    require_once('connection.php');

    $conn = open_BD();

    $sql = "select cities.citie_name from travel
    join cities on cities._id = travel.id_citie
    where id_citie not in (select id_citie from travel where id_user=:user1)
    and id_user in (select id_user_2 from  connections where id_user_1=:user2)
    ";
    $stm = $conn->prepare($sql);
    $stm->execute([
        ":user1" => $_GET["id"],
        ":user2" => $_GET["id"],
        ":user3" => $_GET["id"]
    ]);

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
