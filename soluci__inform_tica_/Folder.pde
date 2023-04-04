
void fileSelected(File selection) {
  if (selection == null) {
    println("No s'ha seleccionat cap fitxer.");
  } else {
    
    // Obtenim la ruta del fitxer seleccionat
    String rutaImatge = selection.getAbsolutePath();
    
    img = loadImage(rutaImatge);  // Actualitzam imatge    
    titulo = selection.getName();  // Actualitzam títol
  }
}
