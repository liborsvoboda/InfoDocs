   M S B A M L   `   `   `  ����  AnimationExamples5    /AnimationExamples.TranslateTextAnimationExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� WindowTitle$/  )TranslateTransform Text Animation Example��5       N� 
Background 5	      �� 5
       �� 
StartPoint$ 0.5,0&�6    �� EndPoint$ 0.5,1&�6-   ��5   
   �  � Offset$	 0.0Q�6    � Color$ Black��6$   � 5   
   $	 1.0Q�6   $ #666666��6$   5      .��5      �� $��40q�6   .+�5      �� -   5        $��
TextBorder��5      $
��Left=�6   $	��Top=�5         MyWireBrushResource#��[  6   ._�5      �� -   5        $��RealText��5   	   $��Segoe UI)�5   	   $��60 px(�5   	   $��40q�5   	   
�������Windows Vista �� TextEffects 5      z�  z� PositionCount$ 1��6   -   5        MyTextEffect�� z� 	Transform 5      T� 5       -   5         TextEffectTranslateTransform��5    #   5"      	 � Triggers	 5%   
   :� 5&      
 :� RoutedEvent$
 TextBlock.Loaded��6   .[�5'      �� .��5(      �� .��5,      W�  �� 
TargetName$" TextEffectTranslateTransform��5-       �� TargetProperty$ Y�5.       W� From 05/      	 W� To 2050       g� Duration$ 
00:00:0.25D�51       g� RepeatBehavior$ Forever��52       g� AutoReverse$
 True��53      �� 56      $ MyTextEffect��57      $ PositionStart�58      $ 0:0:6.5D�59      $
 True��5:      $ Forever��5;      C�5=      l�  �� Value$ 0��6,    �� KeyTime$ 0:0:0��66   l� 5>      $ 1��6,   $ 0:0:0.5��66   l� 5?      $ 2��6,   $ 0:0:1��66   l� 5@      $ 3��6,   $ 0:0:1.5��66   l� 5A      $ 4��6,   $ 0:0:2��66   l� 5B      $ 5��6,   $ 0:0:2.5��66   l� 5C      $ 6��6,   $ 0:0:3��66   l� 5D      $ 7��6,   $ 0:0:3.5��66   l� 5E      $ 8��6,   $ 0:0:4��66   l� 5F      $ 9��6,   $ 0:0:4.5��66   l� 5G      $ 10��6,   $ 0:0:5��67   l� 5H      $ 11��6,   $ 0:0:5.5��67   l� 5I      $ 12��6,   $ 0:0:6��67   5K      5L      5M      5N      5P   	   5Q      �� 5T      -   5        $��ReflectedText��5T      $
��Left=�5W      ��5U      ��  �� ElementName$ 
TextBorder�� �� Path$ ActualHeight���5V      �� $ 
TextBorder��$ ActualWidth� J� OpacityMask 5X      �� 5Y   
   $ 0.5,0&�6   $ 0.5,1&�61   ��5[      � $	 0.0Q�6   $ 	#66000000��6(   � 5\      $	 1.0Q�6   $ 	#00000000��6(   5^      ��5`      !� 5a   
    !� Visual 5b      �� $ 
TextBorder�� �� RelativeTransform 5c      V� 5d      .~�5e      ��  �� ScaleX$ 1Q�6    �� ScaleY$ -1Q�6*   T� 5f       T� Y$ 1Q�6#   5g      5i      5k      5m      5o      