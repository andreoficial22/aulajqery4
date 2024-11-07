<?php
include "conexao.php";
$cod = $_POST['cod'];
$sql = "SELECT * FROM tb_movimentacoes WHERE cod_rastreio LIKE '$cod'";
$consultar = $pdo->prepare($sql);

try {
    $consultar->execute();
    if ($consultar->rowCount() >= 1) {
        $resultado = $consultar->fetchAll(PDO::FETCH_ASSOC);
        foreach ($resultado as $iten) { 
            $tipo = $iten['tipo_movimentacao'];
            $data_movim = $iten['data_hora_movi'];
            $origem = $iten['origem']; 
            $destino = $iten['destino'];

            $somente_data =date("d/m/y",strtotime($data_movim));
            $somente_hora = date("h:i:s",strtotime($data_movim));

            echo "<div class='atualizacao'>
                  <span class='tipo'>$tipo</span> <br>
                  <span class='data_hora'>
                  $somente_data às $somente_hora
                  </span> <br>
                  <span class='tipo'>$origem ➡ $destino</span> <br>
                  </div>";
        }
    } else {
        echo "Nada encontrado!";
    }
} catch (PDOException $erro) {
    echo "Falha ao consultar!";
}
?>
