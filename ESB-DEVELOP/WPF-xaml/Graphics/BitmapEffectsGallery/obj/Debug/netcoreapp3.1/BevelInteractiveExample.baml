   M S B A M L   `   `   `  ����  BitmapEffectsGallery'    !SDKSample.BevelInteractiveExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5	      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5
       �� Padding$ 20q�6#   $	��550��60   $��0,10,0,0q�6<   ._�5   
   �� 64Change the property values of the BevelBitMapEffect.5      5   	   �� 5      $��20q�6    �� Orientation$ 
Horizontal=�6   .+�5   
   �  � ColumnDefinitions 5      �� 5      $
��Auto �6   �� 5      $
��Auto �6    � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5"      �� $��1��6   $��0��6   .��6/   
BevelWidth6;   �� 5#      $��1��6   $��1��6!   ��61   ��  �� ElementName$ InteractiveEffect�� �� Path$ 
BevelWidth� �� UpdateSourceTrigger$ PropertyChanged=��� 5&      $��2��6   $��0��6   .��6/   EdgeProfile6=   �� 5'      -   5        $��
myComboBox��5'   2   $��2��6   $��1��6"   .@�5(      �� .��6   
BulgedUp6&   �� 5)      .��6   
CurvedIn6&   �� 5*      .��6   	CurvedOut6&   �� 5+      .��6   Linear6#   5,      �� 5/      $��3��6   $��0��6   .��6/   LightAngle (0-360)6C   �� 50      $��3��6   $��1��6!   ��61   �� $ InteractiveEffect��$ 
LightAngle�$ PropertyChanged=��� 53      $��4��6   $��0��6   .��6/   Relief (0-1)6=   �� 54      $��4��6   $��1��6!   ��61   �� $ InteractiveEffect��$ Relief�$ PropertyChanged=��� 57      $��5��6   $��0��6   .��6/   Smoothness (0-1)6A   �� 58      $��5��6   $��1��6!   ��61   �� $ InteractiveEffect��$ 
Smoothness�$ PropertyChanged=�59      �� 5:   
   $	��200��6   $��80��6   $��
100,20,0,0q�6)   .��6>   Bevelled Button J� BitmapEffect 5<      �� 5@      -   5        InteractiveEffect��	 �� 
BevelWidth$	 15Q�5@   ;   5D      5E   	   5F      5G      5H      