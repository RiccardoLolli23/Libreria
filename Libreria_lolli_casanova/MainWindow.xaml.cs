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
using System.IO;
using System.Collections.Generic;

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

            XDocument xmlDoc = XDocument.Parse(File.ReadAllText(@"../../libri.xml", System.Text.Encoding.UTF8), LoadOptions.None);

            IEnumerable<string> libro = from Biblioteca in xmlDoc.Descendants("wiride")

                                        select Biblioteca.Element("codice_scheda").Value;           
        }
    }
}
