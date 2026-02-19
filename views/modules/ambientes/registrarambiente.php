<?php
session_start();
if (!$_SESSION['usuarioValido']) {
    header('location:'. BASE_URL . 'inicio');
}
$ambienteControlador = new AmbienteController();
$ambienteControlador->registrarAmbienteControlador();
$ambienteControlador->listarAmbientesControlador();
?>

<div class="container">
    <form method="post">
        <fieldset>
            <legend>Registrar Ambientes</legend>
            <div class="row">
                <div class="col">
                    <div class="mb-3">
                        <label for="nombreAmbiente" class="form-label">Nombre del Ambiente</label>
                        <input type="text" id="nombreAmbiente" name="nombreAmbiente"
                            class="form-control" placeholder="Nombre del Ambiente" required>
                        <div id="error-nombre" style="color:red; font-size:10px;"></div>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                        <label for="tipoAmbiente" class="form-label">Tipo de Ambiente</label>
                        <input type="text" name="tipoAmbiente" id="tipoAmbiente"
                            class="form-control" placeholder="Tipo del Ambiente" required>
                        <div id="error-email" style="color:red; font-size:10px;"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="mb-3">
                        <label for="observaciones" class="form-label">Observaciones</label>
                        <input type="text" id="observaciones" name="observaciones"
                            class="form-control" required>
                        <div id="error-clave" style="color:red; font-size:10px;"></div>
                    </div>
                </div>
            </div>
            <button type="submit" name="registrar" id="registrar" class="btn btn-primary">Registrar</button>
        </fieldset>
    </form>
    <?php
    ///VALIDACION DEL ERROR///
    if (isset($_GET["action"])) {
        if ($_GET["action"] == "ok-amb") {
    ?>
            <div class="alert alert-success mt-2" role="alert">
               ¡USUARIO REGISTRADO CORRECTAMENTE!
            </div>
    <?php
        }
    }
    ?>

</div>