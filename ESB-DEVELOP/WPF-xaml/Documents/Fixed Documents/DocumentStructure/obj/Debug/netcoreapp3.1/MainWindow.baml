   M S B A M L   `   `   `  ����L  HDocumentStructure, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:DocumentStructureDocumentStructure  5   	   "    DocumentStructure.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:DocumentStructure     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    J� CommandBindings 5	      )  #System.Windows.Input.CommandBinding  5
   
   -   5           Command$ ApplicationCommands.Open��5
      6=     5   
   -   5        $ ApplicationCommands.Close��5      6=     5   
   -   5        $ ApplicationCommands.Print��5      6=   .��5      ]� .+�5   
   o� $	��Top=�6   .@�5      m� $
��File��6   .@�5      m�  m� Command$ ApplicationCommands.Open��6   $��Open...��6>   m� 5      -   5        $��menuFileClose��5      $ ApplicationCommands.Close��5      ${�False��5   (   �� 5      m� 5      -   5        $��menuFileAddStructure��5   6   $��Add Structure...��6   $
{�True��5      6$   �� 5      m� 5      -   5        $��menuFilePrint��5      $ ApplicationCommands.Print��5      ${�False��5   (   $��Print...��6:   �� 5      m� 5      -   5        $��E_xit��5      6*   5      m� 5!      $
��View��6   .@�5"      m� -   5        $��menuViewIncreaseZoom��5#      $% NavigationCommands.IncreaseZoom��5"      ${�False��5#   /   m� 5$      -	   5        $��menuViewDecreaseZoom��5%      $% NavigationCommands.DecreaseZoom��5$      ${�False��5%   /   �� 5&      m� 5'      $$ ComponentCommands.ScrollPageUp��6   $��Previous Page��6D   m� 5(      $&  ComponentCommands.ScrollPageDown��6   $��	Next Page��6F   m� 5)      $" NavigationCommands.FirstPage��6   m� 5*      $! NavigationCommands.LastPage��6   �� 5+      m� 5,      $ ApplicationCommands.Copy��6   5-      5/      �� 52   
   $	��Top=�6   
�������.+�53      �� -
   5        $��promptBlock��53      $��1q�6+    �� Padding$ 5q�66   $��Verdana)�54      
�������6'   55      � 57   
    � RowDefinitions 58      �� 59      $��* �6     � ColumnDefinitions 5<      �� 5=      $	��30* �6#   �� 5>      $
��Auto �6#   �� 5?      $	��70* �6#   .+�5B      � $��0��6   $��0��6#   
������� 5C      �� 5D      $	��50* �6$   �� 5E      $
��Auto �6$   �� 5F      $	��50* �6$   .+�5I      �� $��0��6   $
��Auto=�6,   .��5J      �� 
�������.+�5K      �� $ 3q�6$   $
��Bold"�60   Status5M      �� 5N      -   5        $��statusBlock��5N   $   $��Stretch=�67   $ 3q�5O      $
��Wrap=�6$   5P      5Q      �� 5S      $��1��6   
�������$��Stretch=�5T      $��Center=�65    �� ShowsPreview$
 True��5U      �� 5W      $��2��6   $
��Auto=�6,   .��5X      �� 
�������.+�5Y      �� -   5        $��descriptionBlockTitle��5Y   $   $ 3q�6A   $��Verdana)�5Z      $
��Bold"�6-   Description5\      �� 5]      -   5        $��descriptionBlock��5]   $   $ 3q�6<   $��Verdana)�5^      $
��Wrap=�6-   5_      5`      5a      �� 5c      $��1��6   
�������$��Center=�6B   $��Stretch=�5d      $
 True��61   Z� 5f      -   5        $��	docViewer��5f   -   $��2��6    5g        5h      -   5        $ ApplicationCommands.Print��5h   %   6I   5j      5l      5n      5o      