   M S B A M L   `   `   `  ����L  HWindowSizingOrder, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WindowSizingOrderWindowSizingOrder  5   	   "    WindowSizingOrder.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:WindowSizingOrder     5   	     � Title$  
MainWindow��5   	    � SizeToContent$ WidthAndHeight=�6    � 	Resources 5	       �� 
TargetType �� Property �� Value��%�  '��       '�� H     '�� �     '��     �� 5
   
   " ��6   .�5      ��  � ��$ 10q�6'   5      �� 5   
   " ��6   .�5      ��  � ��$ 	10,0,0,10q�6'   5      �� 5   
   " ��6   .�5      ��  � ��$ Center=�62   �� 5       � ��$ 0,0,0,10q�6'   5      �� 5   
   " ��6   .�5      ��  � ��$ 	10,0,0,10q�6'   5      5      .��5      �� .+�5   
   �� $��20(�6   $��DemiBold"�6"   $��Segoe)�68   Sizing-Related Properties6f   �� 5   
   $��15(�6   $��DemiBold"�6"   $��0,0,0,10q�68   Order of Precendence6`   � 5   
    � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5        � RowDefinitions 5"      �� 5#      $
��Auto �6    �� 5$      $
��Auto �6    �� 5%      $
��Auto �6    �� 5&      $
��Auto �6    �� 5'      $
��Auto �6    �� 5(      $
��Auto �6    �� 5)      $
��Auto �6    �� 5*      $
��Auto �6    �� 5+      $
��Auto �6    .+�5.      �� -   5        $��setWSCB��5.   4   $��0��6   $��0��6'   $��Set WindowState?��6C   �� 5/      -   5        $
��wsLB��5/   4   $��1��6   $��0��6'   {�6@   ��  �� ElementName$ setWSCB��	 �� Path$	 	IsChecked�.@�50      �� 
 �� 
IsSelected$

 True��6   .��61   	Minimized6<   �� 51      .��6   	Maximized6*   �� 52      .��6   Normal6'   53      �� 55      -   5        $��setMinWidthCB��55   4   $��0��6   $��1��6'   $��Set MinWidth?��6I   �� 56      -   5        $��
minWidthTB��56   4   $��1��6   $��1��6&   {�6F   �� $ setMinWidthCB��$	 	IsChecked�.��6�   5006�   �� 58      -   5        $��setMinHeightCB��58   4   $��0��6   $��2��6'   $��Set MinHeight?��6J   �� 59      -   5        $��minHeightTB��59   3   $��1��6   $��2��6&   {�6F   �� $ setMinHeightCB��$	 	IsChecked�.��6�   5006�   �� 5;      -   5        $��setSTCCB��5;   4   $��0��6   $��3��6'   $��Set SizeToContent?��6D   �� 5<      -   5        $��stcLB��5<   4   $��1��6   $��3��6'   {�6A   �� $ setSTCCB��$	 	IsChecked�.@�5=      �� $

 True��6   .��61   Manual69   �� 5>      .��6   Width6&   �� 5?      .��6   Height6'   �� 5@      .��6   WidthAndHeight6/   5A      �� 5C      -	   5        $��setMaxWidthCB��5C   4   $��0��6   $��4��6'   $��Set MaxWidth?��6I   �� 5D      -
   5        $��
maxWidthTB��5D   3   $��1��6   $��4��6&   {�6E   �� $ setMaxWidthCB��$	 	IsChecked�.��6�   8006�   �� 5F      -   5        $��setMaxHeightCB��5F   4   $��0��6   $��5��6'   $��Set MaxHeight?��6J   �� 5G      -   5        $��maxHeightTB��5G   3   $��1��6   $��5��6&   {�6F   �� $ setMaxHeightCB��$	 	IsChecked�.��6�   8006�   �� 5I      -   5        $��
setWidthCB��5I   4   $��0��6   $��6��6'   $��
Set Width?��6F   �� 5J      -   5        $��widthTB��5J   3   $��1��6   $��6��6&   {�6B   �� $ 
setWidthCB��$	 	IsChecked�.��6~   7006�   �� 5L      -   5        $��setHeightCB��5L   4   $��0��6   $��7��6'   $��Set Height?��6G   �� 5M      -   5        $��heightTB��5M   3   $��1��6   $��7��6&   {�6C   �� $ setHeightCB��$	 	IsChecked�.��6�   7006�   �� 5O      -   5        $��0��5O      $��2��6%   $��8��69   .��6e   Show Window6r   5Q      5S      5T      