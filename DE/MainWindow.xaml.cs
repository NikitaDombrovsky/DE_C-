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

namespace DE
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        int _form = 1;
        int s;
        string _form2;
        private Employee _employee = new Employee();
        public MainWindow()
        {
            InitializeComponent();

            DataContext = _employee;
            EmployeeDataGrid.ItemsSource = Расчет_премииEntities.GetContext().Employees.ToList();


        }
        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {

        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            Window1 window1 = new Window1(null);
            window1.Show();
            Hide();

        }
        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            if (EmployeeDataGrid.SelectedItem != null)
            {
                Window1 window1 = new Window1(EmployeeDataGrid.SelectedItem as Employee);
                window1.Show();
                Hide();
            }
            else
            {
                MessageBox.Show("!");
            }
        }
        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            if (EmployeeDataGrid.SelectedItem != null)
            {
                var employeeForRemoving = EmployeeDataGrid.SelectedItems.Cast<Employee>().ToList();
                if (MessageBox.Show($"Вы точно хотите удалить следующее {employeeForRemoving.Count()} элементов?", "Внимание",
                    MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                {
                    try
                    {
                        Расчет_премииEntities.GetContext().Employees.RemoveRange(employeeForRemoving);
                        Расчет_премииEntities.GetContext().SaveChanges();
                        MessageBox.Show("Данные удалены!");
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message.ToString());
                    }
                }
            }
            else
            {
                MessageBox.Show("Выберите!");
            }
          
        }
    }
}
