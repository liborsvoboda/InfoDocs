   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5	       �� Padding$ 20q�6#   $	��550��60   $��0,10,0,0q�6<   ._�5
   
   �� ;9Change the property values of the DropShadowBitMapEffect.5      5   	   �� 5      $��20q�6    �� Orientation$ 
Horizontal=�6   .+�5   
   �  � ColumnDefinitions 5      �� 5      $
��Auto �6   �� 5      $
��Auto �6    � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5!      �� $��1��6   $��0��6   .��6/   ShadowDepth6<   �� 5"      $��1��6   $��1��6!   ��61   ��  �� ElementName$ InteractiveEffect�� �� Path$ ShadowDepth� �� UpdateSourceTrigger$ PropertyChanged=��� 5%      $��2��6   $��0��6   .��6/   Color66   �� 5&      -   5        $��cbColor��5&   2   $��2��6   $��1��6"   .@�5'      �� .��6   Red6!   �� 5(      .��6   Blue6"   �� 5)      .��6   Green6#   �� 5*       �� 
IsSelected$
 True��6   .��6.   Black65   5+      �� 5.      $��3��6   $��0��6   .��6/   Direction (0-360)6B   �� 5/      $��3��6   $��1��6!   ��61   �� $ InteractiveEffect��$ 	Direction�$ PropertyChanged=��� 52      $��4��6   $��0��6   .��6/   Softness (0-1)6?   �� 53      $��4��6   $��1��6!   ��61   �� $ InteractiveEffect��$ Softness�$ PropertyChanged=��� 56      $��5��6   $��0��6   .��6/   Opacity (0-1)6>   �� 57      $��5��6   $��1��6!   ��61   �� $ InteractiveEffect��$ Opacity�$ PropertyChanged=�59      �� 5;   
   $��50q�6   $	��200��6   .��6)   DropShadow Under this Button	 J� BitmapEffect	 5=      F� 5A      -   5        InteractiveEffect��
 F� 	Direction$	
 320Q�5A   @    F� ShadowDepth$ 25Q�6P    F� Softness$ 1Q�6a    F� Opacity$	 0.5Q�5B       F� Color 6   �� $ cbColor��$ SelectedValue.Content�5E      5F   	   5G      5H      5I      