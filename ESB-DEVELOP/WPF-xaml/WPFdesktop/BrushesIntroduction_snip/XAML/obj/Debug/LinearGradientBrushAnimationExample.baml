   M S B A M L   `   `   `  ����N� 5      R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� Title$+  %LinearGradientBrush Animation Example��5       � 	Resources 5	       �� 
TargetType �� Property �� Value O� 	GlowColor��%M  '��       '�� �     �� 5
      " ��6   .�5      ��  � ��
 �����6%   �� 5       �@��Padding$ 10q�6"   �� 5       �@J�BitmapEffect 5   
   O� 5      $ White��6"   5   	   5      �� 5      " ��6   .�5      ��  �@J�BitmapEffect 5   
   F� 5      5   	   5      5      .��5      ]� .+�5      �� $��10q�6      blueHorizontalGradientBrush#��[  5       $	��Top=�5!      ._�5"      ��   MyIntroTextBlockStyle#��[ 6   ��The following examples show several different ways of animating LinearGradientBrush objects. Left-click the shapes to begin their animations.5&   	   5'      �� 5*      $��10q�6   $��Bottom=�5+        footerRectangleStyle#��[ 5,      #��[  5-      �� 5/      ._�50      ��  �� Orientation$ 
Horizontal=�6   .+�52   
   �� $��10q�6     checkeredBackground#��[ 6"   .+�53      �� Animated GradientStop Offset64   �� 56      -   5        $0��*animatedGradientStopOffsetExampleRectangle��56      $	��200��57      $	��100��58      
���   �$��1��6)   $��10q�59      ��5:      �� 5;      .��5<      �  � Color$ 
MediumBlue��6    � Offset$	 0.0Q�62   � 5=      -   5        gradientStopA2��$ Purple��5=   7   $	 0.5Q�6F   � 5>      $	 Red��6   $	 1.0Q�6+   5?      	 � Triggers	 5B      :� 5C      
 :� RoutedEvent$#
 Rectangle.MouseLeftButtonDown��6   .[�5D      �� .��5E      �� .��5F      W�  �� 
TargetName$ gradientStopA2��5G       �� TargetProperty$ Offset�5H       W� From$	 0.0X�5I      	 W� To$	 1.0X�6"    g� Duration$ 0:0:3D�6+    g� FillBehavior$
 Stop=�6<   5J      5K      5L      5N      �� 5Q      Animated GradientStop Color63   �� 5T      -   5        $/��)animatedGradientStopColorExampleRectangle��5T      $	��200��5U      $	��100��6   
���   �$��1��5V      $��10q�5W      ��5X      �� 5Y      .��5Z      � $ 
MediumBlue��6   $	 0.0Q�62   � 5[      -   5        gradientStopB2��$ Purple��5[   7   $	 0.5Q�6F   � 5\      $	 Red��6   $	 1.0Q�6+   5]      	 5`      :� 5a      $#
 Rectangle.MouseLeftButtonDown��6   .[�5b      �� .��5c      �� .��5d      �� $ gradientStopB2��5e      $ Color�5f       �� From$ PurpleX�5g      	 �� To$ YellowX�6%   $ 0:0:3D�61   $
 Stop=�6B   5h      5i      5j      5l      �� 5o      Animated GradientStop Opacity65   �� 5p      -   5        $1��+animatedGradientStopOpacityExampleRectangle��5p      $	��200��5q      $	��100��6   
���   �$��1��65   $��10q�5r      ��5s      �� 5t      .��5u      � $ 
MediumBlue��6   $	 0.0Q�62   � 5v      -   5        gradientStopC2��$ Purple��5v   7   $	 0.5Q�6F   � 5w      $	 Red��6   $	 1.0Q�6+   5x      	 5z      :� 5{      $#
 Rectangle.MouseLeftButtonDown��6   .[�5|      �� .��5}      �� .��5~      �� $ gradientStopC2��5      $ Color�5�      $ 0:0:3D�5�      $
 Stop=�6(   	 �� By 5�      �� 5�      
 �� ScA$ -1��6    
 �� ScR$ 0��6)   
 �� ScB$ 0��61   
 �� ScG$ 0��69   5�      5�      5�      5�      5�      5�      �� 5�   
   $��10q�6   #��[ 6!   .+�5�      �� Animated StartPoint6+   �� 5�      $	��200��5�      $	��100��5�      
���   �$��1��6)   $��10q�5�      ��5�      �� 5�      -   5        animatedStartPointExample��.��5�      � $ 
MediumBlue��6   $	 0.0Q�62   � 5�      $ Purple��6   $	 0.5Q�6.   � 5�      $	 Red��6   $	 1.0Q�6+   5�      	 5�      :� 5�      $#
 Rectangle.MouseLeftButtonDown��6   .[�5�      �� .��5�      �� .��5�      ,� $ animatedStartPointExample��5�      $ 
StartPoint�5�       ,� From$	 0,0X�5�      	 ,� To$ 0.5,1X�6"   $ 0:0:3D�6-   $
 Stop=�6>   5�      5�      5�      5�      �� 5�      Animated EndPoint6)   �� 5�      $	��200��5�      $	��100��6   
���   �$��1��65   $��10q�5�      ��5�      �� 5�      -   5        animatedEndPointExample�� �� 
StartPoint$	 0,0&�5�       �� EndPoint$	 1,1&�6"   .��5�      � $ 
MediumBlue��6   $	 0.0Q�62   � 5�      $ Purple��6   $	 0.5Q�6.   � 5�      $	 Red��6   $	 1.0Q�6+   5�      	 5�      :� 5�      $#
 Rectangle.MouseLeftButtonDown��6   .[�5�      �� .��5�      �� .��5�      ,� $ animatedEndPointExample��5�      $ EndPoint�5�      $	 1,1X�5�      $ 0.5,0X�6"   $ 0:0:3D�6-   $
 Stop=�6>   5�      5�      5�      5�      �� 5�      " Animated StartPoint and EndPoint68   �� 5�      $	��200��5�      $	��100��6   
���   �$��1��65   $��10q�5�      ��5�      �� 5�      -	   5        %!animatedStartPointEndPointExample��.��5�      � $ 
MediumBlue��6   $	 0.0Q�62   � 5�      $ Purple��6   $	 0.5Q�6.   � 5�      $	 Red��6   $	 1.0Q�6+   5�      	 5�      :� 5�      $#
 Rectangle.MouseLeftButtonDown��6   .[�5�      �� .��5�      �� .��5�      ,� $' !animatedStartPointEndPointExample��5�      $ 
StartPoint�5�      $	 0,0X�5�      $ 0.5,1X�6"   $ 0:0:3D�6-   $
 Stop=�6>   ,� 5�      $' !animatedStartPointEndPointExample��5�      $ EndPoint�5�      $	 1,1X�5�      $ 0.5,0X�6"   $ 0:0:3D�6-   $
 Stop=�6>   5�      5�      5�      5�      5�      5�   	   5�      5�      5�      