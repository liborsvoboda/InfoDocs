   M S B A M L   `   `   `  ����J  FUsingDispatcher, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:UsingDispatcherUsingDispatcher  5   	        UsingDispatcher.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:UsingDispatcher     5   	   -   5          � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � 	Resources 5	         ShowClockFaceStoryboard �� 
TargetName �� TargetProperty W� From	 W� To g� Duration g� RepeatBehavior  HideClockFaceStoryboard  ShowWeatherImageStoryboard  HideWeatherImageStoryboard  RainingImageSource  RainingDrawingResource H� Drawing  SunnyImageSource  SunnyDrawingResource��%   &	        &	     &	 �    &	     &	 �    7  &	 �    7  �� 5
   
   .��5      W� $ 
ClockImage��5   	   $ Opacity�5   	    05   	    16   $ 0:0:0.1D�6   W� 5      $ ClockFaceScaleTransform��5   	   $ ScaleX�5   	    05   	    16   $ 0:0:0.5D�6   W� 5      $ ClockFaceScaleTransform��5   	   $ ScaleY�5   	    05   	    16   $ 0:0:0.5D�6   W� 5      $ ClockHandRotateTransform��5   	   $ Angle�5   	    05   	    3606   $ 0:0:2D�6   $ Forever��5   	   5      �� 5   
   -   5        .��5       W� $ 
ClockImage��5!   	   $ Opacity�5"   	    15#   	    06   $ 0:0:0.25D�6   W� 5$      $ ClockFaceScaleTransform��5%   	   $ ScaleX�5&   	    15'   	    06   $ 0:0:0.25D�6   W� 5(      $ ClockFaceScaleTransform��5)   	   $ ScaleY�5*   	    15+   	    06   $ 0:0:0.25D�6   5,      �� 5.   
   .��5/      W� $ weatherIndicatorImage��50   	   $ Opacity�51   	    152   	   $ 0:0:0.1D�6   W� 53      $$ WeatherIndicatorScaleTransform��54   	   $ ScaleX�55   	    056   	    16   $ 0:0:0.5D�6   W� 57      $$ WeatherIndicatorScaleTransform��58   	   $ ScaleY�59   	    05:   	    16   $ 0:0:0.5D�6   5<      �� 5>   
   -   5        .��5@      W� $ weatherIndicatorImage��5A   	   $ Opacity�5B   	    05C   	   $ 0:0:0.1D�6   5D      H� 5F   
   8   5G      H� 5I   
   8   5J      5L      .��5N      � -   5        $��tomorrowsWeather��5N      $��20q�6#   	 � RowDefinitions	 5O   
   �� 5P      $
��Auto �6   �� 5Q      $��* �6   �� 5R      $
��Auto �6   .+�5U   
   �� -   5        $��fetchButton��5U      $��Fetch Forecast��5V      $��0��5X      �� 5Y   
   -   5        $��
ClockImage��5Z      
 J� RenderTransformOrigin$
 0.5,0.5&�5[       J� Opacity$ 0Q�6'   $��Uniform=�63   $��1��5\      $��10q�6   ��5]      H� 5^       5_      I� 5`      ��5b   "   �  � Geometry 5c   &   @� 5d   *    @� Center$ 50,50&�5e       @� RadiusX$ 45Q�5f       @� RadiusY$ 45Q�5g       � Brush 5i   &   �� 5j   *    �� 
StartPoint$ 0.5,0&�6>    �� EndPoint$ 0.5,1&�6Q   ��5l   2   �  � Offset$	 0.0Q�6?    � Color$ 	LightGray��6L   � 5m   2   $	 0.5Q�6?   $ #CCCCFF��6L   5o   +   
 � Pen 5q   &   >� 5r   *    >� 	Thickness$ 5Q�6.    >� Brush
 �   �6<   5t   #   � 5u   "    5v   &   �� 5w   *    �� 
StartPoint$ 50,50&�67    �� EndPoint$ 50,10&�6J    � 	Transform 5x   .   �� 5y   2   -   5        ClockHandRotateTransform�� �� Angle$ 0Q�5z       �� CenterX$ 50Q�6%    �� CenterY$ 50Q�62   5|   +    5~   &   >� 5   *   
 �   �$ 5Q�6<    >� StartLineCap$ Round=�5�       >� 
EndLineCap$ Triangle=�6,   5�   #   � 5�   "    5�   &   @� 5�   *   $ 50,50&�5�      $ 45Q�5�      $ 45Q�5�       5�   &   
� 5�   *     
� GradientOrigin$  	0.75,0.25&�6>   ��5�   2   � $	 0.0Q�6?   $ 	#99FFFFFF��6L   � 5�   2   $	 0.5Q�6?   $ Transparent��6L   � 5�   2   $
 0.75Q�6?   $ 	#99FFFFFF��6M   � 5�   2   $	 1.0Q�6?   $ 	#33000000��6L   5�   +   5�   #   � 5�   "    5�   &   @� 5�   *   $ 50,50&�5�      $ 45Q�5�      $ 45Q�5�       5�   &   �� 5�   *   $ 0.75,0.1&�6>   $ 	0.25, 0.9&�6T   ��5�   2   � $	 0.0Q�6?   $ 	#99FFFFFF��6L   � 5�   2   $	 0.5Q�6?   $ Transparent��6L   � 5�   2   $	 1.0Q�6?   $ 	#99000000��6L   5�   +   5�   #   5�      5�      z�5�      �� 5�      -   5        ClockFaceScaleTransform��5�   !   5�      �� 5�   
   -	   5        $��weatherIndicatorImage��5�      $ 0Q�5�      $��1��5�      $��10q�6   $
 0.5,0.5&�5�      z�5�      �� 5�      -
   5        "WeatherIndicatorScaleTransform��5�   !   5�      �� 5�   
   -   5        $��weatherText��5�      $��Center=�5�      $��2��5�      5�      5�      