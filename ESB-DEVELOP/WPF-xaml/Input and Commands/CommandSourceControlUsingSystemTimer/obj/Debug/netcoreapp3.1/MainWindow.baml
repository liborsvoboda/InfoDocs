   M S B A M L   `   `   `  ����_  [CommandSourceControlUsingSystemTimer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:CommandSourceControlUsingSystemTimer$CommandSourceControlUsingSystemTimer  5   	   5    /CommandSourceControlUsingSystemTimer.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:CommandSourceControlUsingSystemTimer     5   	     � Title$  
MainWindow��5   	    � SizeToContent$ WidthAndHeight=�6    � 	Resources 5	       �� 
TargetType �� Property �� Value?   9CommandSourceControlUsingSystemTimer.SliderValueConverter !  SliderValueConverterReference��%�   '��       &	  �     �� 5
      " ��6   .�5   
   ��  � ��$ 50��6#   �� 5   
    � ��$ 75��6"   �� 5   
    � ��
 �����6'   �� 5   
    � ��$ 10q�6#   5        5      6!   5       J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5        5   /CommandSourceControlUsingSystemTimer.MainWindow   CustomCommand   Command# Z 5      5      .��5      �� .+�5    
   �� $��Center=�6   	 �� Orientation$	 
Horizontal=�62   .+�5!      �� $��Right=�6   
����  �$��1q�5#      $��10q�5$      $��75��5%      ._�5&      �� $��Center=�6   .+�5'      �� .��6   Target6$   �� 5(      $��
10,0,10,10q�5+      $��14(�5,      $��DemiBold"�5-      ��5(      �� 
 �� ElementName$
 secondSlider�� �� Path$ Value� �� 	Converter# [  5-      5.      5/      �� 50      $��Right=�6   
����  �$��1q�52   	   $��10q�53   	   $��75��54   	   ._�55      �� $��Center=�6   .+�56      �� .��6   	Seconds6%   �� 57      -   5        $��
lblSeconds��57      $��
10,0,10,10q�6.   $��14(�6B   $��DemiBold"�6P   58      59      5:      �� 5>   
   #��Z 6   $��Command��5?      $��10q�5C      ��5@      �� $
 secondSlider��$ Value�# [  5C      �� 5F   
   $��10q�6   $��14(�6   .��6*   75Enable Command When Current Seconds Are Greater Than:5H      �� 5I   
   
����  �$��1q�5J      $��75��5K      $	��425��5L      ._�5M      �� $	 
Horizontal=�6   .+�5N      �� $��Slider.DecreaseSmall��6   $��25��5P      $��25��5Q      $��-��5R      ��5O      �� $
 secondSlider��5R      �� 5S      $��Center=�6   .��63   066   �� 5T      -   5        $��secondSlider��5T       � Minimum$ 0Q�5U       � Maximum$ 60Q�5V       � Value$ 15Q�5W       �� TickFrequency$ 5Q�5X      $��50��5Y      $	��275��5Z       �� TickPlacement$ BottomRight=�5[       � LargeChange$ 5Q�5\       � SmallChange$ 5Q�5]       �� AutoToolTipPlacement$ BottomRight=�5^       �� AutoToolTipPrecision$ 0��5_      5a      �� 5b      $��Center=�6   .��63   6067   �� 5c      $��Slider.IncreaseSmall��6   $��25��5e      $��25��5f      $��+��5g      ��5d      �� $
 secondSlider��5g      5h      5i      �� 5l   
   
���   �$��2q�5m      $��80��5n      $	��300��5o      $��0,10,0,0q�5p      ._�5q      �� .+�5r      �� $��Center=�6   $��DemiBold"�65   .��6K   Command Results5t      �� 5u      -   5        $��
txtResults��5u      $��5,0,5,0q�5v      $
��Wrap=�5w      $
��Left=�5x      5y      5z      5}      5~      