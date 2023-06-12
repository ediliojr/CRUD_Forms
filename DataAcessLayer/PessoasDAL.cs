using DataAcessLayer.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcessLayer
{
    public class PessoasDAL
    {
        FORMSEntities db = new FORMSEntities();
        public List<Pessoas> GetPessoasList()
        {
            var pessoas = db.Pessoas.ToList();
            return pessoas;
        }
    }
}
