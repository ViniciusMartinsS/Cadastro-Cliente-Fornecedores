package br.com.fatecpg.controle;

import java.util.ArrayList;

public class ControleCl {

    private String nome;
    private String rg;
    private String cpf;
    private String email;
    private String telefone;
    private String endereco;

    public static ArrayList<ControleCl> list;

    public static ArrayList<ControleCl> getlist() {
        if (list == null) {
            list = new ArrayList<>();
            ControleCl ClienteN = new ControleCl();
            ClienteN.setNome("Joséfa Linda Penteado");
            ClienteN.setRg("387171686sp");
            ClienteN.setCpf("389.147.494-98");
            ClienteN.setTelefone("(13)3673-7403");
            ClienteN.setEmail("alt-f4@gmail.com");
            ClienteN.setEndereco("Rua Alburqueque, 120 - Santos, São Paulo");
            list.add(ClienteN);
        }
        return list;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    //método para alterar
    public void alterar(String escolha, int i, String change) {
        escolha.toLowerCase();
        if (escolha == "nome") {
            list.get(i).setNome(change);
        } else if (escolha == "rg") {
            list.get(i).setRg(change);
        } else if (escolha == "cpf") {
            list.get(i).setCpf(change);
        } else if (escolha == "telefone") {
            list.get(i).setTelefone(change);
        } else if (escolha == "email") {
            list.get(i).setEmail(change);
        } else if (escolha == "endereco") {
            list.get(i).setEndereco(change);
        }
        
    }

}
