   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� Title$+  %RadialGradientBrush Animation Example��5       � 	Resources 5       �� 
TargetType �� Property �� Value O� 	GlowColor��%M  '��       '�� �     �� 5	      " ��6   .�5
      ��  � ��
 �����6%   �� 5       �@��Padding$ 10q�6"   �� 5       �@J�BitmapEffect 5   
   O� 5      $ White��6"   5   	   5      �� 5      " ��6   .�5      ��  �@J�BitmapEffect 5   
   F� 5      5   	   5      5      .��5      ]� .+�5      �� $��10q�6      BlueHorizontalGradientBrush#��[  5      $	��Top=�5      ._�5       ��   MyIntroTextBlockStyle#��[ 6   ��The following examples show several different ways of animating gradient brushes. Left-click the shapes to begin their animations.5#   	   5$      �� 5'      $��10q�6   $��Bottom=�5(        FooterRectangleStyle#��[ 5)      #��[  5*      �� 5,       �� Orientation$ 
Horizontal=�6   .+�5-      �� $��10q�6     CheckeredBackground#��[ 6   .+�51   
   �� Animated GradientStop Offset62   �� 53   
   -   5        $0��*animatedGradientStopOffsetExampleRectangle��53      $	��200��54      $	��100��6   
���   �$��1��55      $��10q�56      ��58      
� 59      .��5:      �  � Color$ 
MediumBlue��6    � Offset$	 0.0Q�60   � 5;      -   5        gradientStopA2��$ Purple��5;   5   $	 0.5Q�6D   � 5<      $	 Red��6   $	 1.0Q�6)   5=      	 � Triggers	 5@      :� 5A      
 :� RoutedEvent$#
 Rectangle.MouseLeftButtonDown��6   .[�5B      �� .��5C      �� .��5D      W�  �� 
TargetName$ gradientStopA2��5E       �� TargetProperty$ Offset�5F       W� From 0.05G      	 W� To 1.06     g� Duration$ 0:0:3D�6)    g� FillBehavior$
 Stop=�6:   5H      5I      5J      5L      �� 5N   
   Animated GradientStop Color61   �� 5P   
   -   5        $/��)animatedGradientStopColorExampleRectangle��5P      $	��200��5Q      $	��100��6   
���   �$��1��5R      $��10q�5S      ��5T      
� 5U      .��5V      � $ 
MediumBlue��6   $	 0.0Q�60   � 5W      -   5        gradientStopB2��$ Purple��5W   5   $	 0.5Q�6D   � 5X      $	 Red��6   $	 1.0Q�6)   5Y      	 5\      :� 5]      $#
 Rectangle.MouseLeftButtonDown��6   .[�5^      �� .��5_      �� .��5`      �� $ gradientStopB2��5a      $ Color�5b       �� From
 Purple5c      	 �� To
 Yellow6#   $ 0:0:3D�6/   $
 Stop=�6@   5d      5e      5f      5h      �� 5j   
   Animated GradientStop Opacity63   �� 5k   
   -   5        $1��+animatedGradientStopOpacityExampleRectangle��5k      $	��200��5l      $	��100��6   
���   �$��1��5m      $��10q�5n      ��5o      
� 5p      .��5q      � $ 
MediumBlue��6   $	 0.0Q�60   � 5r      -   5        gradientStopC2��$ Purple��5r   5   $	 0.5Q�6D   � 5s      $	 Red��6   $	 1.0Q�6)   5t      	 5v      :� 5w      $#
 Rectangle.MouseLeftButtonDown��6   .[�5x      �� .��5y      �� .��5z      �� $ gradientStopC2��5{      $ Color�5|      $ 0:0:3D�5}      $
 Stop=�6&   	 �� By 5~      �� 5      
 �� ScA$ -1��6   
 �� ScR$ 0��6'   
 �� ScB$ 0��6/   
 �� ScG$ 0��67   5�      5�      5�      5�      5�      5�   	   �� 5�      $��10q�6   #��[ 6   .+�5�   
   �� Animated GradientOrigin6-   A� 5�   
   $	��200��5�      $	��100��6   
���   �$��1��5�      $��10q�5�      ��5�      
� 5�      -   5        !animatedGradientOriginExample�� 
� GradientOrigin$ 	0.75,0.25&�5�      .��5�      � $ #CBC8F1��6   $	 0.0Q�6-   � 5�      $ 
MediumBlue��6   $	 0.5Q�60   � 5�      $ DarkBlue��6   $	 1.0Q�6.   5�      	 5�      :� 5�      $!
 Ellipse.MouseLeftButtonDown��6   .[�5�      �� .��5�      �� .��5�      ,� $# animatedGradientOriginExample��5�      $ GradientOrigin�5�       ,� From 1,05�      	 ,� To 0,16    $ 0:0:3D�6)   $
 Stop=�6:   5�      5�      5�      5�      �� 5�   
   Animated Center6%   A� 5�   
   $	��200��5�      $	��100��6   
���   �$��1��5�      $��10q�5�      ��5�      
� 5�      -   5        animatedCenterExample��$ 	0.75,0.25&�5�      .��5�      � $ #CBC8F1��6   $	 0.0Q�6-   � 5�      $ 
MediumBlue��6   $	 0.5Q�60   � 5�      $ DarkBlue��6   $	 1.0Q�6.   5�      	 5�      :� 5�      $!
 Ellipse.MouseLeftButtonDown��6   .[�5�      �� .��5�      �� .��5�      ,� $ animatedCenterExample��5�      $ Center�5�       0,05�       1,16    $ 0:0:3D�6)   $
 Stop=�6:   5�      5�      5�      5�      �� 5�   
   Animated Radius6%   A� 5�   
   $	��200��5�      $	��100��6   
���   �$��1��63   $��10q�5�      ��5�      
� 5�      -	   5        animatedRadiusExample��$ 	0.75,0.25&�5�      .��5�      � $ #CBC8F1��6   $	 0.0Q�6-   � 5�      $ 
MediumBlue��6   $	 0.5Q�60   � 5�      $ DarkBlue��6   $	 1.0Q�6.   5�      	 5�      :� 5�      $!
 Ellipse.MouseLeftButtonDown��6   .[�5�      �� .��5�      �� .��5�      W� $ animatedRadiusExample��5�      $ RadiusX�5�       05�       16   $ 0:0:3D�6%   $
 Stop=�66   W� 5�      $ animatedRadiusExample��5�      $ RadiusY�5�       05�       16   $ 0:0:3D�6%   $
 Stop=�66   5�      5�      5�      5�      5�   	   5�      5�      5�      