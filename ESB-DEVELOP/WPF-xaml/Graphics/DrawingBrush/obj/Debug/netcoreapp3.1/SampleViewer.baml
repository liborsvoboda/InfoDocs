   M S B A M L   `   `   `  ����  DrawingBrush    DrawingBrush.SampleViewer   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � Title$  Drawing Brush Examples��5      
������� � Triggers 5
      :� 5       :� RoutedEvent$ Page.Loaded��6   .[�5      �� -   5         ��Name$) #backgroundAnimationsBeginStoryboard��5      .��5   
   �� .��5      ��  �� 
TargetName$ 	mainPanel��5       �� TargetProperty$~ x(DockPanel.Background).(DrawingBrush.Drawing).(DrawingGroup.Children)[0].(GeometryDrawing.Brush).(SolidColorBrush.Color)�5       �� From 	LightGray5      	 �� To DarkGray6    g� Duration$ 0:0:50D�6,   	 g� RepeatBehavior$	 Forever��6>   
 g� AutoReverse$

 True��5      W� 5      $ 	mainPanel��5      $M G(DockPanel.Background).(DrawingBrush.Transform).(RotateTransform.Angle)�5       W� From 05      	 W� To 3606   $ 0:5:00D�6   $	 Forever��61   $

 True��5      W� 5      $ 	mainPanel��5      $� }(DockPanel.Background).(DrawingBrush.Drawing).(DrawingGroup.Children)[1].(GeometryDrawing.Geometry).(EllipseGeometry.RadiusX)�5       0.15       0.256   $ 0:0:5D�6"   $	 Forever��63   $

 True��5      ,� 5      $ 	mainPanel��5      $� |(DockPanel.Background).(DrawingBrush.Drawing).(DrawingGroup.Children)[2].(GeometryDrawing.Geometry).(EllipseGeometry.Center)�5       ,� From -0.25, -0.255       	 ,� To 	1.25,1.256!   $ 0:0:10D�60   $	 Forever��6B   $

 True��5!      5"      5#   	   5$      :� 5%       :� 
SourceName$" disableAnimationsRadioButton��6   $ RadioButton.Unchecked��6=   .[�5&      ��  �� BeginStoryboardName$) #backgroundAnimationsBeginStoryboard��6   5'      :� 5(      $" disableAnimationsRadioButton��6   $ RadioButton.Checked��6=   .[�5)      ?� $) #backgroundAnimationsBeginStoryboard��6   5*      .��5,      ]� -   5        $��	mainPanel��5,      ��5-      L� 5/       j� TileMode$
 Tile=�6    j� Viewport$ 0,0,100,100�50   	    j� ViewportUnits$ Absolute=�6     L� Drawing 51   
   I� 52      ��55      �  � Geometry 56      �� 57       �� Rect$ 0,0,1,1�6&    � Brush 59      �� 5:       �� Color$ 	LightGray��6$   
 � Pen 5<      >� 5=       >� 	Thickness$
 0.01Q�6    >� Brush
 �����6)   5?      � 5A       �	#99CCCCCC 5B      @� 5C       @� Center$ 0.75,0.5&�6$    @� RadiusX$
 0.25Q�66    @� RadiusY$
 0.25Q�6E   5E      � 5F       �	#66CCCCCC 5G      @� 5H      $ 	0.25,0.25&�6$   $	 0.1Q�67   $	 0.1Q�6E   5J      5L       �� 	Transform 5N   
   �� 5O        �� CenterX$	  0.5Q�6   ! �� CenterY$	! 0.5Q�6*   5Q   	   .+�5T      o� $	��Top=�6   .@�5U      m� $
��File��6   .@�5V   
   m� -   5        $
��Exit��5V      6!   5W   	   m� 5X      $��Options��6   .@�5Y   
   m� $��Background Animation��6   .@�5Z      	� " d� 	IsChecked$
" TrueY�6   .��6)   On5[      	� 5\      -   5        $"��disableAnimationsRadioButton��5\      .��6<   Off6A   5]      5^   	   5_      �� 5a      $
��Left=�6   ._�5b      �� $��10q�6   .+�5d   
   	� -   5         "  SampleSelectorRadioButtonStyle#��[  5d      $��0,0,0,10q�5f      .��6   Using DrawingBrush Example69   	� 5g   
   -   5        #��[  5g      $��0,0,0,10q�5i      .��6   Transform Example60   	� 5j   
   -   5        #��[  5j      $��0,0,0,10q�5l      .��6   ImageDrawing Example63   	� 5m   
   -   5        #��[  5m      .��5n   $   !Animate GeometryDrawing Example6E   5p   	   5q       � 5t      -	   5        $��	mainFrame��5t      ���	#AAFFFFFF6   5u      5v      