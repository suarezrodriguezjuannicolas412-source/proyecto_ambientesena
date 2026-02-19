<?php
session_start();
if (!$_SESSION['usuarioValido']) {
    header('location:' . BASE_URL . 'inicio');
}
$ambienteControlador = new AmbienteController();
$datos = $ambienteControlador->listarAmbientesControlador();
?>

<div class="container">
    <table class="table table-striped-columns">
        <thead>
            <tr>
                <th scope="col">Nombre del Ambiente</th>
                <th scope="col">Tipo del Ambiente</th>
                <th scope="col">Observaciones</th>
                <th scope="col">Opciones</th>
            </tr>
        </thead>
        <tbody>
            <?php
            foreach ($datos as $ambiente) {
            ?>
                <tr>
                    <td><?php echo $ambiente['nombre_ambiente'] ?></td>
                    <td><?php echo $ambiente['tipo_ambiente'] ?></td>
                    <td><?php echo $ambiente['observaciones'] ?></td>
                    <td>
                        <a href="<?php echo BASE_URL; ?>ambientes/editarambiente/<?php echo $ambiente['id_ambiente']; ?>"><i class="bi bi-pencil-square"></i>Editar</a>
                        |
                        <a href="#" onclick="eliminarUsuario(<?php echo $usuarios['id'] ?>)"><i class="bi bi-trash3-fill"></i>Eliminar</a></td>
                    </td>
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
</div>