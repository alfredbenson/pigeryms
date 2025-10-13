<?php
include('includes/config.php');

if (isset($_POST['healthy_id'])) {
    $pigletId = $_POST['healthy_id'];

    $sqlFetch = "SELECT unhealthy_piglets.piglet_id, piglets.growinphase_id 
                 FROM unhealthy_piglets 
                 LEFT JOIN piglets ON unhealthy_piglets.piglet_id = piglets.id 
                 WHERE unhealthy_piglets.id = :pigletId";
    $stmtFetch = $dbh->prepare($sqlFetch);
    $stmtFetch->bindParam(':pigletId', $pigletId, PDO::PARAM_INT);
    $stmtFetch->execute();

    $result = $stmtFetch->fetch(PDO::FETCH_ASSOC);

    if ($result) {
        $piglet_id = $result['piglet_id'];
        $growinphase_id = $result['growinphase_id'];

        $dbh->prepare("UPDATE piglets SET status = 'Healthy' WHERE id = :piglet_id")
            ->execute([':piglet_id' => $piglet_id]);

        $dbh->prepare("UPDATE unhealthy_piglets SET status = 'Recovered' WHERE id = :id")
            ->execute([':id' => $pigletId]);

        echo json_encode([
            'success' => true,
            'message' => 'Piglet status updated',
            'redirect' => "pigletdetails.php?id={$piglet_id}&group_id={$growinphase_id}&success=1"
        ]);
        exit;
    } else {
        echo json_encode(['success' => false, 'message' => 'Piglet not found']);
        exit;
    }
}
?>
