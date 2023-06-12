using BussinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_Forms
{
    public partial class Cadastro : System.Web.UI.Page
    {
        PessoasLogic logic = new PessoasLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //var listPessoas = logic.PessoasList();
                //grvListPessoas.DataSource = listPessoas;
                //grvListPessoas.DataBinf();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}