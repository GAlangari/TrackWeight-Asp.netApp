using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using IT331ProjectDLayer;

namespace IT331ProjectBLayer
{
    public class BusinessLayer {}
    public class CLSBussLayer
    {
        ClsDataLayer objDAL = new ClsDataLayer();

        public object SelectWeightData(String _username, int _weight, DateTime _date)
        {
            return objDAL.SelectWeightData(_username, _weight, _date);
        }

        public void InsertUserData(String _username, String _email, String _password)
        {
            objDAL.InsertUserData(_username, _email, _password);
        }

        public void InsertUserWieght (String _username, int _weight, DateTime _date)
        {
            objDAL.insertUserWieght (_username, _weight, _date);
        }

        public Boolean SignIn(String _username, String _password)
        {
            return objDAL.SignIn( _username,  _password);
        }      

    } // End of CLSBussLayer
}
