   M S B A M L   `   `   `  ����  BitmapEffectsGallery&     SDKSample.BlurInteractiveExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5         MyGridBrushResource  N� 
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
��Auto �6   .+�5      �� $��1��6   $��0��6   .��6/   Radius67   �� 5       $��1��6   $��1��6!   ��61   ��  �� ElementName$ InteractiveEffect�� �� Path$ Radius� �� UpdateSourceTrigger$ PropertyChanged=��� 5#      $��2��6   $��0��6   .��6/   
KernelType6<   �� 5$      -   5        $��
myComboBox��5$   2   $��2��6   $��1��6"   .@�5%      �� .��6   Box6!   �� 5&      .��6   
Gaussian6&   5'      5*      �� 5,   
   $	��200��6   $��
100,20,0,0q�6   .��62   You Can't Read This! J� BitmapEffect 5.      �� 54      	 �� Radius$	 4Q�6   -   5        InteractiveEffect��54   *   57      58   	   59      5:      5;      