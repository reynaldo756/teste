package MODEL;

public class Disciplina {
    
    private int id;
    private String nome_d;
    private String carga_h;
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public String getNome() {
        return nome_d;
    }
    
    public void setNome(String nome_d) {
        this.nome_d = nome_d;
    }
    
    public String getCarga() {
        return carga_h;
    }
    
    public void setCarga(String carga_h) {
        this.carga_h = carga_h;
    }
}
