   M S B A M L   `   `   `  ����E  AImageBrush, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:ImageBrush
ImageBrush  5          ImageBrush.App   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      *localclr-namespace:ImageBrush     5        �� 	Resources  5         GrayBlueGradientBrush �� 
StartPoint �� EndPoint � Color � Offset  MyButtonBackgroundBrush  MyHeaderBackground �� Opacity  MyGlassBrushResource �� 
TargetType �� Property �� Value	 �� 
TargetType
 ��Name �� RadiusX �� RadiusY J� Opacity J� RenderTransformOrigin J� BitmapEffect ��Name �� Triggers ]� 
Conditions �� Property �� Value �� 
TargetName �� Radius P� Property P� Value :� RoutedEvent ��Name �� 
TargetName �� TargetProperty	 W� By g� Duration �� BeginStoryboardName  MyAnimatedRectangleStyle  �� ImageSource! j� TileMode" �� 	Transform# �� Angle$ �� Triggers% g� 
SpeedRatio	& � To' g� RepeatBehavior( g� AutoReverse	) W� To* g� AccelerationRatio+ g� DecelerationRatio��%T  &	        &	 �     &	 �    &	 �    '	� *    7   7  '�� �    &	 g    �� 5      $	 0,0&�6@   $	 1,1&�6Q   ��5	      � $ DarkGray��6#   $ 0Q�64   � 5
      $ #CCCCFF��6#   $	 0.5Q�63   � 5      $ DarkGray��6#   $ 1Q�64   5      �� 5      $	 0,0&�6B   $	 1,1&�6S   ��5      � $ #330066��6#   $ 0Q�63   � 5      $ Transparent��6#   $	 0.5Q�67   � 5      $ #330066��6#   $ 1Q�63   5      �� 5      $ 0,0.5&�6=   $ 1,0.5&�6P   $	 0.5Q�6a   ��5      � � 5      $ 	GoldenRod��6'   $ 0Q�69   � 5      $
 Gold��6'   $
 0.25Q�64   � 5      $ Yellow��6'   $
 0.75Q�66   � 5      $ White��6'   $ 1Q�65   5      5       �� 5"      $	 0,0&�6?   $	 1,1&�6P   $
 0.75Q�6_   ��5$      � $ 
WhiteSmoke��6#   $	 0.2Q�66   � 5%      $ Transparent��6#   $	 0.4Q�67   � 5&      $ 
WhiteSmoke��6#   $	 0.5Q�66   � 5'      $ Transparent��6#   $
 0.75Q�67   � 5(      $ 
WhiteSmoke��6#   $	 0.9Q�66   � 5)      $ Transparent��6#   $ 1Q�67   5+      �� 5/      " 	�6   .�50      ��  � ��8   6/   �� 51       � �� 52      �� 53      "	 	�6*   .R�54      � #��z��6#   #��z��6C   $
}�true��6e   .+�55   "   �� $
 outerRectangle��6,   $��Stretch=�6D   $��Stretch=�56      #��z��6-   $ 20��57      $ 20��6    $��5��6-   
������ 6A   �� 58   "   $
 innerRectangle��6,   $��Stretch=�6D   $��Stretch=�59      
������ $��20��6B   #��z��5:      $ 20��67   $ 20��6D   �� 5;   "   $
 	glassCube��6,   $��Stretch=�6?   $��Stretch=�5<      $��2��5=      $ 10��6%   $ 10��62   $ 0Q�6?   8�� $ 0.5,0.5&�5?      ��5@   &   �� 5A   *   $ 0.5,0&�6>   $ 0.5,1&�6Q   ��5C   2   � $	 0.0Q�6?   $ 	LightBlue��6L   � 5D   2   $	 1.0Q�6?   $
 Gray��6L   5F   +   z�5H   &   V� 5I   *   .~�5J   .   �� �� 5K   .   5L   +    5N   &   �� 5O   *   5Q   #   ]� 5R   "   $!��myContentPresenterDockPanel��6,   .+�5S   &   �� $ myContentPresenter��67   $��20q�6S   #��z��5T      
���   �68   5V   #   5W       5X      ]� 5Y   "    5Z   &   �� 5[   *    �@J�IsMouseOver$
 true��6K   �� 5\   *    �@d�	IsChecked$ falseY�6I   ./�5^   &   �� # � ��6J   $ outerRectangle��6�    � ���� 5_   &   $ 	glassCube��6T    �@J�Opacity$ 1Q�6J   6T   �� 5`   &   $ myContentPresenter��6V    �@J�BitmapEffect 5a   *   �� 5b   .   $ 1Q�6?   5d   '   5e   #   P� 5f   "    �@d�	IsChecked$
 trueY�6?   . �5g   &   �� $ 	glassCube��6T    �@J�Opacity$ 1Q�6J   6T   5h   #   P� 5i   "    �@J�	IsFocused$
 true��6?   . �5j   &   �� # � ��6I   $ outerRectangle��6�    � ���� 5k   &   $ 	glassCube��6T    �@J�Opacity$ 1Q�6J   6T   5l   #   :� 5m   "   $ Mouse.MouseEnter��6/   [�5n   &   �� 5o   *   $ mouseEnterBeginStoryboard��6:   .��5p   .   �� .��5q   2   W� $ 	glassCube��5r      $V P(Rectangle.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�5s       -0.15t      $ 0:0:0.5D�6#   W� 5u   2   $ 	glassCube��5v      $V P(Rectangle.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�5w       -0.15x      $ 0:0:0.5D�6#   5y   /   5z   +   5|   #   :� 5}   "   $ Mouse.MouseLeave��6/   [�5~   &   �� 5   *   $ mouseEnterBeginStoryboard��69   5�   #   :� 5�   "   $ RadioButton.Checked��6/   [�5�   &   �� 5�   *   .��5�   .   �� .��5�   2   W� $ 	glassCube��5�      $V P(Rectangle.RenderTransform).(TransformGroup.Children)[1].(RotateTransform.Angle)�5�       3605�      $ 0:0:0.5D�6"   5�   /   5�   +   5�   #   5�      5�      5�      �� 5�      " ��6   .�5�      ��  � ��$ Verdana)�6/   �� 5�       � ��$
 Wrap=�61   �� 5�       � ��$
 Left=�68   5�      �� 5�      .�5�      ��  � �� 5�      �� 5�      $"  sampleImages\purpleblock.jpg��6%   $! FlipXY=�6P   $
 0.25Q�6b   " 5�      �� 5�   "   $# 0Q�62   5�      5�      $ 5�      :� 5�      $ Rectangle.Loaded��6#   [�5�      �� 5�      .��5�   "   �� $
% 1.25Q�6-   .��5�   &   � $, &(Rectangle.Fill).(ImageBrush.Viewport)�64   & 0,0,0.5,0.55�      $ 0:0:20D�6$   $' Forever��66   $
( True��6O   W� 5�   &   $E ?(Rectangle.Fill).(ImageBrush.Transform).(RotateTransform.Angle)�5�      ) 3605�      $ 0:1:00D�6   $' Forever��6.   $	* 0.5Q�6G   $	+ 0.5Q�6_   5�   #   5�      5�      5�      5�      5�      