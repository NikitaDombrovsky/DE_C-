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

namespace DE
{
    /// <summary>
    /// Логика взаимодействия для Window1.xaml
    /// </summary>
    public partial class Window1 : Window
    {
        //int s = 0;
        int s = 0;
        private Employee _employee = new Employee();
        public Window1(Employee _selectedEmployess)
        {
            InitializeComponent();
            s = 0;
            if (_selectedEmployess != null)
            {
                s = 1;
                _employee = _selectedEmployess;
            }
            DataContext = _employee;
            ComboPost.ItemsSource = Расчет_премииEntities.GetContext().Positions.ToList();
        }
        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (string.IsNullOrWhiteSpace(_employee.FIO))
                errors.AppendLine("ФИО!");
            if (string.IsNullOrWhiteSpace(Convert.ToString(_employee.Position)))
                errors.AppendLine("Должность!");
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_employee.ID_Employee == 0)
                Расчет_премииEntities.GetContext().Employees.Add(_employee);
            try
            {
                Расчет_премииEntities.GetContext().SaveChanges();
                if (s == 1)
                {
                    MessageBox.Show("Изменение успешно!");
                }
                else
                {
                    MessageBox.Show("Добавление успешно!");
                }

                MainWindow mainWindow = new MainWindow();
                mainWindow.Show();
                Hide();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());

            }
        }
    }
}
