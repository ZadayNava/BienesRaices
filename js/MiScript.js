function suscribirse() {
    var correo = document.getElementById("mail");
    var regex = "/^[\w\.]+@([\w-]+\.)+[\w-]{2,4}$/g";
    if (correo == regex) {
        Swal.fire({
            title: "Estas dentro!",
            text: "Puedes revisar tu correo!",
            icon: "success"
        });
    } else {
        Swal.fire({
            text: "No es un formato correcto",
            icon: "error"
        });
    }
}