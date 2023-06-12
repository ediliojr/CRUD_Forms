using DataAcessLayer;
using DataAcessLayer.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessLogic
{
    public class PessoasLogic
    {
        PessoasDAL dal = new PessoasDAL();
        public List<Pessoas> PessoasList()
        {
            var listaPessoas = dal.GetPessoasList();
            return listaPessoas;
        }
    }
}
