<?php

class Conta{

    public $id;
    public $email;
    public $password;
    public $nome;
    public $criadoEm;
    public $editadoEm;
    public $exp;

function  __construct($email,$password,$nome){
    $this->email = $email;
    $this->setPassword($password);
    $this->nome = $nome;
}
    //id
    public function getId(){
        return $this->id;
    }

    //email
    public function getEmail(){
        return $this->email;
    }

    public function setEmail($email){
        $this->email = $email;
    }

    //password
    public function getPassword(){
        return $this->password;
    }

    public function setPassword($password){
        //formatar senha
        $hash = password_hash($password, PASSWORD_DEFAULT);
        $this->password = $hash;
    }

    //nome
    public function getNome(){
        return $this->nome;
    }

    public function setNome($nome){
        $this->nome = $nome;
    }

    //quando criado
    public function getCriadoEm(){
        return $this->criadoEm;
    }


    //quando editado
    public function getEditadoEm(){
        return $this->editadoEm;
    }

    public function setEditadoEm($editadoEm){
        $this->editadoEm = $editadoEm;
    }


    //Experiência do usuário
    public function getExp(){
        return $this->exp;
    }

    public function setExp($exp){
        $this->exp = $exp;
    }

}