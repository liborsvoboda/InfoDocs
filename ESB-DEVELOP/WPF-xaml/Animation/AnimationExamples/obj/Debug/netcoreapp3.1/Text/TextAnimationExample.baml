   M S B A M L   `   `   `  ����  AnimationExamples,    &AnimationExamples.TextAnimationExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� WindowTitle$1  +Animated RotateTransform TextEffect Example��5       N� 
Background 5	      �� 5
       �� 
StartPoint$ 0.5,0&�6    �� EndPoint$ 0.5,1&�6-   ��5   
   �  � Offset$	 0.0Q�6    � Color$ Black��6$   � 5   
   $	 1.0Q�6   $ #666666��6$   5      .��5      �� $��40q�6   .+�5      �� -   5        $��
TextBorder��5      $
��Left=�6   $	��Top=�5         MyWireBrushResource#��[  6   ._�5      �� -   5        $��RealText��5   	   $��Segoe UI)�5   	   $��60 px(�5   	   $��50q�5   	   
�������Windows Vista �� TextEffects 5      z�  z� PositionCount$ 1��6   -   5        MyTextEffect�� z� 	Transform 5       �� 5!      -   5        TextEffectRotateTransform��	 �� Angle$	 0Q�5"      
 �� CenterX$
 10Q�6    �� CenterY$ 10Q�6(   5$       � Triggers 5&   
   :� 5'       :� RoutedEvent$ TextBlock.Loaded��6   .[�5(      �� .��5)      �� .��5*      I�  g� RepeatBehavior$ Forever��6#   .��5.      W�  �� 
TargetName$ TextEffectRotateTransform��5/       �� TargetProperty$ Angle�50       W� From 051      	 W� To 36052       g� Duration$ 
00:00:0.75D�53       g� 	BeginTime 0:0:0.2554      55      W� 59       305:       3705;      $ 00:00:13D�5<      $ Forever��5=       g� AutoReverse$
 True��5>      $ TextEffectRotateTransform��5?      $ CenterX�5@      �� 5D      $ MyTextEffect��5E      $ PositionStart�5F      $ 0:0:13D�5G      $
 True��5H      $ Forever��5I      C�5K      l�  �� Value$ 0��6,    �� KeyTime$ 0:0:0��66   l� 5L      $ 1��6,   $ 0:0:1��66   l� 5M      $ 2��6,   $ 0:0:2��66   l� 5N      $ 3��6,   $ 0:0:3��66   l� 5O      $ 4��6,   $ 0:0:4��66   l� 5P      $ 5��6,   $ 0:0:5��66   l� 5Q      $ 6��6,   $ 0:0:6��66   l� 5R      $ 7��6,   $ 0:0:7��66   l� 5S      $ 8��6,   $ 0:0:8��66   l� 5T      $ 9��6,   $ 0:0:9��66   l� 5U      $ 10��6,   $ 0:0:10��67   l� 5V      $ 11��6,   $ 0:0:11��67   l� 5W      $ 12��6,   $ 0:0:12��67   5Y      5Z      5[      5\      5^   	   5_      �� 5b      -   5        $��ReflectedText��5b      $
��Left=�5e      ��5c      ��  �� ElementName$ 
TextBorder�� �� Path$ ActualHeight���5d      �� $ 
TextBorder��$ ActualWidth� J� OpacityMask 5f      �� 5g   
   $ 0.5,0&�6   $ 0.5,1&�61   ��5i      � $	 0.0Q�6   $ 	#66000000��6(   � 5j      $	 1.0Q�6   $ 	#00000000��6(   5l      ��5n      !� 5o   
    !� Visual 5p      �� $ 
TextBorder�� �� RelativeTransform 5q      V� 5r      .~�5s      ��  �� ScaleX$ 1Q�6    �� ScaleY$ -1Q�6*   T� 5t       T� Y$ 1Q�6#   5u      5w      5y      5{      5|      