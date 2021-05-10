<?php
try {

    if (!isset($_GET["id"])) {
        throw new Exception("missing id!", 1);
    }

    require_once('connection.php');

    $conn = open_BD();

    $sql = "select firstname,surname from users where _id in (
        SELECT distinct y.id_user_2
           FROM `connections` x
           JOIN `connections` y
             ON y.id_user_1 = x.id_user_2
            AND y.id_user_2 <> x.id_user_1
           LEFT
           JOIN `connections` z
             ON z.id_user_2 = y.id_user_2 
            AND z.id_user_1 = x.id_user_1
          WHERE x.id_user_1 = :id_user
            AND z.id_user_1 IS NULL)
            order by firstname;";
    $stm = $conn->prepare($sql);
    $stm->execute([":id_user" => $_GET["id"]]);

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
