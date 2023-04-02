import de.bezier.data.sql.*;

// Objecte de connexió a la BBDD
MySQL msql;

// Paràmetres de la connexió
String user     = "admin";
String pass     = "12345";   
String database = "books";


// Connexió
void connexioBBDD(){
    
    msql = new MySQL( this, "localhost:8889", database, user, pass );
    
     // Si la connexió s'ha establert
    if (msql.connect()){
        // La connexió ha funcionat!!!
        println("Connected to database!!");
    }
    else {
      // La connexió ha fallat!!!
      println("Connection failed !");
    }
    
}

// Insertar los dados de la tabla Reto
void insertInfoTaulaReto(String nom, String num, String tiempo, String genero){
  String q = "INSERT INTO Reto (idReto, NumLibros, Tiempo, Genero) VALUES ('"+nom+"','"+num+"','"+tiempo+"','"+genero+"')";
  println(q);
  msql.query(q);
}

// Insertar los dados de la tabla Top
void insertInfoTaulaTop(String nom, String num, String libros){
  String q = "INSERT INTO Top (nomTop, NumLibros, Libros ) VALUES ('"+nom+"''"+num+"''"+libros+"')";
  println(q);
  msql.query(q);
}

// Insertar los dados de la tabla Libro
void insertInfoTaulaLibro(String isbn, String titulo, String Pag, String Inicio, String Fin, String Ranking,
String Valoracion, String Ubi, String Edi, String Autor, String Img, String Genero){
  String q = "INSERT INTO Libro (`ISBN`, `Título`, `PagRestantes`, `DiaInicio`, `DiaFin`, `Ranking`, `Valoración`, `Ubicación`, `Editorial_idEditorial`, `Autor_Nombre`,`Imagen_idImagen`, `Genero_idGenero`) VALUES ('"+isbn+"''"+titulo+"''"+Pag+"''"+Inicio+"''"+Fin+"'"+Ranking+"''"+Valoracion+"''"+Ubi+"''"+Edi+"''"+Autor+"''"+Img+"''"+Genero+"')";
  println(q);
  msql.query(q);
}

// Obten información de la tabla Reto
String[][] getInfoTaulaReto(){
  
  int numRows = getNumRowsTaula("Reto");
  
  String[][] data = new String[numRows][4];
  
  int nr=0;
  msql.query( "SELECT * FROM Reto" );
  while (msql.next()){
      data[nr][0] = String.valueOf(msql.getInt("numLibros"));
      data[nr][1] = msql.getString("idReto");
      data[nr][2] = msql.getString("Genero");
      data[nr][3] = msql.getString("Tiempo");
      nr++;
  }
  return data;
}


// Obté el número de files de la taula
int getNumRowsTaula(String nomTaula){
  msql.query( "SELECT COUNT(*) AS n FROM %s", nomTaula );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}
  


// Obté array am camp nom de la taula Unitat
String[] getNomsTaulaUnitat(){
  
  int numRows = getNumRowsTaula("unitat");
  
  String[] data = new String[numRows];
  
  int nr=0;
  msql.query( "SELECT nom FROM unitat" );
  while (msql.next()){
      data[nr] = msql.getString("nom");
      nr++;
  }
  return data;
}
