using Exam_Module.Model;
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
using System.Windows.Shapes;

namespace Exam_Module
{
    /// <summary>
    /// Логика взаимодействия для LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void Login_CLick(object sender, RoutedEventArgs e)
        {
            var currentUser = ExamDB_ModuleEntities.GetContext().Users
                .FirstOrDefault(p => p.Login == LoginBox.Text && p.Password == PassBox.Password);
            if (currentUser != null)
            {
                MainWindow mainWindow = new MainWindow();
                mainWindow.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("Не верный логин или пароль!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
            }    

        }
    }
}
