   M S B A M L   `   `   `  ����  DrawingBrush0    *DrawingBrush.AnimateGeometryDrawingExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� Title$  Using a DrawingBrush��5      .��5	      �� .+�5
      �� ���	#66000000._�5      �� $��10q�6   $
��Left=�6   
�������" Animate GeometryDrawing Examples5   	   5      �� 5      $��10q�6   .+�5      �� }The contents of GeometryDrawing may be animated. In the following example, an EllipseGeometry's RadiusX property is animated.5   	   �� 5       �� Orientation$ 
Horizontal=�6   .+�5   
   ]� -   5        $��myAnimatedDrawing��5      $	��400��6-   $	��400��6:   ��5      L� 5       j� TileMode$ FlipXY=�6    j� Viewport$ 0,0,100,100�6.    j� ViewportUnits$ Absolute=�6E    j� Viewbox$ 0,0,1,1�5       j� ViewboxUnits$ Absolute=�6!    L� Drawing 5      � 5      
 � Pen 5      >� 5      	 >� Brush
	 � ���
 >� 	Thickness$	
 0.1Q�6)    � Geometry 5      @� 5        @� RadiusX$
 0.45Q�6&    @� RadiusY$	 0.2Q�65    @� Center$ 0.5,0.5&�6C   5"      5$      5&      5'   	   5(      5)       � Triggers 5*      :� 5+       :� RoutedEvent$ Page.Loaded��6   .[�5,      �� .��5-   
   �� .��5.      W�  �� 
TargetName$ myAnimatedDrawing��5/       �� TargetProperty$h b(DockPanel.Background).(DrawingBrush.Drawing).(GeometryDrawing.Geometry).(EllipseGeometry.RadiusX)�50       W� From 0.0151      	 W� To 0.56    g� Duration$ 0:0:10D�6"    g� AutoReverse$
 True��64    g� RepeatBehavior$ Forever��6G   52      53   	   54      56      