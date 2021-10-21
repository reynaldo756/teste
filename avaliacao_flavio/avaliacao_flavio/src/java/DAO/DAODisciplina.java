package DAO;
        
import MODEL.Disciplina;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAODisciplina {
    
        private Connection conn;
        private PreparedStatement stmt;
        private Statement st;
        private ResultSet rs;
        private ArrayList<Disciplina> lista = new ArrayList<>();
        
        public DAODisciplina(){
            conn = new Conexao().getConexao();
        }
        
        public void inserirDisciplina(Disciplina disciplina){
            try{
                String sql = "INSERT INTO tb_disciplina (nome_d,carga_h)" + "VALUES (?,?)";
                conn = new Conexao().getConexao();
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, disciplina.getNome());
                stmt.setString(2, disciplina.getCarga());
                stmt.execute();
                stmt.close();
                
            }catch(Exception erro){
                throw new RuntimeException("Erro Inserir Cliente: "+erro);
            }
        }
        
        public ArrayList<Disciplina> listarDisciplina(){
        
            try{
                String sql = "SELECT * FROM tb_disciplina";
                conn = new Conexao().getConexao();
                stmt = conn.prepareStatement(sql);
                rs = stmt.executeQuery();
                
                while(rs.next()){
                    Disciplina disciplina = new Disciplina();
                    disciplina.setId(rs.getInt("id"));
                    disciplina.setNome(rs.getString("nome_d"));
                    disciplina.setCarga(rs.getString("carga_h"));
                    lista.add(disciplina);
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro no Listar Disciplinas: "+erro);
            }
            
            return lista;
        }
        
        public ArrayList<Disciplina> listarDisciplinaNome(String valor){
            
            try{
                String sql = "SELECT * FROM tb_disciplina WHERE nome_d like'%"+valor+"%'";
                conn = new Conexao().getConexao();
                st = conn.createStatement();
                rs = st.executeQuery(sql);
                
                while(rs.next()){
                    Disciplina disciplina = new Disciplina();
                    disciplina.setId(rs.getInt("id"));
                    disciplina.setNome(rs.getString("nome_d"));
                    disciplina.setCarga(rs.getString("carga_h"));
                    lista.add(disciplina);
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro no Listar Disciplina: "+erro);
            }
            
            return lista;
        }
        
        public void atualizarDisciplina(Disciplina disciplina){
 
            try{
                String sql = "UPDATE tb_disciplina SET nome_d = ?, carga_h = ? "
                    + "WHERE id=?";
                conn = new Conexao().getConexao();
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, disciplina.getNome());
                stmt.setString(2, disciplina.getCarga());
                stmt.setInt(3, disciplina.getId());
                stmt.execute();
                stmt.close();
                
            }catch(Exception erro){
                throw new RuntimeException("Erro ao atualizar disciplina "+erro);
            }
        }
        
        public void excluirDisciplina(int valor){
            try{
                conn = new Conexao().getConexao();
                String sql = "DELETE FROM tb_disciplina WHERE id = "+valor;
                st = conn.createStatement();
                st.execute(sql);
                st.close();
                
            }catch(Exception erro){
                throw new RuntimeException("Erro ao excluir Disciplina "+erro);
            }
        }
}
