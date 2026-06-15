# Projeto-A3-rica-
O código da interface esta na pasta INTERFACE SWING.zip
E o banco de dados está na pasta BD_up.sql
Sistema desenvolvido em Java para avaliação de transporte público, com foco em registrar a experiência dos usuários em relação ao tempo de espera, lotação e qualidade do serviço.

A aplicação permite cadastrar avaliações, consultar o tempo médio de espera dos trens com base nas avaliações recentes e exportar um dashboard em formato compatível com Excel.

---

Funcionalidades
Avaliação de transporte
O usuário pode registrar uma avaliação informando:

Nome
CPF
Tipo de transporte
Linha
Estação
Data da viagem
Hora da viagem
Tempo de espera em minutos
Nota para tempo de espera
Nota para lotação
Nota para qualidade
Comentário opcional

As informações são salvas no banco de dados MySQL.

---

Consulta rápida do trem
A aplicação possui uma tela de consulta pública, sem necessidade de login.

Nessa tela é possível visualizar o tempo médio de espera dos trens com base nas avaliações registradas no banco.

A consulta mostra:

Transporte
Linha
Estação
Média de intervalo em minutos
Quantidade de avaliações usadas
Última avaliação registrada

Caso não existam avaliações na última hora, o sistema pode exibir avaliações existentes para evitar que a tela fique vazia.

---

Área administrativa
Existe uma área exclusiva para administrador.

Credenciais padrão:

```text
Email: admin@saojudas.com
Senha: 12345678
