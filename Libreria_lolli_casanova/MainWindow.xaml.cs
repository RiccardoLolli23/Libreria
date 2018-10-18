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
using System.Linq;
using System.Xml.Linq;

namespace Libreria_lolli_casanova
{
    /// <summary>
    /// Logica di interazione per MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            IEnumerable<string> libro = from Biblioteca in XDocument.Load(@"../../libri.XML")
                                                                             .Element("Students").Elements("Studente")                                        
                                        orderby (int)Biblioteca.Element("codice_scheda") descending
                                        select Biblioteca.Element("codice_scheda").Value;
        }
    }
}
