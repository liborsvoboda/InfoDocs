   M S B A M L   `   `   `  ����S  OProgrammaticFocusControl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:ProgrammaticFocusControlProgrammaticFocusControl  5   	   )    #ProgrammaticFocusControl.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:ProgrammaticFocusControl     5   	     � Title$  
MainWindow��5   	    � SizeToContent$ WidthAndHeight=�6    � 	Resources 5	       �� 
TargetType �� Property �� Value �� Triggers P� Property P� Value��%=  '	�       '�� G     '�� �    �� 5
   
   " 	�6   .�5      ��  � ��$ 3q�6'   5      �� 5   
   " ��6    5      P� 5       �@J�	IsFocused$
 True��6/   . �5      ��  � ��
 �����63   5      .�5      ��  � ��$ 3q�6'   �� 5       � ��$ 50��6'   �� 5       � ��$ 50��6&   �� 5       � ��$ 14(�6)   �� 5       � ��
 �����6+   5      �� 5   
   " ��6   .�5      ��  � ��
 �   �6,   �� 5       � ��$ 2q�60   �� 5       � ��$ 5q�6'   5      5      .��5!      � 
�������$|�False��6   	 � ColumnDefinitions	 5"   
   �� 5#      $	��200 �6   �� 5$      $
��Auto �6   .+�5(   
   �� $��5q�6   $��0��6    .+�5)      �� $��Center=�6   ._�5*      �� -   5        $��5q�5*      $|�False��5,      .+�5-      �� $��Center=�6   $��14(�5.      .��6    Focus Traverse Direction50      	� 51      $
��Down��6"   $|�False��62   	� 52      $��First��6"   $|�False��62   	� 53      $
��Last��6"   $|�False��61   	� 54      $
��Left��6"   $|�False��61   	� 55      $
��Next��6"   $|�False��61   	� 56      $��Previous��6"   $|�False��65   	� 57      $��Right��6"   
 d� 	IsChecked$

 TrueY�62   $|�False��6C   	� 58      $��Up��6"   $|�False��6/   59      5:      �� 5;      $��Center=�6   ._�5<      �� .+�5=      �� -   5        $��50��5=      $	��100��6)   $��Center=�5@      $|�False��5A      .��6%   Predict Focus5B      �� 5C      -   5        $��50��5C      $	��100��6)   $��Center=�5E      $|�False��5F      .��6%   
Move Focus5H      5I      5J      5K      �� 5N   
   $��1��6   .+�5O      �� $��Center=�6   $��14(�61   .��6?   #!Move Focus Between These Elements5Q      �� 5R      $	��300��6   $��1��6"   ._�5S      ��  �� Orientation$ 
Horizontal=�6   .+�5T      �� $ 
Horizontal=�6!   $��Center=�6:   .+�5U      �� -   5        $��firstButton��5U   !   $��1��5V      �� 5W      $��2��6!   �� 5X      $��3��6!   5Y      �� 5Z      $ Vertical=�6!   $��Center=�68   .+�5[      �� $��4��6!   �� 5\      $��5��6!   �� 5]      $��6��6!   �� 5^      $��7��6!   �� 5_      $��8��6!   5`      �� 5a      $ 
Horizontal=�6!   $��Center=�6:   .+�5b      �� $��9��6!   �� 5c      $��10��6!   �� 5d      $��11��6!   5e      5f      5g      5h      5i      5j      