   M S B A M L   `   `   `  ����S  ODataBindingToStringFomat, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:DataBindingToStringFomatDataBindingToStringFomat  5   	   )    #DataBindingToStringFomat.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:DataBindingToStringFomat     5   	     � Title$  
MainWindow��5   	    � SizeToContent$ WidthAndHeight=�6   .��5	      ��  � 	Resources 5
   
   +   %DataBindingToStringFomat.ItemsForSale 
  MyData��%   &	          5      6!   5      .+�5   
   �� $��5,10,0,0q�6   $��20(�6&   " Formatting a string on a Binding6V   �� 5   
   $��5q�6   $��14(�6   $
��Wrap=�6-   ��This ListView contains a list of items for sale. The second column of the ListView displays a string that includes the price of the object. The price is formatted as a currency.5      �� 5   
   #��[  6    �� View 5      �� 5      .P�5      ��  �� DisplayMemberBinding 6%   ��  �� Path$ Description��� 5       6%   �� $ Price� �� StringFormat$ 
Now {0:c}!��5      5      �� 5    
   $��20(�6   $��5,10,0,0q�6"   '%Formatting a string on a MultiBinding6[   �� 5!   
   $��5q�6   $��14(�6   $
��Wrap=�6-   ��This ListBox contains a list of items for sale. The ListBox displays a string for each item, which includes the Description and the Price, by setting the StringFormat property on a MultiBinding.5&      �� 5(   
   #��[  6   ��5*      �� 5+      .R�5,      �� ��5-      `� 5.      $ {0} -- Now only {1:C}!��6,   .1�5/   "   �� $ Description�6*   �� 50   "   $ Price�6*   51      53      54      56      57      58      