   M S B A M L   `   `   `  ����L  HCollectionBinding, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:CollectionBindingCollectionBinding  5   	   "    CollectionBinding.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:CollectionBinding     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � SizeToContent$ WidthAndHeight=�5	   	    � 	Resources 5
         CollectionBinding.People   	MyFriends �� 
TargetType �� Property �� Value  DetailTemplate �� Padding � RowDefinitions � ColumnDefinitions	 �� Path��%T  &	        '��      &	 �       5   
   6   �� 5   
   " ��6   .�5      ��  � ��$ Verdana)�6+   �� 5       � ��$ 11(�6)   �� 5       � ��$ 10q�6(   5      �� 5   
   .R�5      �� $	��300��6   $	��100��6!   $��20q�6.   
����� �$��1q�5   "   $ 8q�66   ._�5      �  5      �� 5      �� 5      �� 5       5      �� 5      �� 5      .+�5      �� $��0��6    $��0��6-   $��First Name:��6=   �� 5      $��0��6    $��1��6-   ��6=   �� $	 	FirstName��� 5       $��1��6    $��0��6-   $��
Last Name:��6=   �� 5!      $��1��6    $��1��6-   ��6=   �� $	 LastName��� 5"      $��2��6    $��0��6-   $��
Home Town:��6=   �� 5#      $��2��6    $��1��6-   ��6=   �� $	 HomeTown�5$      5%      5&      5(      .��5*      �� .+�5+   
   �� $��Verdana)�6   $��11(�6)   $��	5,15,0,10q�5,      $
��Bold"�6#   My Friends:6B   �� 5-   
   $	��200��6   $
 �� IsSynchronizedWithCurrentItem$

 TrueY�6   ��5.      ��  �� Source# [  �� 5/   
   $��Verdana)�6   $��11(�6)   $��5,15,0,5q�50      $
��Bold"�6"   Information:6B   �� 51   
   #��[ 52      ��51      �� # [  52      53      54      