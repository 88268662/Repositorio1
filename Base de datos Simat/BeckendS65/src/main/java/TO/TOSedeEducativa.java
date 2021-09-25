
package TO;


public class TOSedeEducativa {
    
    private String idSedeEducativa;
    private String sedeEducativaCol;
    private String nid;
    

    public TOSedeEducativa() {
    }

    public TOSedeEducativa(String sedeEducativaCol, String nid) {
        this.sedeEducativaCol = sedeEducativaCol;
        this.nid = nid;
        
    }

    public TOSedeEducativa(String idSedeEducativa, String sedeEducativaCol, String nid) {
        this.idSedeEducativa = idSedeEducativa;
        this.sedeEducativaCol = sedeEducativaCol;
        this.nid = nid;
        
    }

    public String getIdSedeEducativa() {
        return idSedeEducativa;
    }

    public void setIdSedeEducativa(String idSedeEducativa) {
        this.idSedeEducativa = idSedeEducativa;
    }

    public String getSedeEducativacol() {
        return sedeEducativaCol;
    }

    public void setSedeEducativacol(String sedeEducativaCol) {
        this.sedeEducativaCol = sedeEducativaCol;
    }

    public String getNid() {
        return nid;
    }

    public void setNid(String nid) {
        this.nid = nid;
    }
    
    
}
