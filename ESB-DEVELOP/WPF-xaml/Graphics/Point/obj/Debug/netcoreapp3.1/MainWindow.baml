   M S B A M L   `   `   `  ����@  <Point, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PointPoint  5   	       Point.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Point     5   	     � Title$  
MainWindow��5   	    � SizeToContent$ WidthAndHeight=�6   .��5	      � -   5        $��mainGridPanel��5	      $��10q�6     � ColumnDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $��20 �6   �� 5       � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��20 �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   $��0��5      $��3��5      ���	#99CCCCCC5      �� 5   
   $��0��6   $��0��6!   $��
10,10,0,10q�61   �� 6F   .�6K   Point Sample6Y   6`   �� 5   
   $��2��6   $��0��6!   ���	#99CCCCFF �� RadiusX$ 10��5       �� RadiusY$ 10��6+   ]� 5   
   $��2��6   $��0��6!   .+�5       �� $��	10,20,0,0q�6   $	��Top=�6,   �� 5!      .�6   Point Operations6&   5"      �� 5%      $	��400��6   $	��400��6'   $
��Left=�64   $��10q�6J   .��5&      �� .+�5'      	� -   5        $	��rb1��5'   >   .��6I   31Add point1 to vector1 using overloaded + operator6|   	� 5(      -   5        $	��rb2��5(   >   .��6I   97Add point1 to vector1 using the static Point Add method6�   	� 5)      -   5        $	��rb3��5)   >   .��6I   :8Subtract vector1 from point1 using overloaded - operator6�   	� 5*      -   5        $	��rb4��5*   >   .��6I   @>Subtract vector1 from point1 using the static Point Add method6�   	� 5+      -   5        $	��rb5��5+   >   .��6I   97Subtract point1 from point2 using overloaded - operator6�   	� 5,      -   5        $	��rb6��5,   >   .��6I   DBSubtract point1 from point2 using the static Point Subtract method6�   	� 5-      -   5        $	��rb7��5-   >   .��6I   *(Offset point1.X by 20 and point1.Y by 306s   	� 5.      -	   5        $	��rb8��5.   >   .��6I   97Multiply point1 by matrix 1 using overloaded * operator6�   	� 5/      -
   5        $	��rb9��5/   >   .��6I   @>Multiply point1 by matrix 1 using static Point Multiply method6�   	� 50      -   5        $
��rb10��50   >   .��6J   GECheck point1 and point2 for equality using the overloaded == operator6�   	� 51      -   5        $
��rb11��51   >   .��6J   ECCheck point1 and point2 for equality using the static Equals method6�   	� 52      -   5        $
��rb12��52   >   .��6J   IGCheck object and point2 for equality using the non-static Equals method6�   	� 53      -   5        $
��rb13��53   >   .��6J   IGCheck object and point2 for equality using the non-static Equals method6�   	� 54      -   5        $
��rb14��54   >   .��6J   CAConvert a string representation of a point into a Point structure6�   	� 55      -   5        $
��rb15��55   >   .��6J   CAGet the string representation of point1 using the ToString method6�   	� 56      -   5        $
��rb16��56   >   .��6J   Get the hashcode of point16f   	� 57      -   5        $
��rb17��57   >   .��6J   #!Cast point1 into a Size structure6m   	� 58      -   5        $
��rb18��58   >   .��6J   %#Cast point1 into a Vector structure6o   59      5:      5<      �� 5@   
   $��2��6   $��2��6!   ���	#99CCCCCC$ 10��5A      $ 10��6+   ]� 5C   
   $��2��6   $��2��6!   $��	0,10,0,30q�61   .+�5E      � $	��Top=�6   $��	20,30,0,0q�6)    5F      �� 5G      $��75 �6'   �� 5H      $
��Auto �6'    5K      �� 5L      $��20 �6$   �� 5M      $
��Auto �6$   �� 5N      $
��Auto �6$   �� 5O      $
��Auto �6$   �� 5P      $
��Auto �6$   �� 5Q      $
��Auto �6$   �� 5R      $
��Auto �6$   .+�5U      �� $��0��6   $��0��6)   �� 5V      .�6   	Variables6&   5W      �� 5X      $��1��6   $��0��6)   �� 5Y      .�6   
Point 1:6%   5Z      �� 5[      -   5        $��	txtPoint1��5[   9   $��1��6   $��1��6)   �� 5\      5]      �� 5^      $��2��6   $��0��6)   �� 5_      .�6   
Point 2:6%   5`      �� 5a      -   5        $��	txtPoint2��5a   9   $��2��6   $��1��6)   �� 5b      5c      �� 5d      $��3��6   $��0��6)   �� 5e      .�6   	Vector 1:6&   5f      �� 5g      -   5        $��
txtVector1��5g   9   $��3��6   $��1��6)   �� 5h      5i      �� 5j      $��4��6   $��0��6)   �� 5k      .�6   	Vector 2:6&   5l      �� 5m      -   5        $��
txtVector2��5m   9   $��4��6   $��1��6)   �� 5n      5o      �� 5p      $��5��6   $��0��6)   �� 5q      .�6   	Matrix 1:6&   5r      �� 5s      -   5        $��
txtMatrix1��5s   9   $��5��6   $��1��6)   �� 5t      5u      5v      � 5y      $	��Top=�6   $��
20,110,0,0q�6(    5z      �� 5{      $��75 �6'   �� 5|      $
��Auto �6'    5      �� 5�      $��20 �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   .+�5�      �� $��0��6   $��0��6)   �� 5�      .�6   	Results6$   5�      �� 5�      $��1��6   $��0��6)   �� 5�      .�6   
Operation:6'   5�      �� 5�      -   5        $��txtOperation��5�   9   $��1��6   $��1��6)   �� 5�      5�      �� 5�      $��2��6   $��0��6)   �� 5�      .�6   	Syntax:6$   5�      �� 5�      -   5        $��	txtSyntax��5�   9   $��2��6   $��1��6)   �� 5�      5�      �� 5�      $��3��6   $��0��6)   �� 5�      .�6   	Result:6$   5�      �� 5�      -   5        $��txtResultValue��5�   9   $��3��6   $��1��6)   �� 5�      5�      �� 5�      $��4��6   $��0��6)   �� 5�      .�6   Result Type:6)   5�      �� 5�      -   5        $��txtResultType��5�   9   $��4��6   $��1��6)   �� 5�      5�      5�      5�      5�      5�      