   M S B A M L   `   `   `  ����  BitmapEffectsGallery+    %SDKSample.OuterGlowInteractiveExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5	      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5
       �� Padding$ 20q�6#   $	��550��60   $��0,10,0,0q�6<   ._�5   
   �� :8Change the property values of the OuterGlowBitMapEffect.5      5   	   �� 5      $��20q�6    �� Orientation$ 
Horizontal=�6   .+�5   
   �  � ColumnDefinitions 5      �� 5      $
��Auto �6   �� 5      $
��Auto �6    � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5!      �� $��1��6   $��0��6   .��6/   
GlowSize69   �� 5"      $��1��6   $��1��6!   ��61   ��  �� ElementName$ InteractiveEffect�� �� Path$ GlowSize� �� UpdateSourceTrigger$ PropertyChanged=��� 5%      $��2��6   $��0��6   .��6/   	GlowColor6:   �� 5&      -   5        $��cbColor��5&   2   $��2��6   $��1��6"   .@�5'      �� .��6   Red6!   �� 5(       �� 
IsSelected$
 True��6   .��6.   Blue64   �� 5)      .��6   Green6#   �� 5*      .��6   Yellow6$   5+      �� 5.      $��3��6   $��0��6   .��6/   Noise (0-1)6<   �� 5/      $��3��6   $��1��6!   ��61   �� $ InteractiveEffect��$ Noise�$ PropertyChanged=��� 52      $��4��6   $��0��6   .��6/   Opacity (0-1)6>   �� 53      $��4��6   $��1��6!   ��61   �� $ InteractiveEffect��$ Opacity�$ PropertyChanged=�55      �� 58   
   $	��200��6   $	��100q�6   .��6+   	 J� BitmapEffect	 59      O� 5=      -   5        InteractiveEffect��
 O� GlowSize$
 30Q�5>       O� 	GlowColor 5?      �� 5@      $ cbColor��6   $ SelectedValue.Content�60   5B      .��5D   "   5E      5F   	   5G      5H      5I      