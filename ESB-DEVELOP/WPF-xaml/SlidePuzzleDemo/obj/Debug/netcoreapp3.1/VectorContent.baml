   M S B A M L   `   `   `  ����  SlidePuzzleDemo#    SlidePuzzleDemo.VectorContent   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   $	��500��5   	   $	��500��6     � Triggers  5      :� 5   
    :� RoutedEvent$ Canvas.Loaded��6   [�5      �� 5	      ��5
      �� 5      -   5         ��Name$ MyStoryboard��5   %   .��5      �� 	 �� To
 Orange6-    g� Duration$ 0:0:5D�69    g� AutoReverse$
 true��6J    g� RepeatBehavior$ Forever��6]    �� 
TargetName$ BottomBackgroundColor��5   -    �� TargetProperty$ Color�5   -   W� 5      		 W� To	 3606.   $ 0:0:7.1D�67   $ Forever��6J   $ EllipseRotater��5   .   $ Angle�5   .   W� 5      
 W� From
 0.16.   	 0.969   $ 0:0:5D�6B   $
 true��6S   $ Forever��5   .   $ MiddleGradientStop��5   .   $ Offset�5   .   W� 5      
 -456.   	 4569   $ 0:0:1.7D�6A   $
 true��6T   $ Forever��5   .    g� AccelerationRatio$
 0.25Q�5   .    g� DecelerationRatio$
 0.25Q�6G   $ TextSkewTransform��5   .   $ AngleX�5   .   5       5"      5$      ��5'      �� 5(   
    �� EndPoint$	 0,1&�6   ��5*      � � 5+       � Color$ Black��6#    � Offset$ 0Q�61   � 5,      -   5        BottomBackgroundColor��$
 Cyan��5,   B   $ 1Q�6O   5-      5/      .+�52      �� 	 �� X1$ 40��6   	 �� Y1$ 40��6   	 �� X2$	 460��6   	 �� Y2$	 460��6$   
���   �$��15��6<    �� StrokeStartLineCap$ Round=�6Q    �� StrokeEndLineCap$ Round=�53      �� 55      $	 460��6   $ 40��6   $ 40��6   $	 460��6$   
���  ��$��15��6:   $ Round=�6O   $ Round=�56      A� 58      $	��450��6   $	��200��6    �� Left$ 25��6'   
 �� Top$	 150��68   ��59   
   
� 5:      ��5<      � $ White��6#   $ 0Q�61   � 5=      $ Black��6#   $ 1Q�61   5?      z�5A   
   �� 5B      -   5        EllipseRotater�� �� Angle$ 0Q�5B   6    �� CenterX$	 225Q�6@    �� CenterY$	 100Q�6N   5D      �� 5G      $��
flower.jpg��6   $	��220��6    $	 100��6-   $	 120��6?   A� 5I      $	��200��6   $	��450��6   $	 150��6'   $ 25��69   ��5J   
   
� 5K      ��5M      � � 5N      $ Transparent��6'   $ 0Q�6;   � 5O      $ 	#80000000��6'   $	 0.5Q�69   -   5        MiddleGradientStop��5O   F   � 5P      $
 Blue��6'   $ 1Q�64   5Q      5S      5U      �� 5W      $	 100��6   $	 200��6"   $
��Bold"�63   $��72(�6E   $��Georgia)�6S    J� RenderTransformOrigin$ 0.5,0.5&�5X      
�������
Vectors!z�5Z   
   �� 5[      -   5        TextSkewTransform��5[      5]      5_      