   M S B A M L   `   `   `  ����  OpacityAnimationJ    DMicrosoft.Samples.Animation.OpacityAnimation.OpacityAnimationExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� WindowTitle$  Opacity Animation Example��5      .��5      �� $��20,0,0,0q�6      MyGridBrushResource#��[  6#   .+�5      �� $��0,30,0,0q�6   $
��Bold"�6"   #!Animating the Opacity of Elements6W   �� 5      $��0,10,0,0q�6   
A Button6,   �� 5      -   5        $��opacityAnimatedButton��5      $
��Left=�5      $	��Top=�6"   .��6:   
A Button5      �� 5      $��0,10,0,0q�6   
An Image6,   �� 5      -   5        $��opacityAnimatedImage��5      $��sampleImages\berries.jpg��5      $
��None=�6)   $
��Left=�5      $	��Top=�6"   �� 5      $��0,30,0,0q�6   $
��Bold"�6"   " Animating the Opacity of a Brush6V   �� 5"      -   5        $ ��opacityAnimatedBrushButton��5"      
��� ���$
��Left=�5#      $	��Top=�6"   .��6:   
A Button5%      �� 5(      $��0,30,0,0q�6   $
��Bold"�6"   1/Animating the Opacity of a Color within a Brush6f   �� 5-      -   5        $#��opacityAnimatedColorRectangle��5-      $	��120��5.      $��50��6   
���   �$��1��6/   $
��Left=�5/      $	��Top=�6"   ��50      �� 51   
   ��53      �  � Offset$	 0.0Q�6    � Color$ 
MediumBlue��6)   � 54      $
 0.75Q�6   $ 
BlueViolet��6*   56      58      5;       � Triggers 5<      :� 5=       :� RoutedEvent$ Page.Loaded��6   .[�5>      �� -   5         ��Name$ myBeginStoryboard��5>      .��5?   
   �� -   5         g�Name$ myStoryboard��5?      .��5@      W�  �� 
TargetName$ opacityAnimatedButton��6    �� TargetProperty$ (Button.Opacity)�5A      	 W� From	 16:   	
 W� To
 06C    g� Duration$ 0:0:5D�5B       g� AutoReverse$
 True��6    g� RepeatBehavior$ Forever��61   W� 5C      $ opacityAnimatedImage��6   $ (Image.Opacity)�5D      	 169   
 06B   $ 0:0:5D�5E      $
 True��6   $ Forever��61   W� 5F      $  opacityAnimatedBrushButton��6   $3 -(Button.Background).(SolidColorBrush.Opacity)�5G      	 16W   
 06`   $ 0:0:5D�5H      $
 True��6   $ Forever��61   W� 5I      $  opacityAnimatedBrushButton��6   $3 -(Button.Background).(SolidColorBrush.Opacity)�5J      	 16W   
 06`   $ 0:0:5D�5K      $
 True��6   $ Forever��61   �� 5L      $# opacityAnimatedColorRectangle��6   $R L(Rectangle.Fill).(LinearGradientBrush.GradientStops)[1].(GradientStop.Color)�5M      $ 0:0:5D�5N      $
 True��6   $ Forever��61   	 �� By 5O      �� 5P      
 �� ScA$
 -1.0��6   
 �� ScR$	 0.0��6    
 �� ScG$	 0.0��6*   
 �� ScB$	 0.0��64   5R      5S      5T   	   5U      5W      