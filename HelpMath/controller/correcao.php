<?php

include "../config/config.php";

include("../header.php");

//obtem dados do form
$varId = $_GET['id'];
$varMateria = $_POST['tipoPergunta'];
$varPergunta = $_POST['numeroPergunta'];
$varResposta = $_POST['inputResposta'];
$varIdPergunta = $_POST['idPergunta'];
$varPesoPergunta = $_POST['idPeso'];
$varPesoPerguntaNegativo = $_POST['idPesoNegativo'];


$sql = "SELECT * FROM `respostas` WHERE resposta = '$varResposta' AND id_pergunta = '$varIdPergunta' ";
if($resultado = mysqli_query($conecta, $sql)){
    // obtem o numero de registros
    $cont = mysqli_num_rows($resultado);
    if($cont > 0){
        echo "boa borracha";
        $dados = mysqli_fetch_array($resultado, MYSQLI_ASSOC);
        if($dados['correta']==1){
                $expUsuario+=$varPesoPergunta;
                $sql2 = "UPDATE `usuarios` SET `exp` = $expUsuario WHERE `usuarios`.`id` = $idUsuario";
                if($resultado = mysqli_query($conecta, $sql2)){
                    $varId+=1;
                    $_SESSION['session_exp'] = $expUsuario;
                     
                    header("Location: ../jogos/soma/fase.php?pergunta=acertou&id=$varId");
                    }

        }else{
            $expUsuario-=$varPesoPerguntaNegativo;
            $sql2 = "UPDATE `usuarios` SET `exp` = $expUsuario WHERE `usuarios`.`id` = $idUsuario";
                    if($resultado = mysqli_query($conecta, $sql2)){
                        $varId+=1;
                        $_SESSION['session_exp'] = $expUsuario;
                        header("Location: ../jogos/soma/fase.php?pergunta=errou&id=$varId");
                    }
            }
        
        


    
    }
    else{

        header("Location: ../jogos/soma/fase.php");
    }
}else{
    echo "fodeu";
}


