   M S B A M L   `   `   `  ����  
ImageBrushA    ;Microsoft.Samples.Graphics.UsingImageBrush.AlignmentExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� 
Background
  �����.��5      � $��10q�6	   $	��600��6   $	��Top=�6$    � ColumnDefinitions 5
      �� 5      �� 5      �� 5      $
��Auto �6    � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $��40 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5      �� $��3��6   $��0��6   $	��200��6-   $	��150��69   
���  ��$��1��5      $
��Left=�6*   ��5      �� 5   
    j� Stretch$
 None=�6    j� 
AlignmentX$
 Left=�6$    �� ImageSource$! sampleImages\butterfly2.jpg��66   5       �� 5#      $��3��6   $��1��6   $	��200��6-   $	��150��69   
���  ��$��1��6V   $
��Left=�5$      ��5%      �� 5&   
   $
 None=�6   $ Center=�6$   $! sampleImages\butterfly2.jpg��68   5(      �� 5+      $��3��6   $��2��6   $	��200��6-   $	��150��69   
���  ��$��1��5,      $
��Left=�6*   ��5-      �� 5.   
   $
 None=�6   $ Right=�6$   $! sampleImages\butterfly2.jpg��67   50      �� 54      $��5��6   $��0��6   $	��200��6-   $	��150��69   
���  ��$��1��55      $
��Left=�6*   ��56      �� 57   
   $
 None=�6    j� 
AlignmentY$	 Top=�6$   $! sampleImages\butterfly2.jpg��65   59      �� 5<      $��5��6   $��1��6   $	��200��6-   $	��150��69   
���  ��$��1��5=      $
��Left=�6*   ��5>      �� 5?   
   $
 None=�6   $ Center=�6$   $! sampleImages\butterfly2.jpg��68   5A      �� 5E      $��5��6   $��2��6   $	��200��6-   $	��150��69   
���  ��$��1��5F      $
��Left=�6*   ��5G      �� 5H   
   $
 None=�6   $ Bottom=�6$   $! sampleImages\butterfly2.jpg��68   5J      �� 5M      $��0��6   $��0��6   $��3��6-   
���  ��$��6��5N      $��Stretch=�6*   $��Stretch=�6H   ��5O      �� 5P   
    �� Opacity$
 0.75Q�6   ��5R      �  � Offset$ 0Q�6   	 � Color$
	 Pink��6&   � 5S      $ 1Q�6   $	 Maroon��6&   5U      5W      �� 5Y      $��0��6   $��0��6   $��2��6-   $��10q�6A   $
��Left=�5Z      ��An ImageBrush's content alignment can be specified using the AlignmentX and AlignmentY properties. The following are some examples.5^      �� 5_      $��0��6   $��2��6   $!��sampleImages\butterfly2.jpg��6)   �� 5`      $��2��6   $��0��6   $
��Left=�6-   AlignmentX="Left"6[   �� 5a      $��2��6   $��1��6   $
��Left=�6-   AlignmentX="Center"6]   �� 5b      $��2��6   $��2��6   $
��Left=�6-   AlignmentX="Right"6\   �� 5c      $��4��6   $��0��6   $
��Left=�6-   AlignmentY="Top"6Z   �� 5d      $��4��6   $��1��6   $
��Left=�6-   AlignmentY="Center"6]   �� 5e      $��4��6   $��2��6   $
��Left=�6-   AlignmentY="Bottom"6]   5f      5g      