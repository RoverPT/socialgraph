<?php
try {
    require_once('connection.php');

    $conn = open_BD();

    $sql = "SELECT 
    _id, firstname, surname, age, gender
     FROM users 
    order by firstname asc;";
    $stm = $conn->prepare($sql);
    $stm->execute();

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
