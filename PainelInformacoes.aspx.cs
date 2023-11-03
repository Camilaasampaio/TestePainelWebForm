using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestePainel
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void bntProximoPessoais_Click(object sender, EventArgs e)
        {
            lblAviso.Text = "";
            string nome = txtbNome.Text;
            string sobrenome = txtbSobrenome.Text;
            string celular = txtbCelular.Text;
            string genero = "";

            foreach (ListItem item in dpdlGenero.Items)
            {
                if (item.Selected)
                {
                    genero = item.Value;
                }
            } 

            if (nome == null || nome.Length == 0)
            {
                lblAviso.Text = "Preencha o nome, por gentileza.";
            }
            else if (sobrenome == null || sobrenome.Length == 0)
            {
                lblAviso.Text = "Preencha o sobrenome, por gentileza.";
            }
            else if (celular == null || celular.Length == 0)
            {
                lblAviso.Text = "Preencha o celular, por gentileza.";
            }
            else if (genero == null || genero.Length == 0)
            {
                lblAviso.Text = "Coloque o seu gênero, por gentileza.";
            }
            else
            {
                lblAviso.Text = "";
                PainelInformacoesPessoais.Visible = false;
                PainelEndereco.Visible = true;
                PainelLogin.Visible = false;
            }
        }

        protected void btnVoltarEndereco_Click(object sender, EventArgs e)
        {
            lblAviso.Text = "";
            PainelInformacoesPessoais.Visible = true;
            PainelEndereco.Visible = false;
            PainelLogin.Visible = false;

        }

        protected void btnProximoEndereco_Click(object sender, EventArgs e)
        {
            lblAviso.Text = "";
            string endereco = txtbbEndereco.Text;
            string cidade = txtbCidade.Text;
            string cep = txtbCep.Text;

            if (endereco == null || endereco.Length == 0)
            {
                lblAviso.Text = "Preencha o endereço, por gentileza";
            }
            else if (cidade == null || cidade.Length == 0)
            {
                lblAviso.Text = "Preencha a cidade, por gentileza";
            }
            else if (cep == null || cep.Length == 0)
            {
                lblAviso.Text = "Preencha o seu CEP, por gentileza";
            }
            else
            {
                lblAviso.Text = "";
                PainelInformacoesPessoais.Visible = false;
                PainelEndereco.Visible = false;
                PainelLogin.Visible = true;
            }              
        }

        protected void btnVoltarLogin_Click(object sender, EventArgs e)
        {
            lblAviso.Text = "";
            PainelInformacoesPessoais.Visible = false;
            PainelEndereco.Visible = true;
            PainelLogin.Visible = false;
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            lblAviso.Text = "";
            string usuario = txtbUsuario.Text;
            string senha = txtbSenha.Text;

            if (usuario == null || usuario.Length == 0)
            {
                lblAviso.Text = "Preencha o seu usuário, por gentileza";
            }
            else if (senha == null || senha.Length == 0)
            {
                lblAviso.Text = "Preencha sua senha, por gentileza";
            }
            else 
            {
                lblAviso.Text = "Enviado com sucesso!!!";
            }
        }
    }
}