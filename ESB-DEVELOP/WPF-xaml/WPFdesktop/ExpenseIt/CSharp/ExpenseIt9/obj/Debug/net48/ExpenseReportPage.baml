   M S B A M L   `   `   `  ����  
ExpenseIt9!    ExpenseIt.ExpenseReportPage   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5        N� Title$%  ExpenseIt - View Expense Report��5	      .��5      �  � 	Resources 5   
      typeItemTemplate �� XPath  amountItemTemplate��%�   &	        &	 I     �� 5      .R�5      �� ��6   �� $ @ExpenseType��5      �� 5      .R�5      �� ��6   �� $ @ExpenseAmount��5      5      ��5   
   �� 5       �� ImageSource$ watermark.png��6    � ColumnDefinitions 5   
   �� 5      $	��230 �6   �� 5       � RowDefinitions 5!   
   �� 5"      $
��Auto �6   �� 5#      .+�5'   
   �� $��1��6     headerTextStyle#��[ 6    .��6I   Expense Report For:5)      � 5*   
   $��10q�6   $��1��6   $��1��6+    5,      �� 5-      �� 5.       50      �� 51      $
��Auto �6    �� 52      $
��Auto �6    �� 53      .+�58      �� $��0��6   $��2��6)   $��0��6=    �� Orientation$ 
Horizontal=�6J   .+�59      ��   
labelStyle#��[ 6   .��6<   Name:6C   �� 5:      #��[ 6   ��6<   �� $ @Name��6^   5;      �� 5>      $��0��6   $��2��6)   $��1��6=   $ 
Horizontal=�6J   .+�5?      �� #��[ 6   .��6<   Department:6I   �� 5@      #��[ 6   ��6<   �� $ @Department��6d   5A      � 5C      $��0��6   $��2��6#   $��2��67   $	��Top=�6D   $
��Left=�6\   .+�5H      &   System.Windows.Controls.DataGrid    columnHeaderStyle   ColumnHeaderStyle# [ 6A      AutoGenerateColumns$ False��6x   	   RowHeaderWidth$	 0Q�6�   ��6   �� $ Expense��
   Columns
 5J      4  .System.Windows.Controls.DataGridTemplateColumn  5K      ,  &System.Windows.Controls.DataGridColumn   Header$ ExpenseType��61      CellTemplate# [  6F     5L      $ Amount��61   # [ 6A   5O      5Q      5R      5T      5V      