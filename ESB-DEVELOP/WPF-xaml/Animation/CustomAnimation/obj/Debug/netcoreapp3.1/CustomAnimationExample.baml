   M S B A M L   `   `   `  ����J  FCustomAnimation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:CustomAnimationCustomAnimation  5      ,    &CustomAnimation.CustomAnimationExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      :customAnimationsclr-namespace:CustomAnimation     5        � Title$  Custom Animations Sample��5      $	��800��5      $	��800��5      .��5      �  � ShowGridLines$ False��6    � 	Resources 5   
    �� 
TargetType �� Property �� Value��%}   '��       �� 5      " ��6   .�5      ��  � ��
 �����6/   �� 5       �@��Left$ 10��60   5      5       � RowDefinitions 5   
   �� 5      $��45 �6   �� 5      $	��105 �6   �� 5      $	��105 �6   �� 5      $	��105 �6   �� 5      $	��105 �6   �� 5      $	��105 �6   �� 5      $	��105 �6   �� 5      $	��105 �6   �� 5      .+�5   
   �� $��0��6   .+�5      �� -   5        $��linearButton��5      
 �� Top$ 10��6)   z�5      T� 5        T� X$ 0Q�6%   	 T� Y$	 0Q�6+   .��5!   (   	Linear!5#      5$      �� 5&   
   $��1��6   .+�5'      �� 
 �� Left$
 85��6   $	 -16��6)   $��64(�6:   
�������Accelerate / Decelerate6x   �� 5(      -   5        $��accelButton��5(      $ 10��6(   z�5)      T� 5*      $ 0Q�6%   $	 0Q�6+   .��5+   (   Accelerate!5-      �� 5.      -   5        $��decelButton��5.      $ 40��6(   z�5/      T� 50      $ 0Q�6%   $	 0Q�6+   .��51   (   Decelerate!53      �� 54      -   5        $��accelDecelButton��54      $ 70��6-   z�55      T� 56      $ 0Q�6%   $	 0Q�6+   .��57   (   Both!59      5:      �� 5;   
   $��2��6   .+�5<      �� $
 85��6   $	 -16��6)   $	��108(�6:   
�������	Bounce!6i   �� 5=      -   5        $��easeInButtonBounce��5=      $ 10��6/   z�5>      T� 5?      $ 0Q�6%   $	 0Q�6+   .��5@   (   
Beginning!5B      �� 5C      -   5        $��easeOutButtonBounce��5C      $ 40��60   z�5D      T� 5E      $ 0Q�6%   $	 0Q�6+   .��5F   (   End!5H      �� 5I      -   5        $��easeInOutButtonBounce��5I      $ 70��62   z�5J      T� 5K      $ 0Q�6%   $	 0Q�6+   .��5L   (   Both!5N      5O      �� 5Q   
   $��3��6   .+�5R      �� $
 85��6   $	 -16��6)   $	��108(�6:   
�������	Elastic6i   �� 5S      -   5        $��easeInButtonElastic��5S      $ 10��60   z�5T      T� 5U      $ 0Q�6%   $	 0Q�6+   .��5V   (   
Beginning!5X      �� 5Y      -	   5        $��easeOutButtonElastic��5Y      $ 40��61   z�5Z      T� 5[      $ 0Q�6%   $	 0Q�6+   .��5\   (   End!5^      �� 5_      -
   5        $��easeInOutButtonElastic��5_      $ 70��63   z�5`      T� 5a      $ 0Q�6%   $	 0Q�6+   .��5b   (   Both!5d      5e      �� 5f   
   $��4��6   .+�5g      �� $
 85��6   $	 -16��6)   $	��108(�6:   
�������Exponential6m   �� 5h      -   5        $��easeInButtonExpo��5h      $ 10��6-   z�5i      T� 5j      $ 0Q�6%   $	 0Q�6+   .��5k   (   
Beginning!5m      �� 5n      -   5        $��easeOutButtonExpo��5n      $ 40��6.   z�5o      T� 5p      $ 0Q�6%   $	 0Q�6+   .��5q   (   End!5s      �� 5t      -   5        $��easeInOutButtonExpo��5t      $ 70��60   z�5u      T� 5v      $ 0Q�6%   $	 0Q�6+   .��5w   (   Both!5y      5z      �� 5{   
   $��5��6   .+�5|      �� $
 85��6   $	 -16��6)   $��80(�6:   
�������Circular Effects6q   �� 5}      -   5        $��circleButton��5}      $ 10��6)   z�5~      T� 5      $ 0Q�6)   $	 0Q�6/   .��5�   *   	Circle 1!5�      �� 5�      -   5        $��circleButton2��5�      $ 40��6*   z�5�      T� 5�      $ 0Q�6)   $	 0Q�6/   .��5�   *   	Circle 2!5�      5�      �� 5�   
   $��6��6   .+�5�      �� $
 85��6   $	 -16��6)   $	��108(�6:   
�������Back6f   �� 5�      -   5        $��easeInButtonBack��5�      $ 10��6-   z�5�      T� 5�      $ 0Q�6%   $	 0Q�6+   .��5�   (   
Beginning!5�      �� 5�      -   5        $��easeOutButtonBack��5�      $ 40��6.   z�5�      T� 5�      $ 0Q�6%   $	 0Q�6+   .��5�   (   End!5�      �� 5�      -   5        $��easeInOutButtonBack��5�      $ 70��60   z�5�      T� 5�      $ 0Q�6%   $	 0Q�6+   .��5�   (   Both!5�      5�      �� 5�   
   $��7��6   .+�5�      �� -   5        $��goButton��5�      
������$
 10��6=   $ 10��6N   .��6^   Go!5�      5�      5�       5�         LinearTimeline W� From	 W� To g� Duration �� 
TargetName �� TargetProperty  AccelTimeline g� AccelerationRatio  DecelTimeline g� DecelerationRatio  AccelDecelTimeline  BounceEaseInTimeline+   %CustomAnimation.BounceDoubleAnimation   From	   To   EdgeBehavior  BounceEaseOutTimeline  BounceEaseInOutTimeline  ElasticEaseInTimeline,   &CustomAnimation.ElasticDoubleAnimation   From	   To   EdgeBehavior  ElasticEaseOutTimeline 	 ElasticEaseInOutTimeline 
 ExpoEaseInTimeline0   *CustomAnimation.ExponentialDoubleAnimation   From	   To   EdgeBehavior   Power  ExpoEaseOutTimeline  ExpoEaseInOutTimeline  BackEaseInTimeline)   #CustomAnimation.BackDoubleAnimation   From	   To   EdgeBehavior   	Amplitude    Suppression  BackEaseOutTimeline  BackEaseInOutTimeline  CircleTimeline! g� 	BeginTime%   CustomAnimation.CircleAnimation" g� RepeatBehavior#   Radius$   	Direction  CircleTimeline2��%  &	        &	 �     &	 ]    &	     &	 �    &	 �    &	 d    &	 )    &	 �    &		 �    &	
 q    &	 ;    &	 	    &	 �	    &	 �
    &	 �    &	 f    &	 V    �� 5�   
   .��5�      W�  06    5006%   $ 0:0:5D�6.   $ linearButton��6?   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6d   5�      �� 5�   
   .��5�      W�  06    5006%   $
 0.65Q�6.   $ 0:0:5D�6G   $ accelButton��6X   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6|   5�      �� 5�   
   .��5�      W�  06    5006%   $
 0.65Q�6.   $ 0:0:5D�6G   $ decelButton��6X   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6|   5�      �� 5�   
   .��5�      W�  06    5006%   $ 0.325Q�6.   $ 0.325Q�6H   $ 0:0:5D�6b   $ accelDecelButton��6s   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6�   5�      �� 5�   
   .��5�         05�       5006   $ 0:0:5D�6!   $ EaseIn=�62   $ easeInButtonBounce��6H   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6s   5�      �� 5�   
   .��5�         063    5006<   $ 0:0:5D�6E   $ EaseOut=�6V   $ easeOutButtonBounce��6m   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6�   5�      �� 5�   
   .��5�         063    5006<   $ 0:0:5D�6E   $ 	EaseInOut=�6V   $ easeInOutButtonBounce��6o   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6�   5�      �� 5�   
   .��5�         064    5006=   $ 0:0:5D�6F   $ EaseIn=�6W   $ easeInButtonElastic��6m   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6�   5�      �� 5�   
   .��5�         064    5006=   $ 0:0:5D�6F   $ EaseOut=�6W   $ easeOutButtonElastic��6n   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6�   5�      �� 5�   
   .��5�         064    5006=   $ 0:0:5D�6F   $ 	EaseInOut=�6W   $ easeInOutButtonElastic��6p   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6�   5�      �� 5�   
   .��5�         068    5006A   $ 0:0:5D�6J   $ EaseIn=�6[   $ 2Q�6q   $ easeInButtonExpo��6{   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6�   5�      �� 5�   
   .��5�         068    5006A   $ 0:0:5D�6J   $ EaseOut=�6[   $ 4Q�6r   $ easeOutButtonExpo��6|   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6�   5�      �� 5�   
   .��5�         068    5006A   $ 0:0:5D�6J   $ 	EaseInOut=�6[   $ 6Q�6t   $ easeInOutButtonExpo��6~   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6�   5�      �� 5�   
   .��5�         061    5006:   $ 0:0:5D�6C   $ EaseIn=�6T   $ 1Q�6j   $  3Q�6x   $ easeInButtonBack��6�   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6�   5�      �� 5�   
   .��5�         061    5006:   $ 0:0:5D�6C   $ EaseOut=�6T   $ 2Q�6k   $  5Q�6y   $ easeOutButtonBack��6�   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6�   5�      �� 5�   
   .��5�         061    5006:   $ 0:0:5D�6C   $ 	EaseInOut=�6T   $ 3Q�6m   $	  0.5Q�6{   $ easeInOutButtonBack��6�   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6�   5�      �� 5�   
   .��5�      W� $ 0:0:5D�6    06-    50066   $ circleButton��6?   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6d   W� 5�      $ 0:0:1.5D�6    06/   $ circleButton��68   $8 2(UIElement.RenderTransform).(TranslateTransform.Y)�6]   I� 5�      	! 0:0:06   $ 0:0:4.5D�6/   .��5�        $" Forever��6/   $ 0:0:1D�6H   $# 40Q�6Y   $$ 
YDirection=�6e   $ circleButton��6|   $8 2(UIElement.RenderTransform).(TranslateTransform.Y)�6�     5�      $" Forever��6/   $ 0:0:1D�6H   $# 40Q�6Y   $$ 
XDirection=�6e   $ circleButton��6|   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6�   5�      I� 5�      ! 0:0:4.56   .��5�      W�  5006   $ 0:0:0.5D�6'   $ circleButton��6:   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6_   W� 5�       0.06   $ 0:0:0.5D�6'   $ circleButton��6:   $8 2(UIElement.RenderTransform).(TranslateTransform.Y)�6_   5�      5�      �� 5�   
   .��5�      W� $ 0:0:1.5D�6    06/    29068   $ circleButton2��6A   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6g   W� 5�      $ 0:0:1.5D�6    06/   $ circleButton2��68   $8 2(UIElement.RenderTransform).(TranslateTransform.Y)�6^   I� 5�      ! 0:0:1.56   $ 0:0:2D�61   .��5�        $" Forever��6/   $ 0:0:0.25D�6H   $# 40Q�6\   $$ 
YDirection=�6h   $ circleButton2��6   $8 2(UIElement.RenderTransform).(TranslateTransform.Y)�6�     5�      $" Forever��6/   $ 0:0:0.25D�6H   $# 40Q�6\   $$ 
XDirection=�6h   $ circleButton2��6   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6�   5�      I� 5�      ! 0:0:3.56   .��5�      W�  5006   $ 0:0:1.5D�6'   $ circleButton2��6:   $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6`   W� 5       0.06   $ 0:0:0.5D�6'   $ circleButton2��6:   $8 2(UIElement.RenderTransform).(TranslateTransform.Y)�6`   5     5     5  	   % � Triggers% 5     :� 5  
   & :� RoutedEvent$& Button.Click��6   ' :� 
SourceName$' goButton��62   .[�5     �� #��[  6   �� 5	     #��[ 6   �� 5
     #��[ 6   �� 5     #��[ 6   �� 5     #��[ 6   �� 5     #��[ 6   �� 5     #��[ 6   �� 5     #��[ 6   �� 5     #��[ 6   �� 5     #��[	 6   �� 5     #��[
 6   �� 5     #��[ 6   �� 5     #��[ 6   �� 5     #��[ 6   �� 5     #��[ 6   �� 5     #��[ 6   �� 5     #��[ 6   �� 5     #��[ 6   5     :� 5  
   $& ButtonBase.Click��6   $' linearButton��66   .[�5     �� #��[  6   5     :� 5  
   $& ButtonBase.Click��6   $' accelButton��66   .[�5     �� #��[  6   �� 5      #��[ 6   5!     :� 5"  
   $& ButtonBase.Click��6   $' decelButton��66   .[�5#     �� #��[  6   �� 5$     #��[ 6   5%     :� 5&  
   $& ButtonBase.Click��6   $' accelDecelButton��66   .[�5'     �� #��[  6   �� 5(     #��[ 6   5)     :� 5*  
   $& ButtonBase.Click��6   $' easeInButtonBounce��66   .[�5+     �� #��[  6   �� 5,     #��[ 6   5-     :� 5.  
   $& ButtonBase.Click��6   $' easeOutButtonBounce��66   .[�5/     �� #��[  6   �� 50     #��[ 6   51     :� 52  
   $& ButtonBase.Click��6   $' easeInOutButtonBounce��66   .[�53     �� #��[  6   �� 54     #��[ 6   55     :� 56  
   $& ButtonBase.Click��6   $' easeInButtonElastic��66   .[�57     �� #��[  6   �� 58     #��[ 6   59     :� 5:  
   $& ButtonBase.Click��6   $' easeOutButtonElastic��66   .[�5;     �� #��[  6   �� 5<     #��[ 6   5=     :� 5>  
   $& ButtonBase.Click��6   $' easeInOutButtonElastic��66   .[�5?     �� #��[  6   �� 5@     #��[	 6   5A     :� 5B  
   $& ButtonBase.Click��6   $' easeInButtonExpo��66   .[�5C     �� #��[  6   �� 5D     #��[
 6   5E     :� 5F  
   $& ButtonBase.Click��6   $' easeOutButtonExpo��66   .[�5G     �� #��[  6   �� 5H     #��[ 6   5I     :� 5J  
   $& ButtonBase.Click��6   $' easeInOutButtonExpo��66   .[�5K     �� #��[  6   �� 5L     #��[ 6   5M     :� 5N  
   $& ButtonBase.Click��6   $' easeInButtonBack��66   .[�5O     �� #��[  6   �� 5P     #��[ 6   5Q     :� 5R  
   $& ButtonBase.Click��6   $' easeOutButtonBack��66   .[�5S     �� #��[  6   �� 5T     #��[ 6   5U     :� 5V  
   $& ButtonBase.Click��6   $' easeInOutButtonBack��66   .[�5W     �� #��[  6   �� 5X     #��[ 6   5Y     :� 5Z  
   $& ButtonBase.Click��6   $' circleButton��66   .[�5[     �� #��[  6   �� 5\     #��[ 6   5]     :� 5^  
   $& ButtonBase.Click��6   $' circleButton2��66   .[�5_     �� #��[  6   �� 5`     #��[ 6   5a     5c     