   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� Title$+  %LinearGradientBrush Animation Example��5       � 	Resources 5	       �� 
TargetType �� Property �� Value O� 	GlowColor��%M  '��       '�� �     �� 5
      " ��6   .�5      ��  � ��
 �����6%   �� 5       �@��Padding$ 10q�6"   �� 5       �@J�BitmapEffect 5   
   O� 5      $ White��6"   5   	   5      �� 5      " ��6   .�5      ��  �@J�BitmapEffect 5   
   F� 5      5   	   5      5      .��5      ]� .+�5      �� $��10q�6      BlueHorizontalGradientBrush#��[  5       $	��Top=�5!      ._�5"      ��   MyIntroTextBlockStyle#��[ 6   ��The following examples show several different ways of animating LinearGradientBrush objects. Left-click the shapes to begin their animations.5&   	   5'      �� 5*      $��10q�6   $��Bottom=�5+        FooterRectangleStyle#��[ 5,      #��[  5-      �� 5/      ._�50      ��  �� Orientation$ 
Horizontal=�6   .+�52   
   �� $��10q�6     CheckeredBackground#��[ 6"   .+�53      �� Animated GradientStop Offset64   �� 55      -   5        $0��*animatedGradientStopOffsetExampleRectangle��55      $	��200��56      $	��100��57      
���   �$��1��6)   $��10q�58      ��59      �� 5:      .��5;      �  � Color$ 
MediumBlue��6    � Offset$	 0.0Q�62   � 5<      -   5        gradientStopA2��$ Purple��5<   7   $	 0.5Q�6F   � 5=      $	 Red��6   $	 1.0Q�6+   5>      	 � Triggers	 5A      :� 5B      
 :� RoutedEvent$#
 Rectangle.MouseLeftButtonDown��6   .[�5C      �� .��5D      �� .��5E      W�  �� 
TargetName$ gradientStopA2��5F       �� TargetProperty$ Offset�5G       W� From 0.05H      	 W� To 1.06"    g� Duration$ 0:0:3D�6+    g� FillBehavior$
 Stop=�6<   5I      5J      5K      5M      �� 5O      Animated GradientStop Color63   �� 5Q      -   5        $/��)animatedGradientStopColorExampleRectangle��5Q      $	��200��5R      $	��100��6   
���   �$��1��5S      $��10q�5T      ��5U      �� 5V      .��5W      � $ 
MediumBlue��6   $	 0.0Q�62   � 5X      -   5        gradientStopB2��$ Purple��5X   7   $	 0.5Q�6F   � 5Y      $	 Red��6   $	 1.0Q�6+   5Z      	 5]      :� 5^      $#
 Rectangle.MouseLeftButtonDown��6   .[�5_      �� .��5`      �� .��5a      �� $ gradientStopB2��5b      $ Color�5c       �� From
 Purple5d      	 �� To
 Yellow6%   $ 0:0:3D�61   $
 Stop=�6B   5e      5f      5g      5i      �� 5k      Animated GradientStop Opacity65   �� 5l      -   5        $1��+animatedGradientStopOpacityExampleRectangle��5l      $	��200��5m      $	��100��6   
���   �$��1��65   $��10q�5n      ��5o      �� 5p      .��5q      � $ 
MediumBlue��6   $	 0.0Q�62   � 5r      -   5        gradientStopC2��$ Purple��5r   7   $	 0.5Q�6F   � 5s      $	 Red��6   $	 1.0Q�6+   5t      	 5v      :� 5w      $#
 Rectangle.MouseLeftButtonDown��6   .[�5x      �� .��5y      �� .��5z      �� $ gradientStopC2��5{      $ Color�5|      $ 0:0:3D�5}      $
 Stop=�6(   	 �� By 5~      �� 5      
 �� ScA$ -1��6    
 �� ScR$ 0��6)   
 �� ScB$ 0��61   
 �� ScG$ 0��69   5�      5�      5�      5�      5�      5�      �� 5�   
   $��10q�6   #��[ 6!   .+�5�      �� Animated StartPoint6+   �� 5�      $	��200��5�      $	��100��5�      
���   �$��1��6)   $��10q�5�      ��5�      �� 5�      -   5        animatedStartPointExample��.��5�      � $ 
MediumBlue��6   $	 0.0Q�62   � 5�      $ Purple��6   $	 0.5Q�6.   � 5�      $	 Red��6   $	 1.0Q�6+   5�      	 5�      :� 5�      $#
 Rectangle.MouseLeftButtonDown��6   .[�5�      �� .��5�      �� .��5�      ,� $ animatedStartPointExample��5�      $ 
StartPoint�5�       ,� From 0,05�      	 ,� To	 0.5,16"   $ 0:0:3D�6-   $
 Stop=�6>   5�      5�      5�      5�      �� 5�      Animated EndPoint6)   �� 5�      $	��200��5�      $	��100��6   
���   �$��1��65   $��10q�5�      ��5�      �� 5�      -   5        animatedEndPointExample�� �� 
StartPoint$	 0,0&�5�       �� EndPoint$	 1,1&�6"   .��5�      � $ 
MediumBlue��6   $	 0.0Q�62   � 5�      $ Purple��6   $	 0.5Q�6.   � 5�      $	 Red��6   $	 1.0Q�6+   5�      	 5�      :� 5�      $#
 Rectangle.MouseLeftButtonDown��6   .[�5�      �� .��5�      �� .��5�      ,� $ animatedEndPointExample��5�      $ EndPoint�5�       1,15�      	 0.5,06"   $ 0:0:3D�6-   $
 Stop=�6>   5�      5�      5�      5�      �� 5�      " Animated StartPoint and EndPoint68   �� 5�      $	��200��5�      $	��100��6   
���   �$��1��65   $��10q�5�      ��5�      �� 5�      -	   5        %!animatedStartPointEndPointExample��.��5�      � $ 
MediumBlue��6   $	 0.0Q�62   � 5�      $ Purple��6   $	 0.5Q�6.   � 5�      $	 Red��6   $	 1.0Q�6+   5�      	 5�      :� 5�      $#
 Rectangle.MouseLeftButtonDown��6   .[�5�      �� .��5�      �� .��5�      ,� $' !animatedStartPointEndPointExample��5�      $ 
StartPoint�5�       0,05�      	 0.5,16"   $ 0:0:3D�6-   $
 Stop=�6>   ,� 5�      $' !animatedStartPointEndPointExample��5�      $ EndPoint�5�       1,15�      	 0.5,06"   $ 0:0:3D�6-   $
 Stop=�6>   5�      5�      5�      5�      5�      5�   	   5�      5�      5�      