   M S B A M L   `   `   `  ����K  GHeightProperties, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:HeightPropertiesHeightProperties  5   	   !    HeightProperties.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:HeightProperties     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)   .��5	      � .+�5
   
   �� 
���   �$��2q�6%   
�������._�5      �� $��10q�6   .+�5      �� $��20(�6   $	��Top=�6*   Height Properties Sample6Y   �� 5      $
��Wrap=�6   $��0,0,0,10q�60   ��Four properties are exposed on FrameworkElement that describe an element's Height characteristics. It is possible for these values to be in conflict. This example demonstrates how those conflicts between values are resolved.6$  �� 5      $
��Wrap=�6   $��0,0,0,10q�60   ��If viewed on a continuum, MinHeight value takes precedence over MaxHeight value, which in turn takes precedence over the Height value. This is best demonstrated visually:6�   �� 5      -   5        $��myCanvas��5   �   $	��200��6   $	��200��6&   ���#b0c4de$	��Top=�6J   $��Center=�6c   $��0,0,0,50q�6�   .+�5      �� -   5        $��rect1��5   _   $��Center=�6    
 �� Top$ 50��6=    �� Left$ 50��6M   ���#4682b4$	��100��6{   $	��100��6�   5      �� 5       �� Orientation$ 
Horizontal=�6   $��Center=�66   .+�5      �� -   5        $��Button1��5      $��0,5,5,5q�6=   .��6N   Canvas.ClipToBounds="True"6j   �� 5      -   5        $��Button2��5      $��0,5,5,5q�6,   .��6P   Canvas.ClipToBounds="False"6m   5      � 5       � RowDefinitions 5      �� 5      �� 5       � ColumnDefinitions 5      �� 5      $
��Auto �6+   �� 5      $
��Auto �6+   �� 5      $
��Auto �6+   �� 5       $
��Auto �6+   �� 5!      $
��Auto �6+   �� 5"      $
��Auto �6+   .+�5$      �� $��0��6    $��14(�6-   $
��Bold"�6;   $��6��6M   $��Center=�6a   $��	0,15,0,15q�6~   $
��Wrap=�6�   ecUse the ListBoxes below to manipulate the various Height related properties of the Rectangle above.5%   r   �� 5&      $��1��6    $��0��6-   $��10,0,0,0q�6=   $
��Wrap=�6O   Set the Rectangle Height:6~   �� 5'      -   5        $��1��5'      $��1��6.   $��10,0,0,0q�6;   $��50��6M   $��50��6Y   .@�5(      �� .��6&   256*   �� 5)      .��6&   506*   �� 5*      .��6&   756*   �� 5+      .��6&   1006+   �� 5,      .��6&   1256+   �� 5-      .��6&   1506+   �� 5.      .��6&   1756+   �� 5/      .��6&   2006+   50      �� 52      $��1��6    $��2��6-   $��10,0,0,0q�6=   $
��Wrap=�6O   Set the Rectangle MinHeight:6�   �� 53      -   5        $��3��53      $��1��6.   $��10,0,0,0q�6;   $��50��6M   $��50��6Y   .@�54      �� .��6&   256*   �� 55      .��6&   506*   �� 56      .��6&   756*   �� 57      .��6&   1006+   �� 58      .��6&   1256+   �� 59      .��6&   1506+   �� 5:      .��6&   1756+   �� 5;      .��6&   2006+   5<      �� 5>      $��1��6    $��4��6-   $��10,0,0,0q�6=   $
��Wrap=�6O   Set the Rectangle MaxHeight:6�   �� 5?      -   5        $��5��5?      $��1��6.   $��10,0,0,0q�6;   $��50��6M   $��50��6Y   .@�5@      �� .��6&   256*   �� 5A      .��6&   506*   �� 5B      .��6&   756*   �� 5C      .��6&   1006+   �� 5D      .��6&   1256+   �� 5E      .��6&   1506+   �� 5F      .��6&   1756+   �� 5G      .��6&   2006+   5H      5I      �� 5K      -   5        $
��txt1��5K      �� 5L      -	   5        $
��txt2��5L      �� 5M      -
   5        $
��txt3��5M      �� 5N      -   5        $
��txt4��5N      �� 5O      -   5        $
��txt5��5O      5P      5Q      5R      5S      