   M S B A M L   `   `   `  ����M  IDirectionalBinding, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:DirectionalBindingDirectionalBinding  5   	   #    DirectionalBinding.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:DirectionalBinding     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)   .��5	      � -   5        $��Page1��5	       � 	Resources 5
   
   "   DirectionalBinding.NetIncome   IncomeDataSource �� 
TargetType �� Property �� Value��%�   &	        '��      '�� b       5      6   �� 5      " ��6   .�5      ��  �@��Padding$ 8q�6,   5      �� 5      " ��6   .�5      ��  � ��$ 0,6,0,0q�6+   5      5       � DataContext 5   
   �� 5       �� Source# [  6    � ColumnDefinitions 5   
   �� 5      $	��120 �6   �� 5      $	��120 �6   �� 5      $	��400 �6    � RowDefinitions 5   
   �� 5      $��25 �6   �� 5      $��25 �6   �� 5      $��25 �6   �� 5       $��25 �6   �� 5!      $��25 �6   �� 5"      $��25 �6   .+�5&   
   �� $��0��6   $��0��6   .��6-   Total Income:6<   �� 5'   
   -   5        $��
IncomeText��5'      $��0��6&   $��1��63   ��5(      �� 	 �� Path$	 TotalIncome�
 �� Mode$
 OneTime=��� 5)   
   $��0��6   $��2��6!   OneTime Binding6B   �� 5,   
   $��1��6   $��0��6   .��6-   Rent63   �� 5-   
   -   5        $��RentText��5-   1   $��1��6   $��1��6!   ��5.      �� $
	 Rent�$
 OneWay=� �� NotifyOnTargetUpdated$
 True��5/      �� 50   
   $��1��6   $��2��51      31OneWay Binding, with TargetUpdated event handling6Q   �� 54   
   $��2��6   $��0��6   .��6-   Food63   �� 55   
   -   5        $��FoodText��55      $��2��6"   $��1��6/   ��56      �� $
	 Food� �� UpdateSourceTrigger$ PropertyChanged=��� 57   
   $��2��6   $��2��6!   =;TwoWay Binding (TextBox default), Update on PropertyChanged58   B   �� 5<   
   $��3��6   $��0��6   .��6-   Miscellaneous6<   �� 5=   
   -   5        $��MiscText��5=   /   $��3��6   $��1��6   ��6?   �� $
	 Misc��� 5>   
   $��3��6   $��2��6!   IGTwoWay Binding (TextBox default), Update on LostFocus (TextBox default)5?   N   �� 5B   
   $��4��6   $��0��6   .��6-   	Savings66   �� 5C   
   -   5        $��SavingsText��5C   1   $��4��6   $��1��6!   ��6D   �� $	 Savings��� 5D   
   $��4��6   $��2��6!   OneWay Binding6A   �� 5F   
   -   5        $��5��5F      $��0��6   .��6B   Raise the Rent!6S   �� 5G   
   -   5        $��infoText��5G      $��5��6$   $��1��61   $��2��5H      5I      5J      