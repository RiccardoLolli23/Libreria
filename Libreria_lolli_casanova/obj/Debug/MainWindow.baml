   M S B A M L   `   `   `  ����R  NLibreria_lolli_casanova, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:Libreria_lolli_casanovaLibreria_lolli_casanova  5   	   (    "Libreria_lolli_casanova.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:Libreria_lolli_casanova     5   	   -   5          �Name$  Libreria��5   	    � Title$ Libreria��5   	   $��439.447��6   $��628.507��6+   ���	#FFF70707��5	      �� 5
   
   .��5      � $��0,0,2,2q�6   ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ 	#FFDEABAB��6    � Offset$ 0.103Q�61   � 5      $ 	#FFDC2828��6   $
 0.93Q�61   5      .+�5   
   �� -   5         ��Name$ txt_nome��5      $
��Left=�6$   $��23��6?   $��	10,49,0,0q�6K    �� TextWrapping$
 Wrap=�6^   $	��Top=�6r   $��95��6�    � ToolTip$
 Nome��6�   �� 5   
   $.��(Inserire il nome dell'autore da cercare:��6   $
��Left=�6C   $��	10,23,0,0q�6^   $	��Top=�6q   �� 5   
   -   5        	 ��Name$	 btn_cerca_aut��5      $��Cerca autore��6(   $
��Left=�6?   $��	10,77,0,0q�6Z   $	��Top=�6m   $	��212��6�   6�   �� 5   
   $%��Inserire il titolo di un libro:��6   $
��Left=�6:   $��
12,110,0,0q�6U   $	��Top=�6i   $	��210��6�   
 J� RenderTransformOrigin$
 0.5,0.5&�6�   z�5      V� 5      .~�5      �� �� 5      �� 5       �� Angle$ -0.139Q�6&   T� 5      5      5      �� 5    
   -   5        $ txt_libro_da_cerc��5       $
��Left=�6-   $��23��6H   $��
10,136,0,0q�6T   $
 Wrap=�6h   $	��Top=�6|   $	��212��6�   $ Titolo��6�   �� 5!   
   -   5        $	 btn_copie_libro��5!      $��Cerca libro��6*   $
��Left=�6@   $��
10,164,0,0q�6[   $	��Top=�6o   $	��212��6�   6�   �� 5"   
   -   5         ��Name$ lbl_libri_aut��5"      $
��Left=�6)   $	��387��6D   $��	343,9,0,0q�6Q   $	��Top=�6d   $	��266��6|   �� 5#   
   $#��Inserire il genere del libro:��6   $
��Left=�68   $��
10,202,0,0q�6S   $	��Top=�6g   �� 5$   
   -   5        $ 
txt_genere��5$      $
��Left=�6&   $��23��6A   $��
10,228,0,0q�6M   $
 Wrap=�6a   $	��Top=�6u   $	��212��6�   $ Genere��6�   �� 5%   
   -   5        $	 btn_cerca_gen_libro��5%      $��Cerca libro per genere��6.   $
��Left=�6O   $��
10,257,0,0q�6j   $	��Top=�6~   $	��212��6�   6�   �� 5&   
   -	   5        $	 btn_canc_abstract��5&      $��Cancella tag abstract��6,   $
��Left=�6L   $	��Top=�6g   $	��212��6   $��
10,307,0,0q�6�   6�   �� 5'   
   -
   5        $ txt_cognome��5'      $
��Left=�6'   $��23��6B   $��
120,49,0,0q�6N   $
 Wrap=�6b   $	��Top=�6v   $	��102��6�   $ Cognome��6�   �� 5(   
   -   5        $	 btn_modif_gen��5(      $��Modifica genere��6(   $
��Left=�6B   $��
10,282,0,0q�6]   $	��Top=�6q   $	��212��6�   6�   �� 5)   
   -   5        $	 btn_libriShort��5)      $��Crea libriShort.xml��6)   $
��Left=�6G   $��
10,353,0,0q�6b   $	��Top=�6v   $	��212��6�   $��43��6�   6�   5+      5,      