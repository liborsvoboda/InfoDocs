   M S B A M L   `   `   `  ����  
ExpenseIt8    ExpenseIt.ExpenseItHome   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5        N� Title$  ExpenseIt - Home��5	      .��5      � $��
10,0,10,10q�6    � 	Resources 5   
      ExpenseDataSource � XPath  nameItemTemplate �� XPath��%  &	        &	 �    � 5      $ Expenses��68   .��5      ��<Expenses xmlns="">
                        <Person Name="Mike" Department="Legal">
                            <Expense ExpenseType="Lunch" ExpenseAmount="50" />
                            <Expense ExpenseType="Transportation" ExpenseAmount="50" />
                        </Person>
                        <Person Name="Lisa" Department="Marketing">
                            <Expense ExpenseType="Document printing" ExpenseAmount="50" />
                            <Expense ExpenseType="Gift" ExpenseAmount="125" />
                        </Person>
                        <Person Name="John" Department="Engineering">
                            <Expense ExpenseType="Magazine subscription" ExpenseAmount="50" />
                            <Expense ExpenseType="New machine" ExpenseAmount="600" />
                            <Expense ExpenseType="Software" ExpenseAmount="500" />
                        </Person>
                        <Person Name="Mary" Department="Finance">
                            <Expense ExpenseType="Dinner" ExpenseAmount="100" />
                        </Person>
                    </Expenses>        5(      �� 5,      .R�5-      �� ��6   �� $ @Name��5.      51      ��53   
   �� 54       �� ImageSource$ watermark.png��6    � ColumnDefinitions 57   
   �� 58      $	��230 �6   �� 59       � RowDefinitions 5<   
   �� 5=      �� 5>      $
��Auto �6   �� 5?      �� 5@      $
��Auto �6   .+�5E   
   �� $��1��6     headerTextStyle#��[ 6    .��6J   View Expense Report5G      �� 5I   
   $��1��6   $��1��6!     listHeaderStyle#��[ 6.   ._�5J      ��   listHeaderTextStyle#��[ 6   .��6A   Names6H   5K      �� 5M   
   -   5        $��peopleListBox��5M      $��1��6'   $��2��67   #��[ 5O      ��5N      ��  �� Source# [  $ Person��5P      �� 5S   
   -   5        $��1��5S      $��3��6!     buttonStyle#��[ 6C   .��6h   View6n   5V      5X      