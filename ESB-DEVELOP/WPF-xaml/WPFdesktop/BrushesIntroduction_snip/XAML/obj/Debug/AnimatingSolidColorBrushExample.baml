   M S B A M L   `   `   `  ����N� 5      R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� WindowTitle$!  Animating a SolidColorBrush��5      .��5      ]� .+�5	      �� ���	#996666CC$��10q�5
      $	��Top=�6   ._�5      ��    MyIntroTextBlockStyle#��[  6   ��The SolidColorBrush objects used to paint these rectangles have been animated in different ways. The first SolidColorBrush has an animated Color property. The second has an animated Opacity property. The Color property of the third SolidColorBrush is animated with a single ColorAnimation so that its red, green, blue, and alpha values change.5   	   5      �� 5        footerRectangleStyle#��[ 5      $��Bottom=�5      ���	#996666CC$��Bottom=�5      $��10q�6"   � 5      $��10q�6   $��1��6    � ColumnDefinitions 5      �� 5   
   $
��Auto �6   �� 5   
   $��10 �6   �� 5   
   $
��Auto �6   �� 5   
   $��10 �6   �� 5    
   $
��Auto �6    � RowDefinitions 5"      �� 5#   
   $
��Auto �6   �� 5$   
   $
��Auto �6   �� 5%   
   $
��Auto �6   �� 5&   
   $��* �6   .+�5+      ��   checkeredRectangleStyle#��[ 6   ���#9999FF �� RadiusX$ 10��5,       �� RadiusY$ 10��6'   $��1��64   $��0��5-   	   $��5��6   $��1��6-   �� 5/      $��0��6   $��0��6   $��Center=�6+   .��6H   Animated Color Property6a   �� 52      $	��100��53   	   $��50��6   
���   �$��1��60   $��10q�54   	   $��Center=�6   $��0��55   	   $��1��6   ��56   
   �� 57      -   5        solidColorBrush1�� �� Color$
 Blue��57   6   59   	   �� 5;      $��0��6   $��2��6   $��Center=�5<   	   .��6&   Start Animation � Triggers 5>   
   :� 5?       :� RoutedEvent$ Button.Click��6   .[�5@      �� .��5A      �� .��5D      ��  �� 
TargetName$ solidColorBrush1��6!   	 �� TargetProperty$	 Color�5E      
 �� From$

 BlueX�5F      	 �� To$	 RedX�6    g� Duration$ 0:0:10D�6(   5G      5H      5I      5K   	   �� 5M      $��2��6   $��0��6   $��Center=�6+   .��6H   Animated Opacity Property6c   �� 5P      $	��100��5Q   	   $��50��6   
���   �$��1��60   $��2��5R   	   $��1��6   $��Center=�5S   	   $��10q�6&   ��5T   
   �� 5U      -   5        solidColorBrush2��$
 Blue��5U   6   5W   	   �� 5Y      $��2��6   $��2��6   $��Center=�5Z   	   .��6&   Start Animation 5\   
   :� 5]      $ Button.Click��6   .[�5^      �� .��5_      �� .��5b      W� $ solidColorBrush2��6"   $	 Opacity�5c       W� From$	 1.0X�5d      	 W� To$	 0.0X�6   $ 0:0:10D�6'   5e      5f      5g      5i   	   �� 5k      $��4��6   $��0��6   $��Center=�6+   .��6H   Animated Color Property6a   �� 5m      $	��100��5n   	   $��50��6   
���   �$��1��60   $��4��5o   	   $��1��6   $��Center=�5p   	   $��10q�6&   ��5q   
   �� 5r      -   5        solidColorBrush3��$
 Blue��5r   6   5t   	   �� 5v      $��4��6   $��2��6   $��Center=�5w   	   .��6&   Start Animation 5y   
   :� 5z      $ Button.Click��6   .[�5{      �� .��5|      �� .��5�      �� $ solidColorBrush3��6!   $	 Color�5�      $

 BlueX�5�      $ 	#00FF0000X�6   $ 0:0:10D�6.   5�      5�      5�      5�   	   5�      5�      5�      