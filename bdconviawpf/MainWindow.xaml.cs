using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using MySql.Data.MySqlClient;

namespace bdconviawpf
{
    class db
    {
        MySqlConnection Connection;
        

        public db(string server, string user, string pass, string database)
        {
            MySqlConnectionStringBuilder Connect = new MySqlConnectionStringBuilder();
            Connect.Server = server;
            Connect.UserID = user;
            Connect.Password = pass;
            Connect.Port = 3306;
            Connect.Database = database;
            Connect.CharacterSet = "utf8";
            Connection = new MySqlConnection(Connect.ConnectionString);
        }
        public long insert(string surname, string namee, int born, int gen, int children)
        {
            MySqlCommand command = Connection.CreateCommand();
            command.CommandText = "INSERT INTO workers(surname, name, born, gender, child) VALUES(?surname, ?name, ?born, ?gender, ?child)";
            command.Parameters.Add("?surname", MySqlDbType.VarChar).Value = surname;
            command.Parameters.Add("?name", MySqlDbType.VarChar).Value = namee;
            command.Parameters.Add("?born", MySqlDbType.Year).Value = born;
            command.Parameters.Add("?gender", MySqlDbType.Binary).Value = gen;
            command.Parameters.Add("?child", MySqlDbType.Int32).Value = children;
           
            try
            {
                Connection.Open();
                command.ExecuteNonQuery();
                return 0;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                Connection.Close();
            }
            return -1;
        }
    }

    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void NumericOnly(object sender, TextCompositionEventArgs e)
        {
            e.Handled = !(Char.IsDigit(e.Text, 0));
        }

        private void LettersOnly(object sender, TextCompositionEventArgs e)
        {
            e.Handled = Char.IsDigit(e.Text, 0);
        }

        private void Register(object sender, RoutedEventArgs e)
        {
           
            db con = new db("127.0.0.1", "root", "", "work");

            string sur = surname.Text;
            string namee = name.Text;
            int born = Convert.ToInt32(year.Text);
            int gen = Convert.ToInt32(gender.SelectedIndex);
            int children = Convert.ToInt32(child.Text);
                
            if (con.insert(sur,namee,born,gen,children) == -1)
            {
                MessageBox.Show("error");
            }else
            { 
                MessageBox.Show("ok"); 
            }
                
        }

    }
}
