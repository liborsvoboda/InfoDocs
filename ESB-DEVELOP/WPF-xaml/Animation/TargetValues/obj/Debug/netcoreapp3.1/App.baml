   M S B A M L   `   `   `  ����G  CTargetValues, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:TargetValuesTargetValues  5          TargetValues.App   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      ,localclr-namespace:TargetValues     5      apresentationOptionsAhttp://schemas.microsoft.com/winfx/2006/xaml/presentation/options     5        �� 	Resources  5       
  Freeze  MyGridBrushResource j� Viewport j� ViewportUnits j� TileMode �� Opacity j� 
AlignmentX j� 
AlignmentY L� Drawing � Geometry	 � Brush  ArrowBackgroundBrush
 j� Viewbox �� 
StartPoint �� EndPoint � Offset � Color  MyGlassBrushResource �� 
TargetType  CustomButtonStyle �� Property �� Value �� 
TargetType �� RadiusX �� RadiusY ��Name �� Color J� Opacity J� RenderTransformOrigin J� OpacityMask ��Name �� Triggers P� Property P� Value N� EnterActions �� HandoffBehavior  �� 
TargetName! �� TargetProperty	" �� To# g� Duration$ g� AutoReverse% g� FillBehavior& �� 
TargetName' :� RoutedEvent( ��Name	) W� To	* W� By+ g� RepeatBehavior, �� BeginStoryboardName��%�  &	       &	 a    &	 �    &	     L� 5   
   4True  5      $ 	0,0,10,10�5	      $ Absolute=�6   $
 Tile=�5
      $	 0.5Q�6   $
 Left=�5      $	 Top=�6    5      I� 5      .��5      �  ��        �@B @B 		 �	#44CCCCFF6;   � 5      = ��        �@B     �@B P�  �P�  P�  �P�  @B �    @B 	
	 �����5      5      5      L� 5   
   4True  5      $	 0.5Q�5   4   $
 0,0,1,1�5      $ 	0,0,10,20�6   $ Absolute=�6.   $
 Tile=�5       5      I� 5      .��5      � " ��        �@B     �@B  � 		 �#9999FF6B   � 5      " ��        �@B  � �    @B 		 5      �� 5      $ 0,0.5&�62   $ 1,0.5&�6E   .��5   "   � $	 0.0Q�6/   $ #9999FF��6<   � 5    "   $	 1.0Q�6/   $ Transparent��6<   5!      5#      � 5$      " ��    @B �@B @B �@B  � 		 �#9999FF6B   5%      5'      �� 5*   
   4True  5,      $	 0,0&�5+      $	 1,1&�6   $ 1Q�6'   .��5-      � $ 
WhiteSmoke��6   $	 0.2Q�6.   � 5.      $ Transparent��6   $	 0.4Q�6/   � 5/      $ 
WhiteSmoke��6   $	 0.5Q�6.   � 50      $ Transparent��6   $
 0.75Q�6/   � 51      $ 
WhiteSmoke��6   $	 0.9Q�6.   � 52      $ Transparent��6   $ 1Q�6/   53      �� 55   
   " ��6   .�56      ��  � ��$
 Left=�64   �� 57       � ��$ 20q�6(   �� 58       � �� 59      �� 5:      " ��6&   .R�5;      � $��Stretch=�6   $��Stretch=�5<      
������ .+�5>      �� $ 10��5?      $ 10��6   $��5��5@      #��z��6$   �� 5A      $��10q�5B      #��z��5C      �� 5D      $ outlineRect��6(   $ 10��5E      $ 10��6   $��5��5F      ��5G   "   �� 5H   &   outlineRectangleBrush��$ Transparent��6U   5J      �� 5K      $ sBackingRect��6(   $��10q�5L      ��5M   "   �� 5N   &   fillRectangleBrush��$ Transparent��6R   5P      �� 5Q      $��	glassCube��6(   $ 10��5R      $ 10��6   $ 0Q�6+   #���  5S      $��2��5T      $ 0.5,0.5&�5U      ��5V   "   �� 5W   &   $ 0.5,0&�6:   $ 0.5,1&�6M   .��5X   *   � $	 0.0Q�67   $ 	LightBlue��6D   � 5Y   *   $	 1.0Q�67   $
 Gray��6D   5Z   '    5\   "   
� 5]   &   .��5^   *   � $	 0.0Q�67   $ Transparent��6D   � 5_   *   $	 1.0Q�67   $ Black��6D   5`   '   z�5b   "   �� 5c   &   glassCubeScaleTransform��65   5e      �� 5f      $ myContentPresenter��6/   #��z��5g      $��0��5h      $��0��6   $��Center=�5i      $��Center=�5j      #��z��5k      5l       5n      P� 5o       � ��$
 true��6;    5p   "   �� 5q   &   $ Compose=�66   .��5r   *   �� .��5s   .   �� $  outlineRectangleBrush��5t      $! Color�5u      " Red5v      $# 0:0:0.25D�6!   $
$ True��5w      $
% Stop=�5x      �� 5y   .   $  fillRectangleBrush��5z      $! Color�5{      #" Z��5|      $# 0:0:0.25D�6C   $
$ True��5}      $
% Stop=�5~      5   +   5�   '   5�      P� 5�       � {�$ false��6;   . �5�   "   �� $& outlineRect��6)    �@J�Opacity$ 0Q�6_   �� 5�   "   $& 	glassCube��6)    �@J�Opacity$
 0.75Q�6]   5�      :� 5�      $' Mouse.MouseEnter��6+   [�5�   "   �� 5�   &   $( mouseEnterBeginStoryboard��66   .��5�   *   �� .��5�   .   W� $  	glassCube��5�      $! Opacity�5�      ) 15�      $# 0:0:0.5D�6    �� 5�   .   $  outlineRectangleBrush��5�      $! Color�5�      #" Z��5�      $# 0:0:0.5D�6E   W� 5�   .   $  glassCubeScaleTransform��5�      $! ScaleX�5�      * -0.15�      $# 0:0:0.5D�6#   $
$ True��5�      $+ Forever��6,   W� 5�   .   $  glassCubeScaleTransform��5�      $! ScaleY�5�      * -0.15�      $# 0:0:0.5D�6#   $
$ True��5�      $+ Forever��6,   5�   +   5�   '   5�      :� 5�      $' Mouse.MouseLeave��6+   [�5�   "   �� 5�   &   $, mouseEnterBeginStoryboard��67   �� 5�   &   .��5�   *   �� .��5�   .   W� $  	glassCube��5�      $! Opacity�5�      ) 05�      $# 0:0:0.5D�6    5�   +   5�   '   5�      5�      5�      5�      5�      5�      