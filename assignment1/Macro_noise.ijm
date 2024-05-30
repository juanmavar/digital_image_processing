// cerrar todo lo anterior
run("Close All");

// abrir imagen ejemplo (comentar en caso de abrir otra imagen)
run("Boats");

// abrir imagen local (comentar en caso de usar imagen de ejemplo)
// open("path/to/image");

sigma=10;
radio=1;
procesamiento = "mean_1"; //filtro de media de radio 1

//duplicamos la imagen con un nuevo nombre
window_name = "noise_sigma_" + sigma;
run("Duplicate...", "title="+window_name);
selectWindow(window_name);

// a la duplicada le agregamos ruido
run("Add Specified Noise...", "standard="+sigma);


// la vamos a procesar con media de radio 1
window_name = window_name + "_" + procesamiento;
run("Duplicate...", "title="+window_name);
selectWindow(window_name);
run("Mean...", "radius=1");