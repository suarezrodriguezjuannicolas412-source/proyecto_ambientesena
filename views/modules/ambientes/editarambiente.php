<?php
session_start();
if (!$_SESSION['usuarioValido']) {
    header('location:'. BASE_URL . 'inicio');
}
$ambienteControlador = new AmbienteController();
$ambiente = $ambienteControlador->consultarAmbienteControlador();
?>

<div class="container">
    <form method="post">
        <?php $ambienteControlador->actualizarAmbienteControlador(); ?>
        <fieldset>
            <legend>Editar Ambientes</legend>
            <div class="row">
                <div class="col">
                    <div class="mb-3">
                        <label for="nombreAmbiente" class="form-label">Nombre del Ambiente</label>
                        <input type="text" id="nombreAmbienteEditar" name="nombreAmbienteEditar" value="<?php echo $ambiente['nombre_ambiente'] ?>" class="form-control" placeholder="Nombre del Ambiente" required>
                        <input type="text" name="id_ambiente" id="id_ambiente" value="<?php echo $ambiente['id_ambiente'] ?>">
                            
                        <div id="error-nombre" style="color:red; font-size:10px;"></div>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                        <label for="tipoAmbiente" class="form-label">Tipo de Ambiente</label>
                        <input type="text" name="tipoAmbienteEditar" id="tipoAmbienteEditar" value="<?php echo $ambiente['tipo_ambiente'] ?>"
                            class="form-control" placeholder="Tipo del Ambiente" required>
                        <div id="error-email" style="color:red; font-size:10px;"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="mb-3">
                        <label for="observaciones" class="form-label">Observaciones</label>
                        <input type="text" id="observacionesEditar" name="observacionesEditar" value="<?php echo $ambiente['observaciones'] ?>"
                            class="form-control" minlength="6" placeholder="Detalles del Ambiente" required>
                        <div id="error-clave" style="color:red; font-size:10px;"></div>
                    </div>
                </div>
            </div>
            <button type="submit" name="registrar" id="registrar" class="btn btn-primary">Actualizar</button>
        </fieldset>
    </form>
</div>