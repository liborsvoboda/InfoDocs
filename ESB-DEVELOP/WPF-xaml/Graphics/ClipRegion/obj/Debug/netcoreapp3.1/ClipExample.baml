   M S B A M L   `   `   `  ����  
ClipRegion    ClipExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� WindowTitle$  Clip Examples��5      .��5      ��  �� Orientation$ 
Horizontal=�6      MyScissorsBrushResource#��[  6(   .+�5	      �� $��10q�6   .+�5
      �� 	No Clip6   �� 5      $"��sampleImages\Waterlilies.jpg��6   $	��200��5   	   $	��150��6   $
��Left=�6"   �� 5      Triangular Clip Example6+   �� 5       J� Clip" ��    ���� ��    � �����	$"��sampleImages\Waterlilies.jpg��5   	   $	��200��5   	   $	��150��6   $
��Left=�6"   �� 5      Elliptical Clip Example6+   �� 5      $"��sampleImages\Waterlilies.jpg��5   	   $	��200��5   	   $	��150��6   $
��Left=�6"    5   
   @� 5       @� RadiusX$	 100Q�5       @� RadiusY$ 75Q�5       @� Center$ 100,75&�5      5   	   5       �� 5#      $��10q�6   .+�5$      �� Animated Clip Examples6*   �� 5&      $"��sampleImages\Waterlilies.jpg��5'   	   $	��200��5(   	   $	��150��6   $
��Left=�6"    5)   
   @� 5*      -   5        MyEllipseGeometry1��$	 100Q�5+      $ 75Q�5,      $ 100,75&�5-       � Triggers 5/   
   :� 50       :� RoutedEvent$ Image.Loaded��6   .[�51      �� .��52      �� .��53      ,�  �� 
TargetName$ MyEllipseGeometry1��54      	 �� TargetProperty$	 (EllipseGeometry.Center)�55      
 ,� From
 0,056      	 ,� To 200,1506    g� Duration$ 0:0:3D�6+    g� RepeatBehavior$ Forever��6<    g� AutoReverse$
 True��57      58      59      5:      5<   	   �� 5>      $"��sampleImages\Waterlilies.jpg��5?   	   $	��200��5@   	   $	��150��6   $
��Left=�6"    5A   
   @� 5B      -   5        MyEllipseGeometry2��$	 100Q�5C      $ 75Q�5D      $ 100,75&�5E       5G   
   :� 5H      $ Image.Loaded��6   .[�5I      �� .��5J      �� .��5K      W� $ MyEllipseGeometry2��5L      $	 (EllipseGeometry.RadiusX)�5M       W� From 05N      	 W� To 1506   $ 0:0:3D�6%   $ Forever��66   $
 True��6O   W� 5O      $ MyEllipseGeometry2��5P      $	 (EllipseGeometry.RadiusY)�5Q       05R       1506   $ 0:0:3D�6%   $ Forever��66   $
 True��6O   5S      5T      5U      5W   	   5Y      5Z      5[      