   M S B A M L   `   `   `  ����  VisualBrush#    VisualBrush.ReflectionExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� 
Background
  ����� � Triggers 5
      :� 5       :� RoutedEvent$ Page.Loaded��6   .[�5      �� .��5   
   �� .��5      W�  �� 
TargetName$ bouncingBall��6    �� TargetProperty$ (Canvas.Top)�6A    W� From 05      	 W� To 2506    g� Duration$ 0:0:3D�6    g� RepeatBehavior$ Forever��60   	 g� AutoReverse$
	 True��6I   
 g� AccelerationRatio$	
 1.0Q�5      W� 5      $ bouncingBall��6   $ (Canvas.Left)�6A    05       3506   $ 0:0:20D�6   $ Forever��61   $
	 True��6J   $	
 1.0Q�5      5      5   	   5      .��5      �� .+�5      �� -   5        $��reflectedCanvas��5      $	��300��6$   $	��400��61   ��5      �� 5       �� 
StartPoint$ 0,0.5&�6&    �� EndPoint$ 1,0.5&�69   ��5       �  � Offset$	 0.0Q�6#    � Color$ #CCCCFF��60   � 5!      $	 1.0Q�6#   $ White��60   5#      .+�5&      �� $	��390��6   
 �� Top$ 40��6    �� Left$ 5��6.   $
��Wrap=�5'   	   ��Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse vel ante. Donec luctus tortor sit amet est. Nullam pulvinar odio et wisi. Pellentesque quis magna. Sed pellentesque. Nulla euismod. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque pulvinar, augue non ornare malesuada, odio urna hendrerit augue, et rutrum ante nulla eget lectus. Nulla nonummy. Maecenas dui arcu, feugiat quis, dapibus quis, blandit non, leo. Nullam auctor, turpis ac elementum ultricies, justo orci dictum metus, molestie elementum turpis mauris a turpis. Nullam tortor nibh, sollicitudin eu, pulvinar vitae, vestibulum id, nibh. Integer eget mauris nec libero congue sollicitudin.5)   	   A� 5+      -   5        $��bouncingBall��5+      $��50��5,   	   $��50��6   ��5-   
   
� 5.       
� GradientOrigin$ 	0.75,0.25&�6    ��50      � $ White��6   $	 0.0Q�6+   � 51      $	 Red��6   $
 0.75Q�6)   � 52      $ DarkRed��6   $	 1.0Q�6-   54      56   	   �� 58      $ 75��6   $	 250��6!   .��62   Hello, World!6A   5:      �� 5<      $��1��6   
�������$	��400��6'   �� 5=      ��5>      ��  �� Path$ (Canvas.ActualHeight)� �� ElementName$ reflectedCanvas����5?      �� $ (Canvas.ActualWidth)�$ reflectedCanvas����5@      !� 5A   
   -   5        myVisualBrush�� j� Stretch$
 None=�5B       j� 
AlignmentX$
 Left=�6    j� 
AlignmentY$	 Top=�6,    �� Opacity$
 0.75Q�5C       !� Visual 5D      �� $ reflectedCanvas�� �� RelativeTransform 5G      V� 5H      .~�5I      ��  �� ScaleX$ 1Q�6    �� ScaleY$ -1Q�6*   T� 5J       T� Y$ 1Q�6$   5K      5N       J� OpacityMask 5Q      �� 5R   
   $ 0.5,0&�6   $ 0.5,1&�61   ��5T      � $ 	#FF000000��6   $	 0.0Q�6-   � 5U      $ 	#00000000��6   $	 0.5Q�6-   5W      5Y      5]      5_      