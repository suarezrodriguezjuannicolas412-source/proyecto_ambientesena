<?php

///IMPORTACION A LA CLASE CONEXION///
include_once 'conexion.php';
class AmbienteModelo extends Conexion
{
    ///METODO PARA REGISTRAR AMBIENTE///
    public function registrarAmbienteModelo($datos, $tabla)
    {
        ///conexion por PDO///
        $pdo = $this->conectar();
        $stmt = $pdo->prepare("INSERT INTO $tabla(id_ambiente, nombre_ambiente, tipo_ambiente, observaciones)
         VALUES (null, :nombreAmbiente, :tipoAmbiente, :observaciones)");

        ///ENLAZAR PARAMETROS CON BINDPARAM///
        $stmt->bindParam(':nombreAmbiente', $datos['nombreAmbiente'], PDO::PARAM_STR);
        $stmt->bindParam(':tipoAmbiente', $datos['tipoAmbiente'], PDO::PARAM_STR);
        $stmt->bindParam(':observaciones', $datos['observaciones'], PDO::PARAM_STR);
        ///EJECUTAR LA SETENCIA SQL///
        if ($stmt->execute()) {
            return 'success';
        }
        else{
            return 'error';
        }
    }
    ///METODO PARA LISTAR AMBIENTES///
    public function listarAmbientesModelo($tabla){
        $pdo = $this->conectar();
        $stmt = $pdo->prepare("SELECT id_ambiente, nombre_ambiente, tipo_ambiente, observaciones FROM $tabla ORDER BY nombre_ambiente");
        $stmt->execute();
        $resultados = $stmt->fetchAll();
        $stmt = null;
        $pdo = null;
        return $resultados;
    }
    ///METODO PARA CONSULTAR UN USUARIO POR SU ID///
    public function consultarAmbienteModelo($id_ambiente){
        $pdo = $this->conectar();
        $stmt = $pdo->prepare("SELECT * FROM ambientes WHERE id_ambiente = :id_ambiente");
        $stmt->bindParam(":id_ambiente", $id_ambiente, PDO::PARAM_INT);
        $stmt->execute();
        $resultado = $stmt->fetch();
        $stmt = null;
        $pdo = null;
        return $resultado;
    }
    ///METODO PARA ACTUALIZAR AL USUARIO EN LA BASE DE DATOS///
    public function actualizarAmbienteModelo($datos){
        $pdo = $this->conectar();
        $stmt = $pdo->prepare("UPDATE ambientes SET nombre_ambiente = :nombre_ambiente, tipo_ambiente = :tipo_ambiente, observaciones = :observaciones WHERE id_ambiente = :id_ambiente");
        $stmt->bindParam(":nombre_ambiente", $datos["nombreAmbiente"], PDO::PARAM_STR);
        $stmt->bindParam(":tipo_ambiente", $datos["tipoAmbiente"], PDO::PARAM_STR);
        $stmt->bindParam(":observaciones", $datos["observaciones"], PDO::PARAM_STR);
        $stmt->bindParam(":id_ambiente", $datos["id_ambiente"], PDO::PARAM_STR);
        $resultado = $stmt->execute(); 
        $stmt = null;
        $pdo = null;
        if($resultado){
            return 'success';
        }else{
            return 'error';
        }
    }
}