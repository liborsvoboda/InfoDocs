   M S B A M L   `   `   `  ����  Geometry)    #Geometry.CombiningGeometriesExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5	        N� Title$  Combining Geometries��5       � 	Resources 5       �� 
TargetType �� Property �� Value��%T   '��       �� 5      " ��6   .�5      ��  � ��$
 Left=�6.   5      5      .��5      ��  �� Orientation$ Vertical=�6   
�������$��5q�69   .+�5      �� ���#CCCCFF$��Stretch=�6"   ._�5      �� $��10q�6   ,*Creating Composite and Combined Geometries6J   5      �� 5      $��0,10,0,0q�6   $��Stretch=�6"   �� 5         MyHeadingSpanStyle#��[  6   .�69   Composite Geometries6O   �� 6U   ��You can create composite shapes from multiple geometries using a GeometryGroup. The following example creates a composite shape from a line, an ellipse, and a rectangle. The GeometryGroup in this example has a FillRule of EvenOdd.5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6N     CodeTextBlockStyle#��[ 6   $��0,10,0,0q�6<   ��
<GeometryGroup FillRule="EvenOdd">
  <LineGeometry StartPoint="10,10" EndPoint="50,30" />
  <EllipseGeometry Center="40,70" 
    RadiusX="30" RadiusY="30" />
  <RectangleGeometry Rect="30,55 100 30" />
</GeometryGroup>
    5$      �� 5&      $	��150��6   $	��250��6   
���   �$��1q�6:     MyGridBrushResource#��[ 6N   ._�5)      F� 
���   �$��1��6   ���#CCCCFF��5*   
   � 5-       � FillRule$ EvenOdd=�6   .��5.      ��  �� 
StartPoint$ 10,10&�6   	 �� EndPoint$	 50,30&�6.   @� 5/      
 @� Center$
 40,70&�6    @� RadiusX$ 30Q�6-    @� RadiusY$ 30Q�6:   �� 50       �� Rect$ 30,55 100 30�6    51      53   	   54      �� 56      $��0,10,0,0q�6   ��The following code is identical to the previous example, except that the GeometryGroup's FillRule is set to Nonzero instead of EvenOdd.59      �� 5:       preserve6M   #��[ 6   $��0,0,0,5q�6<   ��
<GeometryGroup FillRule="Nonzero">
  <LineGeometry StartPoint="10,10" EndPoint="50,30" />
  <EllipseGeometry Center="40,70" 
    RadiusX="30" RadiusY="30" />
  <RectangleGeometry Rect="30,55 100 30" />
</GeometryGroup>       
    5A      �� 5B      $	��150��6   $	��250��6   
���   �$��1q�6:   #��[ 6N   ._�5E      F� 
���   �$��1��6   ���#CCCCFF��5F   
   � 5J      $ Nonzero=�6   .��5K      �� $ 10,10&�6   $	 50,30&�6.   @� 5L      $
 40,70&�6   $ 30Q�6-   $ 30Q�6:   �� 5M      $ 30,55 100 30�6    5N      5P   	   5Q      �� 5S      �� 5T      #��[  6   .�69   Combining Geometries6O   �� 6U   ��In addition to creating composite geomtries using the GeometryGroup class, you can use the CombinedGeometry class to combine two geometries. The geometries, before combining:5X      �� 5Y   
   $	��150��6   $	��200��6   
���   �$��1q�6>   #��[ 6R   ._�5[      F� 
���   �$��1��6"   ���#CCCCFF��5\   
   � 5]      $ NonZero=�6   .��5^      @� $ 50Q�6   $ 50Q�6+   $
 75,75&�68   @� 5_      $ 50Q�6   $ 50Q�6+   $
 125,75&�68   5`      5b   	   5d      �� 5f      $��0,10,0,5q�6   :8The geometries, after combining with the specified mode:6\   � 5j      $
��Left=�6    � ColumnDefinitions 5k      �� 5l   
   $
��Auto �6   �� 5m   
   $��10 �6   �� 5n   
   $
��Auto �6    � RowDefinitions 5p      �� 5q   
   $
��Auto �6   �� 5r   
   $
��Auto �6   �� 5s   
   $��10 �6   �� 5t   
   $
��Auto �6   �� 5u   
   $
��Auto �6   .+�5x      �� $��0��6   $��0��6"   	Exclude68   �� 5y      $	��150��6   $	��200��6   
���   �$��1q�6<   #��[ 6P   $��0��5z   	   $��1��6   ._�5|   
   F� 
���   �$��1��6   ���#CCCCFF��5}      �� 5�       �� GeometryCombineMode$ Exclude=�6    �� 	Geometry1 5�      @� 5�      $ 50Q�6"   $ 50Q�6/   $
 75,75&�6<    �� 	Geometry2 5�      @� 5�      $ 50Q�6"   $ 50Q�6/   $
 125,75&�6<   5�      5�      5�   	   �� 5�      $��2��6   $��0��6"   	Intersect6:   �� 5�      $	��150��6   $	��200��6   
���   �$��1q�6<   #��[ 6P   $��2��5�   	   $��1��6   ._�5�   
   F� 
���   �$��1��6   ���#CCCCFF��5�      �� 5�      $ 	Intersect=�6    5�      @� 5�      $ 50Q�6"   $ 50Q�6/   $
 75,75&�6<    5�      @� 5�      $ 50Q�6"   $ 50Q�6/   $
 125,75&�6<   5�      5�      5�   	   �� 5�      $��0��6   $��3��6"   Union66   �� 5�      $	��150��6   $	��200��6   
���   �$��1q�6<   #��[ 6P   $��0��5�   	   $��4��6   ._�5�   
   F� 
���   �$��1��6   ���#CCCCFF��5�      �� 5�      $ Union=�6    5�      @� 5�      $ 50Q�6"   $ 50Q�6/   $
 75,75&�6<    5�      @� 5�      $ 50Q�6"   $ 50Q�6/   $
 125,75&�6<   5�      5�      5�   	   �� 5�      $��2��6   $��3��6"   Xor64   �� 5�      $	��150��6   $	��200��6   
���   �$��1q�6<   #��[ 6P   $��2��5�   	   $��4��6   ._�5�   
   F� 
���   �$��1��6   ���#CCCCFF��5�      �� 5�      $	 Xor=�6    5�      @� 5�      $ 50Q�6"   $ 50Q�6/   $
 75,75&�6<    5�      @� 5�      $ 50Q�6"   $ 50Q�6/   $
 125,75&�6<   5�      5�      5�   	   5�      5�      5�      