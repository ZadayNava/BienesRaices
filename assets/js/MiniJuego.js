document.addEventListener('DOMContentLoaded', () => {
    const propiedades = document.querySelectorAll('.propiedad');
    const zonas = document.querySelectorAll('.zona');

    propiedades.forEach(propiedad => {
        propiedad.addEventListener('dragstart', (event) => {
            event.dataTransfer.setData('text', event.target.id); // Guardar el ID de la propiedad
        });
    });

    zonas.forEach(zona => {
        zona.addEventListener('dragover', (event) => {
            event.preventDefault(); // Permitir que el contenido sea soltado
        });

        zona.addEventListener('drop', (event) => {
            event.preventDefault();
            const propiedadId = event.dataTransfer.getData('text');
            const propiedad = document.getElementById(propiedadId);

            // Clonar la propiedad y colocarla en la zona
            zona.appendChild(propiedad);
            propiedad.style.marginTop = '10px'; // Espacio entre propiedades

            // Cambiar el mensaje en la zona
            if (zona.id === 'en-venta') {
                zona.innerHTML = '<h3>En Venta</h3>';
            } else {
                zona.innerHTML = '<h3>Vendidas</h3>';
            }
            zona.appendChild(propiedad);
        });
    });
});
