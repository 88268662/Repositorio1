
package TO;


public class TOMatricula extends TOEstudiantes{
    
    private int idMatricula;
    private int idEstudiante;
    private String NombreEstudiante;
    private String ApellidoEstudiante;
    private String year;
    private String periodo;
    private String fechaMatricula;
    private String grado;
    private String NombreSedeEducativa;
    private String NIDSedeEducativa;    

    public TOMatricula() {
    }

    public TOMatricula(String year, String periodo, String fechaMatricula) {
        this.year = year;
        this.periodo = periodo;
        this.fechaMatricula = fechaMatricula;
    }

    public TOMatricula(int idMatricula, int idEstudiante, String NombreEstudiante, String ApellidoEstudiante, String year, String periodo, String fechaMatricula, String grado, String NombreSedeEducativa, String NIDSedeEducativa, String nombres, String apellidos, String tipoIdentificacion, String identificacion) {
        super(nombres, apellidos, tipoIdentificacion, identificacion);
        this.idMatricula = idMatricula;
        this.idEstudiante = idEstudiante;
        this.NombreEstudiante = NombreEstudiante;
        this.ApellidoEstudiante = ApellidoEstudiante;
        this.year = year;
        this.periodo = periodo;
        this.fechaMatricula = fechaMatricula;
        this.grado = grado;
        this.NombreSedeEducativa = NombreSedeEducativa;
        this.NIDSedeEducativa = NIDSedeEducativa;
    }

    public int getIdMatricula() {
        return idMatricula;
    }

    public void setIdMatricula(int idMatricula) {
        this.idMatricula = idMatricula;
    }

    public int getIdEstudiante() {
        return idEstudiante;
    }

    public void setIdEstudiante(int idEstudiante) {
        this.idEstudiante = idEstudiante;
    }

    public String getNombreEstudiante() {
        return NombreEstudiante;
    }

    public void setNombreEstudiante(String NombreEstudiante) {
        this.NombreEstudiante = NombreEstudiante;
    }

    public String getApellidoEstudiante() {
        return ApellidoEstudiante;
    }

    public void setApellidoEstudiante(String ApellidoEstudiante) {
        this.ApellidoEstudiante = ApellidoEstudiante;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }

    public String getFechaMatricula() {
        return fechaMatricula;
    }

    public void setFechaMatricula(String fechaMatricula) {
        this.fechaMatricula = fechaMatricula;
    }

    public String getGrado() {
        return grado;
    }

    public void setGrado(String grado) {
        this.grado = grado;
    }

    public String getNombreSedeEducativa() {
        return NombreSedeEducativa;
    }

    public void setNombreSedeEducativa(String NombreSedeEducativa) {
        this.NombreSedeEducativa = NombreSedeEducativa;
    }

    public String getNIDSedeEducativa() {
        return NIDSedeEducativa;
    }

    public void setNIDSedeEducativa(String NIDSedeEducativa) {
        this.NIDSedeEducativa = NIDSedeEducativa;
    }

   
}
