   M S B A M L   `   `   `  ����  
ImageBrush    ImageBrush.StretchModes   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      .��5      � $	��Top=�6	   $��10q�6!     � ColumnDefinitions  5      �� 5	      �� 5
       � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $��40 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��20 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5      �� $��3��5      $��0��6   $	��300��5      $	��150��6   
����  �$��1��5      $
��Left=�5      ��5      �� 5   
    j� Stretch$
 None=�6    �� ImageSource$ sampleImages\square.jpg��6%   5!      �� 5'      $��3��5(      $��1��6   $	��300��5)      $	��150��6   
����  �$��1��5*      $
��Left=�5+      ��5,      �� 5-   
   $ Uniform=�5.      $ sampleImages\square.jpg��6   50      �� 56      $��6��57      $��0��6   $	��300��58      $	��150��6   
����  �$��1��59      $
��Left=�5:      ��5;      �� 5<   
   $ UniformToFill=�5=      $ sampleImages\square.jpg��6#   5?      �� 5G      $��6��5H      $��1��6   $	��300��5I      $	��150��6   
����  �$��1��5J      $
��Left=�5K      ��5L      �� 5M   
   $
 Fill=�6   $ sampleImages\square.jpg��6%   5O      �� 5R      $��0��6   $��0��6   $��2��6-   $��Stretch=�5S      $��Stretch=�6#   
����  �$��6��5T      ��5U      �� 5V   
    �� 
StartPoint$ 0,0.5&�6    �� EndPoint$ 1,0.5&�61   ��5X      �  � Offset$	 0.0Q�6    � Color$ 	AliceBlue��6(   � 5Y      $	 1.0Q�6   $ 
MediumBlue��6(   5[      5]      ]� 5b      $��0��6   $��0��6   $��2��6-   $��False��6A   .+�5c      �� $��10q�6   $
��Left=�6   $	��400��65   |zThe contents of an ImageBrush can be stretched in different ways to fill its output area. The following are some examples.5f   	   �� 5g      $��Right=�6   $��Right=�6*   $��sampleImages\square.jpg��6A   $��0,0,40,0q�5h   	   $	��100��6   $	��100��6'   5i      �� 5l      $��2��6   $��0��6   Stretch="None"6>   �� 5m      $��2��6   $��1��6   Stretch="Uniform"6A   �� 5n      $��5��6   $��0��6   Stretch="UniformToFill"6G   �� 5o      $��5��6   $��1��6   Stretch="Fill"6>   5q      5r      