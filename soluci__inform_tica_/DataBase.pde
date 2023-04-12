import de.bezier.data.sql.*;

// Objecte de connexió a la BBDD
MySQL msql;

// Paràmetres de la connexió
String user     = "admin";
String pass     = "12345";
String database = "books";


// Connexió
void connexioBBDD() {

  msql = new MySQL( this, "localhost:8889", database, user, pass );

  // Si la connexió s'ha establert
  if (msql.connect()) {
    // La connexió ha funcionat!!!
    println("Connected to database!!");
  } else {
    // La connexió ha fallat!!!
    println("Connection failed !");
  }
}

// Insertar los dados de la tabla Reto
void insertInfoTaulaReto(String nom, String num, String tiempo, String genero) {
  String q = "INSERT INTO Reto (idReto, NumLibros, Tiempo, Genero) VALUES ('"+nom+"','"+num+"','"+tiempo+"','"+genero+"')";
  println(q);
  msql.query(q);
}

// Insertar los dados de la tabla Top
void insertInfoTaulaTop(String nom, String num, String libros) {
  String q = "INSERT INTO Top (nomTop, NumLibros, Libros ) VALUES ('"+nom+"','"+num+"','"+libros+"')";
  println(q);
  msql.query(q);
}

// Insertar los dados de la tabla Libro
void insertInfoTaulaLibro(String isbn, String titulo, String Pag, String Inicio, String Fin, String Ranking,
  String Valoracion, String Ubi, String Edi, String Autor, String Img, String Genero, String Ad) {
  String q = "INSERT INTO Libro (`ISBN`, `Titulo`, `DiaInicio`, `DiaFin`, `Ranking`, `Valoracion`,"+
  "`Estado`, `Editorial_idEditorial`, `Autor_Nombre`, `Imagen_Imagen`, `Genero_idGenero`, 'Adquisicion') VALUES"+
  "('"+isbn+"','"+titulo+"','"+Pag+"','"+Inicio+"','"+Fin+"','"+Ranking+"','"+Valoracion+"',"+
  "'"+Ubi+"','"+Edi+"','"+Autor+"', '"+Img+"','"+Genero+"','"+Ad+"')";
  println(q);
  msql.query(q);
}

// Insertar los dados de la tabla Libro /fechas NULL)
void insertInfoTaulaLibro(String isbn, String titulo, String Ubi, String Edi, String Autor, String Img, String Genero, String Ad) {
  String q = "INSERT INTO Libro (`ISBN`, `Titulo`, `Estado`, `Editorial_idEditorial`, `Autor_Nombre`, `Imagen_Imagen`,"+
  "`Genero_idGenero`, 'Adquisicion') VALUES ('"+isbn+"','"+titulo+"','"+Ubi+"','"+Edi+"','"+Autor+"','"+Img+"','"+Genero+"','"+Ad+"')";
  println(q);
  msql.query(q);
}

// Obten información de la tabla Reto
String[][] getInfoTaulaReto() {

  int numRows = getNumRowsTaula("Reto");

  String[][] data = new String[numRows][4];

  int nr=0;
  msql.query( "SELECT * FROM Reto" );
  while (msql.next()) {
    data[nr][0] = String.valueOf(msql.getInt("numLibros"));
    data[nr][1] = msql.getString("idReto");
    data[nr][2] = msql.getString("Genero");
    data[nr][3] = msql.getString("Tiempo");
    nr++;
  }
  return data;
}




// Obté el número de files de la taula
int getNumRowsTaula(String nomTaula) {
  msql.query( "SELECT COUNT(*) AS n FROM %s", nomTaula );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// Obté el número de files de la query
int getNumRowsQuery(String q) {
  msql.query( q);
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

//Devuleve el nombre del top de la tabla  Top
int getIdTaulaTop(String nom) {
  String sNom = nom.replace("\'", "\\'");
  String q = "SELECT nomTop FROM Top WHERE nomTop='"+sNom+"'";
  msql.query(q);
  msql.next();
  return msql.getInt("nomTop");
}

//Devuelve la informacion de los Tops (libros)
String[] getInfoTaulaTop(String nombreTop) {
  String qR = "SELECT COUNT(*) AS n FROM Libro l, Top t, Libro_has_Top lt WHERE l.ISBN=lt.Libro_ISBN AND lt.Top_nomTop=t.nomTop AND t.nomTop='"+nombreTop+"' ORDER BY l.Titulo ASC";
  msql.query(qR);
  msql.next();
  int numRows = msql.getInt("n");
  String[] libros = new String[numRows];

  String q = "SELECT l.Titulo AS titulo FROM Libro l, Top t, Libro_has_Top lt WHERE l.ISBN=lt.Libro_ISBN AND lt.Top_nomTop=t.nomTop AND t.nomTop='"+nombreTop+"' ORDER BY l.Titulo ASC";
  msql.query(q);
  int  nr=0;
  while (msql.next()) {
    libros[nr] = msql.getString("titulo");
    nr++;
  }

  return libros;
}

// Obten array con el nombre del top
String[] getNomsTaulaTop() {

  int numRows = getNumRowsTaula("Top");

  String[] data = new String[numRows];

  int nr=0;
  msql.query( "SELECT nomTop FROM Top" );
  while (msql.next()) {
    data[nr] = msql.getString("nomTop");
    nr++;
  }
  return data;
}
