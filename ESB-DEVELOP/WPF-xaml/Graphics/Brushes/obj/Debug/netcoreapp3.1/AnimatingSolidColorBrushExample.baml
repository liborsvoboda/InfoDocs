   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� WindowTitle$!  Animating a SolidColorBrush��5      .��5      ]� .+�5	      �� ���	#996666CC$��10q�5
      $	��Top=�6   ._�5      ��    MyIntroTextBlockStyle#��[  6   ��The SolidColorBrush objects used to paint these rectangles have been animated in different ways. The first SolidColorBrush has an animated Color property. The second has an animated Opacity property. The Color property of the third SolidColorBrush is animated with a single ColorAnimation so that its red, green, blue, and alpha values change.5   	   5      �� 5        FooterRectangleStyle#��[ 5      $��Bottom=�5      ���	#996666CC$��10q�61   � 5      $��10q�6    � ColumnDefinitions 5      �� 5   
   $
��Auto �6   �� 5   
   $��10 �6   �� 5   
   $
��Auto �6   �� 5   
   $��10 �6   �� 5   
   $
��Auto �6    � RowDefinitions 5!      �� 5"   
   $
��Auto �6   �� 5#   
   $
��Auto �6   �� 5$   
   $
��Auto �6   �� 5%   
   $��* �6   .+�5*      ��   CheckeredRectangleStyle#��[ 6   ���#9999FF �� RadiusX$ 10��5+       �� RadiusY$ 10��6'   $��1��64   $��0��5,   	   $��5��6   �� 5.      $��Center=�6   .��6+   Animated Color Property6D   �� 51      $	��100��52   	   $��50��6   
���   �$��1��60   $��10q�53   	   $��Center=�6   $��0��54   	   $��1��6   ��55   
   �� 56      -   5        solidColorBrush1�� �� Color$
 Blue��56   6   58   	   �� 5:      $��0��6   $��2��6   $��Center=�5;   	   .��6&   Start Animation � Triggers 5=   
   :� 5>       :� RoutedEvent$ Button.Click��6   .[�5?      �� .��5@      �� .��5C      ��  �� 
TargetName$ solidColorBrush1��6!   	 �� TargetProperty$	 Color�5D      
 �� From
 Blue5E      	 �� To Red6    g� Duration$ 0:0:10D�6(   5F      5G      5H      5J   	   �� 5L      $��2��6   $��0��6   $��Center=�6+   .��6H   Animated Opacity Property6c   �� 5O      $	��100��5P   	   $��50��6   
���   �$��1��60   $��2��5Q   	   $��1��6   $��Center=�5R   	   $��10q�6&   ��5S   
   �� 5T      -   5        solidColorBrush2��$
 Blue��5T   6   5V   	   �� 5X      $��2��6   $��2��6   $��Center=�5Y   	   .��6&   Start Animation 5[   
   :� 5\      $ Button.Click��6   .[�5]      �� .��5^      �� .��5a      W� $ solidColorBrush2��6"   $	 Opacity�5b       W� From 1.05c      	 W� To 0.06   $ 0:0:10D�6'   5d      5e      5f      5h   	   �� 5j      $��4��6   $��0��6   $��Center=�6+   .��6H   Animated Color Property6a   �� 5l      $	��100��5m   	   $��50��6   
���   �$��1��60   $��4��5n   	   $��1��6   $��Center=�5o   	   $��10q�6&   ��5p   
   �� 5q      -   5        solidColorBrush3��$
 Blue��5q   6   5s   	   �� 5u      $��4��6   $��2��6   $��Center=�5v   	   .��6&   Start Animation 5x   
   :� 5y      $ Button.Click��6   .[�5z      �� .��5{      �� .��5�      �� $ solidColorBrush3��6!   $	 Color�5�      
 Blue5�       	#00FF00006   $ 0:0:10D�6.   5�      5�      5�      5�   	   5�      5�      5�      