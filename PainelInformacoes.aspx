<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PainelInformacoes.aspx.cs" Inherits="TestePainel.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="Content/Site.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title></title>
</head>
<body class="bg">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <form id="form1" runat="server" class="container text-light">
        <div class="bordaAzul col-11 align-content-center centralizar" style="height: 30rem;">
            <asp:Panel ID="PainelPrincipal" runat="server" CssClass="col-8 bordaAzul">
                <!-- Painel Informações Pessoais-->
                <asp:Panel ID="PainelInformacoesPessoais" runat="server">
                    <h2 class="text-center">Informações pessoais</h2>
                    <!--Nome-->
                    <div class="row g-3 align-items-center text-end margem">
                        <div class="col-sm-3">
                            <i class="fa-solid fa-user" style="color: #65bfec;"></i>
                            <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtbNome" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <!--Sobrenome-->
                    <div class="row g-3 align-items-center text-align-right margem">
                        <div class="col-sm-3  text-end">
                            <asp:Label ID="lblSobrenome" runat="server" Text="Sobrenome:"></asp:Label>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtbSobrenome" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <!--Celular-->
                    <div class="row g-3 align-items-center margem">
                        <div class="col-sm-3  text-end">
                            <i class="fa-solid fa-mobile-screen-button" style="color: #65bfec;"></i>
                            <asp:Label ID="lblCelular" runat="server" Text="Celular:"></asp:Label>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtbCelular" runat="server" TextMode="Phone"></asp:TextBox>
                        </div>
                    </div>
                    <!--Gênero-->
                    <div class="row g-3 align-items-center margem">
                        <div class="col-sm-3  text-end">
                            <asp:Label ID="lblGenero" runat="server" Text="Gênero:"></asp:Label>
                        </div>
                        <div class="col-sm-3  text-end">
                            <asp:DropDownList ID="dpdlGenero" runat="server" CssClass="col-12">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Feminino</asp:ListItem>
                                <asp:ListItem>Masculino</asp:ListItem>
                                <asp:ListItem>Prefiro não informar</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <!--Botão Avançar-->
                    <div class="row g-3 align-items-center margem" style="display: flex; justify-content: center; align-items: center;">
                        <div class="col-6">
                            <asp:Button ID="btnProximoPessoais" runat="server" Text="Próximo" CssClass="col-4 btn btn-dark" OnClick="bntProximoPessoais_Click"></asp:Button>
                        </div>
                    </div>
                </asp:Panel>
                <!-- Painel Endereço-->
                <asp:Panel ID="PainelEndereco" runat="server" Visible="False">
                     <h2 class="text-center">Detalhes do endereço</h2>
                    <!--Endereço-->
                    <div class="row g-3 align-items-center text-end margem">
                        <div class="col-sm-3">
                            <i class="fa-solid fa-house" style="color: #65bfec;"></i>
                            <asp:Label ID="lblEndereco" runat="server" Text="Endereço:"></asp:Label>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtbbEndereco" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <!--Cidade-->
                    <div class="row g-3 align-items-center text-end margem">
                        <div class="col-sm-3">
                            <i class="fa-solid fa-city" style="color: #65bfec;"></i>
                            <asp:Label ID="lblCidade" runat="server" Text="Cidade:"></asp:Label>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtbCidade" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <!--CEP-->
                    <div class="row g-3 align-items-center text-end margem">
                        <div class="col-sm-3">
                            <asp:Label ID="lblCep" runat="server" Text="CEP:"></asp:Label>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtbCep" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <!--Botão Voltar e Próximo-->
                    <div class="row g-3 align-items-center margem" style="display: flex; justify-content: center; align-items: center;">
                        <div class="col-6">
                            <asp:Button ID="btnVoltarEndereco" runat="server" Text="Voltar" CssClass="col-4 btn btn-dark" OnClick="btnVoltarEndereco_Click"></asp:Button>
                        </div>
                        <div class="col-6">
                            <asp:Button ID="btnProximoEndereco" runat="server" Text="Próximo" CssClass="col-4 btn btn-dark" OnClick="btnProximoEndereco_Click"></asp:Button>
                        </div>
                    </div>
                </asp:Panel>
                <!-- Painel Login-->
                <asp:Panel ID="PainelLogin" runat="server" Visible="False">
                    <h2 class="text-center">Área do login</h2>
                    <!--Usuário-->
                    <div class="row g-3 align-items-center text-end margem">
                        <div class="col-sm-3">
                            <i class="fa-solid fa-user" style="color: #65bfec;"></i>
                            <asp:Label ID="lblUsuario" runat="server" Text="Usuário:"></asp:Label>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtbUsuario" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <!--Senha-->
                    <div class="row g-3 align-items-center text-end margem">
                        <div class="col-sm-3">
                            <i class="fa-solid fa-lock" style="color: #65bfec;"></i>
                            <asp:Label ID="lblSenha" runat="server" Text="Senha:"></asp:Label>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtbSenha" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <!--Botões Voltar e Enviar-->
                    <div class="row g-3 align-items-center margem" style="display: flex; justify-content: center; align-items: center;">
                        <div class="col-6">
                            <asp:Button ID="btnVoltarLogin" runat="server" Text="Voltar" CssClass="col-4 btn btn-dark" OnClick="btnVoltarLogin_Click"></asp:Button>
                        </div>
                        <div class="col-6">
                            <asp:Button ID="btnEnviar" runat="server" Text="Enviar" CssClass="col-4 btn btn-dark" OnClick="btnEnviar_Click"></asp:Button>
                        </div>
                    </div>
                </asp:Panel>
                <h4 class="text-center">
                    <asp:Label ID="lblAviso" runat="server" Text="" CssClass="text-warning"></asp:Label>
                </h4>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
