   M S B A M L   `   `   `  ����  GeometryExamples8    2Microsoft.Samples.Graphics.Geometries.SampleViewer   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� WindowTitle$  Geometries Sample��5       � 	Resources 5         ZoomInStoryboard �� 
TargetName �� TargetProperty W� From	 W� To g� Duration g� AutoReverse g� FillBehavior	 g� 	BeginTime
 g� DecelerationRatio��%y  &	        �� 5      -   5        .��5      W� $% MyHorizontalAxisAngleRotation3D��6   $ Angle�5   	   $	 360X�5   	   $ 0X�6   $ 0:0:1D�6    .  $
 Stop=�6A   $	 0:0:0X�5   	   $
 1Q�6   W� 5      $ MyScaleTransform3D��6   $ ScaleX�5   	   $ 0X�5   	   $ 1X�6   $ 0:0:2D�6    .  $
 1Q�6?   W� 5      $ MyScaleTransform3D��6   $ ScaleY�5   	   $ 0X�5   	   $ 1X�6   $ 0:0:2D�6    .  $
 1Q�6?   W� 5      $ MyScaleTransform3D��6   $ ScaleZ�5   	   $ 0X�5   	   $ 1X�6   $ 0:0:2D�6    .  $
 1Q�6?   5      5        � Triggers 5"      :� 5#       :� RoutedEvent$ RadioButton.Checked��6   .[�5$      �� .��5%   
   �� -   5        .��5&      W� $% MyHorizontalAxisAngleRotation3D��6   $ Angle�5'      $ 0X�5(      $	 360X�6   $ 0:0:1D�6    .  $
 Stop=�6E   $	 0:0:1X�5)       g� AccelerationRatio$ 1Q�6   W� 5+      $ MyScaleTransform3D��6   $ ScaleX�5,      $ 1X�5-      $ 0X�6   $ 0:0:2D�6    .  $ 1Q�6C   W� 5/      $ MyScaleTransform3D��6   $ ScaleY�50      $ 1X�51      $ 0X�6   $ 0:0:2D�6    .  $ 1Q�6C   W� 53      $ MyScaleTransform3D��6   $ ScaleZ�54      $ 1X�55      $	 0.1X�6   $ 0:0:2D�6    .  $ 1Q�6E   57      58   	   59      .��5<      ]� .+�5>      �� $
��Left=�6     MyBlueGridBrushResource#��[ 6#   ._�5A      �� $��Stretch=�6   $��10q�6/   .+�5B   
   	� -   5         	�Name$ Example1RadioButton��5B      $��0,0,0,10q�6L   .��6^   Geometry Usage6n   	� 5C   
   -   5        $��0,0,0,10q�5C   /   .��6A   Shape Geometries6S   	� 5D   
   -   5        $��0,0,0,10q�5D   /   .��6A   PathGeometry6O   	� 5E   
   -   5        $��0,0,0,10q�5E   /   .��6A   #!Geometry Attribute Syntax Example6d   	� 5F   
   -   5        .��5F   /   Combining Geometries Example6M   5G   	   5H      � 5J      
���   �.+�5M      ��  $  BlackBackgroundGridBrushResource#��[ 6    J� OpacityMask 5N   
   
� 5O      .��5P      �  � Offset$	 0.0Q�6    � Color$ 	#FF000000��6(   � 5Q      $	 1.0Q�6   $ 	#00000000��6(   5R      5T   	   �� 5Z      ._�5\   
   �� }�. ._�5]      (�  (� Stretch$
 Fill=�5^      ��5_      ��  �� ElementName$ myScrollViewer�� �� Path$ ActualWidth���5`      �� $ myScrollViewer��$ ActualHeight�.��5a      '� -	   5        $��myViewport3D��5b       J� Opacity$ 1Q�5c       J� IsHitTestVisible .   '� Camera 5d      =� 5e       � LookDirection$ 0,0,-25�5f       � UpDirection$ 0,1,05�5g       � Position$ 0,0,51�5h       =� FieldOfView$ 90Q�5i      .x�5k      g� 2�5m      g� 5n       g� Content 5o      �� 5p       �� Color$ 	#FFFFFFFF��6%   5r      g� 5s      2�5t      g� 5u       5v      � 5w      -
   5        myPlane�� � Geometry 5x      k� 5y       -   5        
myGeometry�� k� TriangleIndices �    
	  k� TextureCoordinates!  �   ! k� 	PositionsK! �    � ��v� � @T�  �H�@T�  �H�@T�  �H���v� � ��v�5}   !   " � Material" 5      u� 5�       # u� Brush# 5�   "   !� 5�   $   ($ �� !CacheInvalidationThresholdMinimum$$ 0Q�5�   %   % �� CachingHint$% Cache=�5�   %   & !� Visual& 5�   %   �� $ myScrollViewer��5�   !   5�      ' g� 	Transform' 5�      Y� 5�      .�5�      �� -   5        myHorizontalRotation��( �� CenterX$( 0Q�5�      ) �� CenterY$) 0Q�6+   * �� CenterZ$* 0Q�67   + �� Rotation+ 5�       �� 5�   "   , �� Axis$, 0,1,05�66   - �� Angle$- 0Q�6C   -   5        #MyHorizontalAxisAngleRotation3D��5�   "   5�      �� 5�      -   5        MyScaleTransform3D��. �� ScaleX$. 1Q�5�      / �� ScaleY$/ 1Q�6*   0 �� ScaleZ$0 1Q�65   5�      5�      5�      5�      5�      5�      5�      5�   	   �� 5�      -   5        $��scrollViewerBorder��5�      ._�5�   
   �� -   5        $��myScrollViewer��5�      
�������$
��Auto=�5�      $
��Auto=�60   $��Stretch=�5�      $��Stretch=�6)   .��5�       � -   5        $��	mainFrame��5�      
�������1  � NavigationUIVisibility$1 Hidden=�5�      z�5�      �� 5�      5�      5�      5�   	   5�      5�      5�      