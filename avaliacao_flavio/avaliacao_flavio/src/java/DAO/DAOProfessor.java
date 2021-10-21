package DAO;
        
import MODEL.Professor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAOProfessor {
    
        private Connection conn;
        private PreparedStatement stmt;
        private Statement st;
        private ResultSet rs;
        private ArrayList<Professor> lista = new ArrayList<>();
        
        public DAOProfessor(){
            conn = new Conexao().getConexao();
        }
        
        public void inserirProfessor(Professor professor){
            try{
                String sql = "INSERT INTO tb_professor (nome_p,email,senha)" + "VALUES (?,?,?)";
                conn = new Conexao().getConexao();
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, professor.getNome2());
                stmt.setString(2, professor.getEmail());
                stmt.setString(3, professor.getSenha());
                stmt.execute();
                stmt.close();
                
            }catch(Exception erro){
                throw new RuntimeException("Erro Inserir Cliente: "+erro);
            }
        }
        
        public ArrayList<Professor> listarProfessor(){
        
            try{
                String sql = "SELECT * FROM tb_professor";
                conn = new Conexao().getConexao();
                stmt = conn.prepareStatement(sql);
                rs = stmt.executeQuery();
                
                while(rs.next()){
                    Professor professor = new Professor();
                    professor.setId(rs.getInt("id"));
                    professor.setNome2(rs.getString("nome_p"));
                    professor.setEmail(rs.getString("email"));
                    professor.setSenha(rs.getString("senha"));
                    lista.add(professor);
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro no Listar Professores: "+erro);
            }
            
            return lista;
        } 
        
        public ArrayList<Professor> listarProfessorNome(String valor){
            
            try{
                String sql = "SELECT * FROM tb_professor WHERE nome_p like'%"+valor+"%'";
                conn = new Conexao().getConexao();
                st = conn.createStatement();
                rs = st.executeQuery(sql);
                
                while(rs.next()){
                    Professor professor = new Professor();
                    professor.setId(rs.getInt("id"));
                    professor.setNome2(rs.getString("nome_p"));
                    professor.setEmail(rs.getString("email"));
                    professor.setSenha(rs.getString("senha"));
                    lista.add(professor);
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro no Listar Professores: "+erro);
            }
            
            return lista;
        }
        
        public void atualizarProfessor(Professor professor){
 
            try{
                if(professor.getSenha() != null && professor.getSenha() != ""){
             String sql = "UPDATE tb_professor SET nome_p = ?, email = ? , senha = ?"
                    + "WHERE id=?";
                conn = new Conexao().getConexao();
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, professor.getNome2());
                stmt.setString(2, professor.getEmail());
                stmt.setString(3, professor.getSenha());
                stmt.setInt(4, professor.getId());
                stmt.execute();
                stmt.close();
        }else{
                    String sql = "UPDATE tb_professor SET nome_p = ?, email = ?"
                    + "WHERE id=?";
                conn = new Conexao().getConexao();
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, professor.getNome2());
                stmt.setString(2, professor.getEmail());
                stmt.setInt(3, professor.getId());
                stmt.execute();
                stmt.close();
                }
                
                
            }catch(Exception erro){
                throw new RuntimeException("Erro ao atualizar o professor "+erro);
            }
        }
        
        public void excluirProfessor(int valor){
            try{
                conn = new Conexao().getConexao();
                String sql = "DELETE FROM tb_professor WHERE id = "+valor;
                st = conn.createStatement();
                st.execute(sql);
                st.close();
                
            }catch(Exception erro){
                throw new RuntimeException("Erro ao excluir Disciplina "+erro);
            }
        }
}
