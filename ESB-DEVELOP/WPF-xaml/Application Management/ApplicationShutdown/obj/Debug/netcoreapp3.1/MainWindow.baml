   M S B A M L   `   `   `  ����N  JApplicationShutdown, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:ApplicationShutdownApplicationShutdown  5   	   $    ApplicationShutdown.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:ApplicationShutdown     5   	   -   5          � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)   .��5	      ]� .+�5
   
   �� $	��Top=�6    �� Orientation$ 
Horizontal=�6*   .+�5      �� $
��Left=�6   .��6/   Shutdown Mode:6?   �� 5      -   5        $��shutdownModeListBox��5   2   $
��Left=�6   62   5      �� 5   
   $	��Top=�6   $ 
Horizontal=�6*   .+�5      �� $
��Left=�6   .��6/   0.Application Exit Code (for explicit shutdown):6_   �� 5      -   5        $��appExitCodeTextBox��5   1   $
��Left=�6   .��6K   06N   5      �� 5   
   -   5        $	��Top=�5      .��6D   
New Window6P   �� 5   
   -   5        $	��Top=�5      .��6K   )'Shutdown Explicitly (Passing Exit Code)6t   �� 5   
   5      5      