   M S B A M L   `   `   `  ����J  FWidthProperties, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WidthPropertiesWidthProperties  5   	        WidthProperties.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WidthProperties     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)   .��5	      �� 
���   �$��2q�6!   
�������._�5
   
   �� $��10q�6   .+�5      �� $��20(�6   $	��Top=�6&   Width Properties Sample6T   �� 5      $
��Wrap=�6   $��0,0,0,10q�6,   ��Four properties are exposed on FrameworkElement that describe an element's Width characteristics. It is possible for these values to be in conflict. This example demonstrates how those conflicts between values are resolved.6  �� 5      $
��Wrap=�6   $��0,0,0,10q�6,   ��If viewed on a continuum, MinWidth value takes precedence over MaxWidth value, which in turn takes precedence over the Width value. This is best demonstrated visually:6�   �� 5      -   5        $��myCanvas��5   |   $	��200��6   $	��200��6"   ���#b0c4de$	��Top=�6F   $��Center=�6_   .+�5      �� -   5        $��rect1��5   [   $��Center=�6   
 �� Top$ 50��69    �� Left$ 50��6I   ���#4682b4$	��100��6w   $	��100��6�   5      �� 5       �� Orientation$ 
Horizontal=�6   $��Center=�62   .+�5      �� -   5        $��Button1��5      $��0,5,5,5q�69   .��6J   Canvas.ClipToBounds="True"6f   �� 5      -   5        $��Button2��5      $��0,5,5,5q�6(   .��6L   Canvas.ClipToBounds="False"6i   5      � 5       � RowDefinitions 5      �� 5      �� 5       � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5       $
��Auto �6'   �� 5!      $
��Auto �6'   .+�5#      �� $��0��6   $��14(�6)   $
��Bold"�67   $��6��6I   $��Center=�6]   $��	0,15,0,15q�6z   $
��Wrap=�6�   dbUse the ListBoxes below to manipulate the various Width related properties of the Rectangle above.5$   q   �� 5%      $��1��6   $��0��6)   $��10,0,0,0q�69   $
��Wrap=�6K   Set the Rectangle Width:6y   �� 5&      -   5        $��1��5&      $��1��6*   $��10,0,0,0q�67   $��50��6I   $��50��6T   .@�5'      �� .��6"   256&   �� 5(      .��6"   506&   �� 5)      .��6"   756&   �� 5*      .��6"   1006'   �� 5+      .��6"   1256'   �� 5,      .��6"   1506'   �� 5-      .��6"   1756'   �� 5.      .��6"   2006'   �� 5/      .��6"   2256'   �� 50      .��6"   2506'   51      �� 53      $��1��6   $��2��6)   $��10,0,0,0q�69   $
��Wrap=�6K   Set the Rectangle MinWidth:6|   �� 54      -   5        $��3��54      $��1��6*   $��10,0,0,0q�67   $��50��6I   $��50��6T   .@�55      �� .��6"   256&   �� 56      .��6"   506&   �� 57      .��6"   756&   �� 58      .��6"   1006'   �� 59      .��6"   1256'   �� 5:      .��6"   1506'   �� 5;      .��6"   1756'   �� 5<      .��6"   2006'   �� 5=      .��6"   2256'   �� 5>      .��6"   2506'   5?      �� 5A      $��1��6   $��4��6)   $��10,0,0,0q�69   $
��Wrap=�6K   Set the Rectangle MaxWidth:6|   �� 5B      -   5        $��5��5B      $��1��6*   $��10,0,0,0q�67   $��50��6I   $��50��6T   .@�5C      �� .��6"   256&   �� 5D      .��6"   506&   �� 5E      .��6"   756&   �� 5F      .��6"   1006'   �� 5G      .��6"   1256'   �� 5H      .��6"   1506'   �� 5I      .��6"   1756'   �� 5J      .��6"   2006'   �� 5K      .��6"   2256'   �� 5L      .��6"   2506'   5M      5N      �� 5P      -   5        $
��txt1��5P      �� 5Q      -	   5        $
��txt2��5Q      �� 5R      -
   5        $
��txt3��5R      �� 5S      -   5        $
��txt4��5S      �� 5T      -   5        $
��txt5��5T      5U      5V      5W      