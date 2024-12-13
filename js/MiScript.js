document.addEventListener("DOMContentLoaded", function () {
    function showGreeting() {
        const greetingElement = document.getElementById("greeting");
        const currentHour = new Date().getHours();
        let message = "";

        if (currentHour < 12) {
            message = "¡Buenos días! Que tengas un excelente inicio de jornada.";
        } else if (currentHour < 18) {
            message = "¡Buenas tardes! Espero que estés teniendo un gran día.";
        } else {
            message = "¡Buenas noches! Relájate y disfruta tu noche.";
        }

        greetingElement.textContent = message;

    }
    // Ejecutar la función al cargar la página
    showGreeting();
});