   M S B A M L   `   `   `  ����  2DTransforms<    6Microsoft.Samples.Graphics.Transforms.TransformExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� WindowTitle$  Transform Example��5       � 	Resources 5       �� 
TargetType �� Property �� Value��%T   '��       �� 5      " ��6   .�5      ��  � ��$
 Wrap=�6'   5	      5
      .��5      �� .+�5      �� $��	0,10,0,10q�6   ��5      �� 5   
    �� 
StartPoint$ 0,0.5&�6    �� EndPoint$ 1,0.5&�61   ��5      �  � Offset$	 0.0Q�6    � Color$ #CCCCFF��6(   � 5      $	 1.0Q�6   $ White��6(   5      ._�5      �� $��10q�6   $	��700��6   ��There are a variety of Transforms in the System.Windows.Media namespace that you can use to warp, shrink, move, enlarge, and rotate elements. This sample shows how to use each of the different transform classes.5      5      �� 5       $	��700��6   $	��400��6   $��Center=�6&   .+�5!      �� 
	 �� Top$		 100��6   
 �� Left$
 50��6#    �� TextAlignment$ Center=�5"   	   $
��16pt(�6    ���#CCCCFF J� RenderTransformOrigin$ 0.5,0.5&�5#   	   z�5$   
   �� 5%      -   5        MyAnimatedRotateTransform�� �� Angle$ 0Q�5%   ?   RotateTransform5(   	   �� 5*      -   5        $��
scaledText��5*   5   $		 100��6   $	
 300��6#   $ Center=�5+   	   $
��16pt(�6    
�������$ 0.5,0.5&�5,   	   z�5-   
   �� 5.      -   5        MyAnimatedScaleTransform�� �� ScaleX$ 1Q�5.   =    �� ScaleY$ 1Q�6H   ScaleTransform51   	   �� 53      $		 250��6   $	
 150��6#   $ Center=�54   	   $
��16pt(�6    
��� ���$ 0.5,0.5&�55   	   z�56   
   �� 57      -   5        MyAnimatedSkewTransform�� �� AngleX$ 0Q�57   ;    �� AngleY$ 0Q�6F   SkewTransform5:   	   �� 5<      -   5        $��translatedText��5<   4   $	 30��6   $	
 300��6"   $
��16pt(�5=   	   z�5>   
   T� 5?      -   5         MyAnimatedTranslateTransform�� T� X$ 0Q�5?   E    T� Y$ 0Q�6K   TranslateTransform5B   	   5D      5E       � Triggers 5H      :� 5I       :� RoutedEvent$ Page.Loaded��6   .[�5J      �� .��5K   
   �� .��5L      W�  �� 
TargetName$ MyAnimatedRotateTransform��5M       �� TargetProperty$ Angle�5N       W� From 05O      	 W� To 3606    g� Duration$ 0:0:5D�6    g� RepeatBehavior$ Forever��60   I� 5P      $ Forever��6    g� AutoReverse$
 True��66   .��5Q      W� $ MyAnimatedScaleTransform��5R      $ ScaleX�5S       05T       36   $ 0:0:7D�6   W� 5U      $ MyAnimatedScaleTransform��5V      $ ScaleY�5W       05X       36   $ 0:0:7D�6   5Y      I� 5Z      $ Forever��6   $
 True��66   .��5[      W� $ MyAnimatedSkewTransform��5\      $ AngleX�5]       -455^       706   $ 0:0:10D�6"   W� 5_      $ MyAnimatedSkewTransform��5`      $ AngleY�5a       -455b       706   $ 0:0:10D�6"   5c      I� 5d      $ Forever��6   $
 True��66   .��5e      W� $" MyAnimatedTranslateTransform��5f      $ X�5g       05h       1006   $ 0:0:5D�6!   W� 5i      $" MyAnimatedTranslateTransform��5j      $ Y�5k       05l       2006   $ 0:0:5D�6!   5m      5n      5o   	   5p      5r      