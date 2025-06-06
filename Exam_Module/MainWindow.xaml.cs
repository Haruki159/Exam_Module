using Exam_Module.Class;
using Exam_Module.Pages;
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

namespace Exam_Module
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Manager.MainFrame = MainFrame;
        }

        private void Exit_Click(object sender, RoutedEventArgs e)
        {
            LoginWindow loginWindow   = new LoginWindow();
            loginWindow.Show();
            this.Close();
        }

        private void Users_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new UserListPage());
        }

        private void Products_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new ItemsListPage());
        }
    }
}
