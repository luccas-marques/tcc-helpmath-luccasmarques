<?php

include "../config/config.php";

include("../header.php");

//obtem dados do form
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
                     
                    $_SESSION['session_exp'] = $expUsuario;
                    if (($varPergunta==1) && ($varMateria==1)) {
                     
                    header("Location: ../jogos/soma/fase2.php?pergunta=acertou");   
                    }elseif(($varPergunta==2) && ($varMateria==1)){
                        header("Location: ../jogos/soma/fase3.php?pergunta=acertou");   
                        
                    }elseif(($varPergunta==3) && ($varMateria==1)){
                        header("Location: ../jogos/soma/fase4.php?pergunta=acertou");   
                        
                    }elseif(($varPergunta==4) && ($varMateria==1)){
                        header("Location: ../jogos/soma/fase5.php?pergunta=acertou");   
                        
                    }elseif(($varPergunta==5) && ($varMateria==1)){
                        header("Location: ../materias.php");   
                        
                    }
                    }

        }else{
            $expUsuario-=$varPesoPerguntaNegativo;
            $sql2 = "UPDATE `usuarios` SET `exp` = $expUsuario WHERE `usuarios`.`id` = $idUsuario";
            if($resultado = mysqli_query($conecta, $sql2)){

                $_SESSION['session_exp'] = $expUsuario;
                if (($varPergunta==1) && ($varMateria==1)) {
                    
                header("Location: ../jogos/soma/fase.php?pergunta=errou&id=2");
                   }elseif(($varPergunta==2) && ($varMateria==1)){
                       
                header("Location: ../jogos/soma/fase3.php?pergunta=errou");
                   }elseif(($varPergunta==3) && ($varMateria==1)){
                    header("Location: ../jogos/soma/fase4.php?pergunta=errou");   
                    
                }elseif(($varPergunta==4) && ($varMateria==1)){
                    header("Location: ../jogos/soma/fase5.php?pergunta=errou");   
                    
                }elseif(($varPergunta==5) && ($varMateria==1)){
                    header("Location: ../jogos/soma/fase5.php?pergunta=complete");   
                    
                }
            }
        
        }


        
    }
    else{

        header("Location: ../jogos/soma/fase.php");
    }
}else{
    echo "fodeu";
}


