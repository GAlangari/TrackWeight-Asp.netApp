using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;

using System.Configuration;



namespace IT331ProjectDLayer
{
    public class DataLayer {} // End of DataLayer

    public class ClsDataLayer
    {

        // Declear DataTable 
        DataSet1.readWeightDataTable DTWeight = new DataSet1.readWeightDataTable();

        // Declear DataTable 
        DataSet1TableAdapters.readWeightTableAdapter TAWeight = new DataSet1TableAdapters.readWeightTableAdapter();

        //for select record from database
        public object SelectWeightData (String _username, int _weight, DateTime _date)
        {
             return DTWeight = TAWeight.GetData(_username, _weight, _date);            
        }


        public void insertUserWieght(String _username, int _weight, DateTime _date)
        {
            int number = TAWeight.Insert(_username, _weight, _date);

        }


        // Declear DataTable 
        DataSet1.readUserDataTable DTUser = new DataSet1.readUserDataTable();

        // Declear DataTable 
        DataSet1TableAdapters.readUserTableAdapter TAUser = new DataSet1TableAdapters.readUserTableAdapter();

        //for select record from database
        public void InsertUserData(String _username, String _email, String _password)
        {
             int number = TAUser.Insert(_username, _email, _password);
        }

        public Boolean SignIn(String _username, String _password)
        {   
            DTUser= TAUser.GetData();
            Boolean flag = false;

            foreach (DataRow row in DTUser.Rows)
            {
                if (row["username"].ToString().Equals(_username) && row["password"].ToString().Equals(_password))
                    flag = true;
            }
             
            return flag; 
        } // End of SignIn

    } //End of ClsDataLayer
}
