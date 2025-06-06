﻿using Exam_Module.Model;
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

namespace Exam_Module.Pages
{
    /// <summary>
    /// Логика взаимодействия для ItemsListPage.xaml
    /// </summary>
    public partial class ItemsListPage : Page
    {
        public ItemsListPage()
        {
            InitializeComponent();
            ItemsListView.ItemsSource = ExamDB_ModuleEntities.GetContext().Products.ToList();
        }
    }
}
