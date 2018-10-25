﻿using System;
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
        }
        XDocument xmlDoc = XDocument.Parse(File.ReadAllText(@"../../libri.xml", System.Text.Encoding.UTF8), LoadOptions.None);



        private void btn_cerca_aut_Click(object sender, RoutedEventArgs e)
        {
            
            IEnumerable<string> libro = from Biblioteca in xmlDoc.Descendants("wiride")

                                        where Biblioteca.Element("autore").Element("nome").Value == txt_nome.Text && Biblioteca.Element("autore").Element("cognome").Value == txt_cognome.Text
                                        select Biblioteca.Element("titolo").Value;


            foreach (string name in libro)
            {
                lbl_libri_aut.Items.Add(name);

            }
            
        }

        private void btn_copie_libro_Click(object sender, RoutedEventArgs e)
        {
            int x = 0;
            string titolo = txt_libro_da_cerc.Text;
            IEnumerable<string> libro = from Biblioteca in xmlDoc.Descendants("wiride")

                                        where Biblioteca.Element("titolo").Value == titolo
                                        select Biblioteca.Element("titolo").Value;
            foreach (string name in libro)
            {
                x++;
            }
            lbl_libri_aut.Items.Add("Sono presenti " + x + " copie/a di " +  titolo);
        }

        private void btn_canc_abstract_Click(object sender, RoutedEventArgs e)
        {
            xmlDoc.Nodes().OfType<XElement>().Elements("wiride").Elements("abstract").Remove();
            
            xmlDoc.Save(@"../../libri.xml");
        }

        private void btn_cerca_gen_libro_Click(object sender, RoutedEventArgs e)
        {
            string gen = txt_genere.Text;
            //Genere Romanzo
            IEnumerable<string> libro = from Biblioteca in xmlDoc.Descendants("wiride")

                                        where Biblioteca.Element("genere").Value == gen
                                        select Biblioteca.Element("titolo").Value;

            int count = 0;
            foreach (string name in libro)
            {
                count++;

            }
            lbl_libri_aut.Items.Add("Il numero di libri di genere: " + gen + " è " + count);
        }

        private void btn_modif_gen_Click(object sender, RoutedEventArgs e)
        {

        }
    }

   
}
