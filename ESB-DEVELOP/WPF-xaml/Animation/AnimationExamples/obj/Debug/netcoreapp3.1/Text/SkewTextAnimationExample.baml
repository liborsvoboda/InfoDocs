   M S B A M L   `   `   `  ����  AnimationExamples0    *AnimationExamples.SkewTextAnimationExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� WindowTitle$  Text Animation Example��5       N� 
Background 5	      �� 5
       �� 
StartPoint$ 0.5,0&�6    �� EndPoint$ 0.5,1&�6-   ��5   
   �  � Offset$	 0.0Q�6    � Color$ Black��6$   � 5   
   $	 1.0Q�6   $ #666666��6$   5      .��5      �� $��40q�6   .+�5      �� -   5        $��
TextBorder��5      $
��Left=�6   $��Center=�5         MyWireBrushResource#��[  6"   ._�5      �� -   5        $��RealText��5   	   $��Segoe UI)�5   	   $��60 px(�5   	   $��40q�5   	   
�������Windows Vista �� TextEffects 5      z�  z� PositionCount$ 1��6   -   5        MyTextEffect�� z� 	Transform 5       �� 5!      -   5        TextEffectSkewTransform��	 �� CenterX$		 180Q�5!   ?   
 �� CenterY$
 30Q�5"      5$       � Triggers 5'   
   :� 5(       :� RoutedEvent$ TextBlock.Loaded��6   .[�5)      �� .��5*      �� .��5.      W�  W� From 05/      	 W� To 1550       g� Duration$ 
00:00:0.25D�51       g� RepeatBehavior$ Forever��52       g� AutoReverse$
 True��53       �� 
TargetName$ TextEffectSkewTransform��54       �� TargetProperty$ AngleX�55      W� 59       05:       435;      $ 	00:00:0.5D�5<      $ Forever��5=      $
 True��5>      $ TextEffectSkewTransform��5?      $ AngleY�5@      W� 5D       305E       4005F      $ 00:00:13D�5G      $ Forever��5H      $
 True��5I      $ TextEffectSkewTransform��5J      $ CenterX�5K      �� 5O      $ MyTextEffect��5P      $ PositionStart�5Q      $ 0:0:13D�5R      $
 True��5S      $ Forever��5T      C�5V      l�  �� Value$ 0��6,    �� KeyTime$ 0:0:0��66   l� 5W      $ 1��6,   $ 0:0:1��66   l� 5X      $ 2��6,   $ 0:0:2��66   l� 5Y      $ 3��6,   $ 0:0:3��66   l� 5Z      $ 4��6,   $ 0:0:4��66   l� 5[      $ 5��6,   $ 0:0:5��66   l� 5\      $ 6��6,   $ 0:0:6��66   l� 5]      $ 7��6,   $ 0:0:7��66   l� 5^      $ 8��6,   $ 0:0:8��66   l� 5_      $ 9��6,   $ 0:0:9��66   l� 5`      $ 10��6,   $ 0:0:10��67   l� 5a      $ 11��6,   $ 0:0:11��67   l� 5b      $ 12��6,   $ 0:0:12��67   5d      5e      5f      5g      5i   	   5j      �� 5m      -   5        $��ReflectedText��5m      $
��Left=�5p      $	��Top=�5q      ��5n      ��  �� ElementName$ 
TextBorder�� �� Path$ ActualHeight���5o      �� $ 
TextBorder��$ ActualWidth� J� OpacityMask 5r      �� 5s      $ 0.5,0&�6,   $ 0.5,1&�6?   ��5u      � $	 0.0Q�6)   $ 	#66000000��66   � 5v      $	 1.0Q�6)   $ 	#00000000��66   5x      ��5z      !� 5{   
    !� Visual 5|      �� $ 
TextBorder�� �� RelativeTransform 5}      V� 5~      .~�5      ��  �� ScaleX$ 1Q�6    �� ScaleY$ -1Q�6*   T� 5�       T� Y$ 1Q�6#   5�      5�      5�      5�      5�      