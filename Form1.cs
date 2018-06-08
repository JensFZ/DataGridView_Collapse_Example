using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace DataGridView_Collapse_Example
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        void fuelle_Datagrid()
        {
            const string queryStudent = "SELECT * FROM Test_Student";
            const string queryMarks = "SELECT * FROM Test_Marks";

            DataTable dtstudent = FuelleDataTable(queryStudent);
            DataTable dtstudentMarks = FuelleDataTable(queryMarks);
         
            DataSet dsDataset = new DataSet();
            dsDataset.Tables.Add(dtstudent);
            dsDataset.Tables.Add(dtstudentMarks);

            DataRelation Datatablerelation = new DataRelation("DetailsMarks", dsDataset.Tables[0].Columns["ID"], dsDataset.Tables[1].Columns["StudentID"], true);
            dsDataset.Relations.Add(Datatablerelation);
            dataGrid1.DataSource = dsDataset.Tables[0];
        }

        private void button1_Click(object sender, EventArgs e)
        {
            fuelle_Datagrid();
        }

        private DataTable FuelleDataTable(string query)
        {
            DataTable dt = new DataTable();

            const string Server = "localhost";
            const string Username = "test";
            const string Passwort = "test";
            const string Database = "test";

            using (MySqlConnection MyCon = new MySqlConnection("Persist Security Info=False;server=" + Server + ";user id=" + Username + ";Password=" + Passwort + ";Connection Timeout = 3000;Allow User Variables=True;ConvertZeroDateTime=true;SslMode=none;database = " + Database))
            {
                MyCon.Open();
                using (MySqlDataAdapter My_DA = new MySqlDataAdapter(query, MyCon))
                {
                    My_DA.Fill(dt);
                }
                MyCon.Close();
            }
            return dt;
        }

    }
}
