   M S B A M L   `   `   `  ����  GeometryExamplesB    <Microsoft.Samples.Graphics.Geometries.ShapeGeometriesExample   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� Title$  Shape Geometries��5       � 	Resources 5       �� 
TargetType �� Property �� Value��%T   '��       �� 5      " ��6   .�5	      ��  � ��$
 Left=�63   5
      5      .��5      ��  �� Orientation$ 
Horizontal=�6   
�������.+�5      �� $��10q�6   .+�5   
   �� LineGeometry6"   �� 5   
   $	��150��6   $	��250��6   
���   �$��1q�6>      MyGridBrushResource#��[  6R   ._�5      F� 
���   �$��1��6    ��5      �� 5       �� 
StartPoint$ 10,10&�6    �� EndPoint$ 50,30&�60   5      5      �� 5   
   EllipseGeometry6%   �� 5   
   $	��150��6   $	��250��6   
���   �$��1q�6>   #��[  6R   ._�5      F� 
���   �$��1��6    ���#CCCCFF��5      @� 5       @� Center$ 40,70&�6    	 @� RadiusX$	 30Q�6/   
 @� RadiusY$
 30Q�6<   5!      5"      �� 5$   
   RectangleGeometry6'   �� 5%   
   $	��150��6   $	��250��6   
���   �$��1q�6>   #��[  6R   ._�5&      F� 
���   �$��1��6    ���#CCCCFF��5'      �� 5(       �� Rect$ 30,55 100 30�6"   5*      5+      5,   	   �� 5.      $��10q�6   .+�50   
   �� $	��400��6   $��0,10,0,0q�6#   �� 51      .�6   ��You can create composite shapes from multiple geometries using a GeometryGroup. The following example creates a composite shape from a line, an ellipse, and a rectangle. The GeometryGroup has a FillRule of EvenOdd.54      55      �� 58   
   2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6R     CodeTextBlockStyle#��[ 6   $��0,0,0,10q�6@   ��
<GeometryGroup FillRule="EvenOdd">
  <LineGeometry StartPoint="10,10" EndPoint="50,30" />
  <EllipseGeometry Center="40,70" 
    RadiusX="30" RadiusY="30" />
  <RectangleGeometry Rect="30,55 100 30" />
</GeometryGroup>       
        5?      �� 5@   
   $	��150��6   $	��250��6   
���   �$��1q�6>   #��[  6R   ._�5A      F� 
���   �$��1��6    ���#CCCCFF��5B      � 5C       � FillRule$ EvenOdd=�6   .��5D      �� $ 10,10&�6   $ 50,30&�62   @� 5E      $ 40,70&�6"   $	 30Q�61   $
 30Q�6>   �� 5F      $ 30,55 100 30�6$   5G      5I      5J      �� 5L   
   $	��400��6   $��0,10,0,0q�6#   �� 5M      .�6   ��The following example is identical to the previous example, except that the GeometryGroup's FillRule is set to Nonzero instead of EvenOdd.5N   O   5O      �� 5Q   
    preserve6R   #��[ 6   $��0,0,0,10q�6@   ��
<GeometryGroup FillRule="Nonzero">
  <LineGeometry StartPoint="10,10" EndPoint="50,30" />
  <EllipseGeometry Center="40,70" 
    RadiusX="30" RadiusY="30" />
  <RectangleGeometry Rect="30,55 100 30" />
</GeometryGroup>       
        5X      �� 5Y   
   $	��150��6   $	��250��6   
���   �$��1q�6>   #��[  6R   ._�5Z      F� 
���   �$��1��6    ���#CCCCFF��5[      � 5\      $ Nonzero=�6   .��5]      �� $ 10,10&�6   $ 50,30&�62   @� 5^      $ 40,70&�6"   $	 30Q�61   $
 30Q�6>   �� 5_      $ 30,55 100 30�6$   5`      5b      5c      5f   	   5h      5i      