   M S B A M L   `   `   `  ����  
ImageBrush#    ImageBrush.PaintingWithImages   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      .��5      � 
�������$��20q�6   $	��Top=�6(   $��Stretch=�6@     � ColumnDefinitions  5	      �� 5
      �� 5      $��20 �6   �� 5      �� 5      $��20 �6   �� 5       � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $��40 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��20 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5      A� $��3��6   $��0��6   $	��150��6+   $	��150��68   $
��Left=�5      ��5      �� 5   
    �� ImageSource$" sampleImages\blueberries.jpg��6   5!      A� 5&      $��6��6   $��0��6   $	��150��6+   $	��150��68   $��20��6D   $
��Left=�5'      ��5(      �� 5)   
   $" sampleImages\blueberries.jpg��6    j� Viewport$ -10,-10,160,160�6@    j� ViewportUnits$ Absolute=�6[   5+      �� 5/      $��3��6   $��2��6   $��75��50      $	��100��6   
�������$
��Bold"�61   $
��Left=�51      .��6!   
A Button��53      �� 54   
   $" sampleImages\blueberries.jpg��6   56      �� 5:      $��6��6   $��2��6   $
��Bold"�6-   $
��48pt(�6?   $
��Wrap=�6O   $
��Left=�5;      $��	Some Text��6!   ��5<      �� 5=   
   $" sampleImages\blueberries.jpg��6   5?      ]� 5C      $��3��6   $��4��6   $	��200��6-   $
��Left=�5D      ��5E      �� 5F   
   $" sampleImages\blueberries.jpg��6   .+�5H      �� $	��Top=�6   
�������$
��Wrap=�6:   $��10q�6N   0.This DockPanel has an image as its background.6�   5I      �� 5P      $��6��6   $��4��6   $��20q�6*   $	��200��6?   $
��Left=�5Q      ��5R      �� 5S   
   $" sampleImages\blueberries.jpg��6   $ -0.1,-0.1,1.5,1.5�6@   ._�5U      ]� .+�5V   
   �� $	��Top=�6   $
��Wrap=�6)   $��10q�6=   97This DockPanel has a border painted with an ImageBrush.6�   5W   	   5X      �� 5[      $��0��6   $��0��6   $��5��6-   $��Stretch=�5\      $��Stretch=�6&   
���   �$��6��5]      ��5^      �� 5_   
    �� 
StartPoint$ 0,0.5&�6    �� EndPoint$ 1,0.5&�61   ��5a      �  � Offset$ 0Q�6    � Color$ #CCCCFF��6&   � 5b      $ 1Q�6   $ #666699��6&   5d      5f      �� 5i      $��0��6   $��0��6   $��4��6-   $��10q�6A   igAn ImageBrush can be used to paint a variety of objects with an image. The following are some examples.5l      �� 5m      $��0��6   $��4��6   $��Center=�6.   .+�5n      �� $��112.5��6   $
��74.5��6   $"��sampleImages\blueberries.jpg��6*   5o      �� 5p      $��2��6   $��0��6   Filling a Shape6>   �� 5q      $��5��6   $��0��6   Outlining a Shape6@   �� 5r      $��2��6   $��2��6   Painting a Button6@   �� 5s      $��5��6   $��2��6   Painting Text6<   �� 5t      $��2��6   $��4��6   Painting a Panel6?   �� 5u      $��5��6   $��4��6   Painting a Border6@   5v      5w      