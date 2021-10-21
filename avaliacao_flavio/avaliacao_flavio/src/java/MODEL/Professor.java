package MODEL;

public class Professor {
    private int id;
    private String nome_p;
    private String email;
    private String senha;
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public String getNome2() {
        return nome_p;
    }
    
    public void setNome2(String nome_p) {
        this.nome_p = nome_p;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public String getSenha() {
        return senha;
    }
    
    public void setSenha(String senha){
        this.senha = senha;
    }
}
