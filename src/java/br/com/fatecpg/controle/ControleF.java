package br.com.fatecpg.controle;

import java.util.ArrayList;

public class ControleF {
private String nome;
private String razao;
private String cnpj;
private String email;
private String telefone;
private String endereco;

public static ArrayList<ControleF> list;
public static ArrayList<ControleF> getlist(){
    if(list == null){
    list = new ArrayList<>();
    ControleF Fornecedor1 = new ControleF();
    Fornecedor1.setNome("Scv Locadora");
    Fornecedor1.setRazao("Irmãos Martins");
    Fornecedor1.setCnpj("17.631.134/0001-03");
    Fornecedor1.setTelefone("3673-7403");
    Fornecedor1.setEmail("scv@scvlocadora.com.br");
    Fornecedor1.setEndereco("Rua Caiubi, 946 - Perdizes, São Paulo");
    list.add(Fornecedor1);
    }
       return list;
}


    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRazao() {
        return razao;
    }

    public void setRazao(String razao) {
        this.razao = razao;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
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
}
