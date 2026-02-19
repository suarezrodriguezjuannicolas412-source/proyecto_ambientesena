<?php
class AmbienteController
{
    ///METODO PARA REGISTRAR AMBIENTES///
    public function registrarAmbienteControlador()
    {
        if (
            isset($_POST["nombreAmbiente"]) ||
            isset($_POST["tipoAmbiente"]) ||
            isset($_POST["observaciones"])
        ) {
            $datos = array(
                'nombreAmbiente' => $_POST['nombreAmbiente'],
                'tipoAmbiente' => $_POST['tipoAmbiente'],
                'observaciones' => $_POST['observaciones'],
            );
            ///INSTANCIAR LA CLASE AmbienteModelo///
            $respuesta = new AmbienteModelo();
            if($respuesta->registrarAmbienteModelo($datos, 'ambientes') == 'success'){
                header('location:index.php?action=ok-amb');
            }
            else{
                header('location:index.php');
            }
        }
    }
    ///LISTAR AMBIENTES REGISTRADOS
    public function listarAmbientesControlador(){
        $ambienteModelo = new AmbienteModelo();
        $resultado = $ambienteModelo->listarAmbientesModelo('ambientes');
        return $resultado;
    }
    ///METODO PARA CONSULTAR USUARIO POR ID///
    public function consultarAmbienteControlador(){
        if(isset($_GET['op'])){
            $ambienteModelo = new AmbienteModelo();
            $resultado = $ambienteModelo->consultarAmbienteModelo($_GET['op']);
            return $resultado;
        }
    }
    ///METODO PARA ACTUALIZAR AMBIENTE///
    public function actualizarAmbienteControlador(){
        if(isset($_POST['nombreAmbienteEditar']) && isset($_POST['tipoAmbienteEditar']) && isset($_POST['observacionesEditar'])){
            $datos = array(
                'nombreAmbiente' => $_POST['nombreAmbienteEditar'],
                'tipoAmbiente' => $_POST['tipoAmbienteEditar'],
                'observaciones' => $_POST['observacionesEditar'],
                'id_ambiente' => $_POST['id_ambiente']
            );
            $ambienteModelo = new AmbienteModelo();
            $respuesta = $ambienteModelo->actualizarAmbienteModelo($datos);
            echo $respuesta;
        }
    }
}
