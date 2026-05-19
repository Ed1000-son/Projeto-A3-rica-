/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.meubancodedados;

import javax.swing.*;
import java.awt.*;

public class InterfaceSistema extends JFrame {

    public InterfaceSistema() {

        setTitle("Sistema de Controle");
        setSize(700, 500);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(EXIT_ON_CLOSE);

        JTabbedPane abas = new JTabbedPane();

        abas.add("Usuários", criarPainelUsuarios());
        abas.add("Locais", criarPainelLocais());
        abas.add("Datas", criarPainelDatas());
        abas.add("Reportes", criarPainelReportes());

        add(abas);

        setVisible(true);
    }

    // ==================================
    // ABA USUÁRIOS (NOME + CPF)
    // ==================================
    private JPanel criarPainelUsuarios() {

        JPanel painel = new JPanel();

        painel.setLayout(new GridLayout(3,2,10,10));

        painel.setBorder(
                BorderFactory.createEmptyBorder(
                        20,20,20,20
                )
        );

        JTextField txtNome = new JTextField();
        JTextField txtCpf = new JTextField();

        JButton btnCadastrar =
                new JButton("Cadastrar");

        painel.add(new JLabel("Nome:"));
        painel.add(txtNome);

        painel.add(new JLabel("CPF:"));
        painel.add(txtCpf);

        painel.add(new JLabel());
        painel.add(btnCadastrar);

        return painel;
    }

    // ==================================
    // ABA LOCAIS
    // ==================================
    private JPanel criarPainelLocais() {

        JPanel painel = new JPanel();

        painel.setLayout(new GridLayout(7,2,10,10));

        painel.setBorder(
                BorderFactory.createEmptyBorder(
                        20,20,20,20
                )
        );

        JTextField txtNomeEspaco =
                new JTextField();

        JTextField txtTipo =
                new JTextField();

        JTextField txtTempo =
                new JTextField();

        JTextField txtAbertura =
                new JTextField();

        JTextField txtFechamento =
                new JTextField();

        JTextField txtEndereco =
                new JTextField();

        JButton btnSalvar =
                new JButton("Salvar Local");

        painel.add(new JLabel("Nome do Espaço:"));
        painel.add(txtNomeEspaco);

        painel.add(new JLabel("Tipo do Espaço:"));
        painel.add(txtTipo);

        painel.add(new JLabel("Tempo Médio Espera:"));
        painel.add(txtTempo);

        painel.add(new JLabel("Horário Abertura:"));
        painel.add(txtAbertura);

        painel.add(new JLabel("Horário Fechamento:"));
        painel.add(txtFechamento);

        painel.add(new JLabel("Endereço:"));
        painel.add(txtEndereco);

        painel.add(new JLabel());
        painel.add(btnSalvar);

        return painel;
    }

    // ==================================
    // ABA DATAS
    // ==================================
    private JPanel criarPainelDatas() {

        JPanel painel = new JPanel();

        painel.setLayout(new GridLayout(6,2,10,10));

        painel.setBorder(
                BorderFactory.createEmptyBorder(
                        20,20,20,20
                )
        );

        JTextField txtDia = new JTextField();
        JTextField txtMes = new JTextField();
        JTextField txtAno = new JTextField();
        JTextField txtSemana = new JTextField();

        JCheckBox chkFeriado =
                new JCheckBox("É Feriado");

        JButton btnSalvar =
                new JButton("Salvar Data");

        painel.add(new JLabel("Dia:"));
        painel.add(txtDia);

        painel.add(new JLabel("Mês:"));
        painel.add(txtMes);

        painel.add(new JLabel("Ano:"));
        painel.add(txtAno);

        painel.add(new JLabel("Dia Semana:"));
        painel.add(txtSemana);

        painel.add(chkFeriado);
        painel.add(new JLabel());

        painel.add(new JLabel());
        painel.add(btnSalvar);

        return painel;
    }

    // ==================================
    // ABA REPORTES
    // ==================================
    private JPanel criarPainelReportes() {

        JPanel painel = new JPanel();

        painel.setLayout(new GridLayout(5,2,10,10));

        painel.setBorder(
                BorderFactory.createEmptyBorder(
                        20,20,20,20
                )
        );

        JTextField txtUsuario =
                new JTextField();

        JTextField txtLocal =
                new JTextField();

        JTextField txtData =
                new JTextField();

        JComboBox<Integer> comboLotacao =
                new JComboBox<>();

        for(int i = 1; i <= 5; i++) {
            comboLotacao.addItem(i);
        }

        JButton btnSalvar =
                new JButton("Registrar");

        painel.add(new JLabel("ID Usuário:"));
        painel.add(txtUsuario);

        painel.add(new JLabel("ID Local:"));
        painel.add(txtLocal);

        painel.add(new JLabel("ID Data:"));
        painel.add(txtData);

        painel.add(new JLabel("Escala Lotação:"));
        painel.add(comboLotacao);

        painel.add(new JLabel());
        painel.add(btnSalvar);

        return painel;
    }

    // ==================================
    // MAIN
    // ==================================
    public static void main(String[] args) {

        SwingUtilities.invokeLater(() -> {
            new InterfaceSistema();
        });
    }
}
