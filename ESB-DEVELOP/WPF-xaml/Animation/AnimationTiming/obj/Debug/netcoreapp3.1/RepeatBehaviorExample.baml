   M S B A M L   `   `   `  ����  AnimationTiming+    %AnimationTiming.RepeatBehaviorExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� WindowTitle$  RepeatBehavior Example��5      .��5	      �� $��Stretch=�6   ._�5
      �� $��20q�6      MyGridBrushResource#��[  6   .+�5      �� ���	#99FFFFFF._�5   	   �� $��20q�6   ��This example shows how the RepeatBehavior property is used to make a timeline repeat. Several rectangles are animated by DoubleAnimations with identical durations and target values, but with different RepeatBehavior settings.5   
   5   	   �� 5      RepeatBehavior="Forever"6,   �� 5      -   5        $��foreverRepeatingRectangle��5      ���	#AA3333FF$��50��6D   $��20��6O   $
��Left=�6[   �� 5      $��0,20,0,0q�6   RepeatBehavior="0:0:4"6<   �� 5      -   5        $#��fourSecondsRepeatingRectangle��5      ���	#AA3333FF$��50��6H   $��20��6S   $
��Left=�6_   �� 5      $��0,20,0,0q�6   RepeatBehavior="2x"69   �� 5      -   5        $��twiceRepeatingRectangle��5      ���	#AA3333FF$��50��6B   $��20��6M   $
��Left=�6Y   �� 5      $��0,20,0,0q�6   RepeatBehavior="0.5x"6;   �� 5      -   5        $��halfRepeatingRectangle��5      ���	#AA3333FF$��50��6A   $��20��6L   $
��Left=�6X   �� 5      $��0,20,0,0q�6   RepeatBehavior="0:0:1"6<   �� 5      -   5        $!��oneSecondRepeatingRectangle��5      ���	#AA3333FF$��50��6F   $��20��6Q   $
��Left=�6]   �� 5#       �� Orientation$ 
Horizontal=�6   $��0,20,0,0q�6,   .+�5$   
   �� -   5        $��restartButton��5$      .��6&   Start Animations68   �� 5%   
   -   5        $��
stopButton��5%      ���	#669900FF.��6:   Stop6@    � Triggers 5'   
   :� 5(       :� 
SourceName$ restartButton��6    :� RoutedEvent$ Button.Click��64   .[�5)      �� -   5         ��Name$ myBeginStoryboard��5)      .��5*      �� .��5-      W�  �� 
TargetName$ foreverRepeatingRectangle��5.       �� TargetProperty$ (Rectangle.Width)�6E    W� From 505/      		 W� To	 3006   
 g� Duration$
 0:0:2D�6&    g� RepeatBehavior$ Forever��67   W� 53      $# fourSecondsRepeatingRectangle��6"   $ (Rectangle.Width)�6X    5054      	 3006   $
 0:0:2D�6&   $ 0:0:4��67   W� 57      $ twiceRepeatingRectangle��6"   $ (Rectangle.Width)�6R    5058      	 3006   $
 0:0:2D�6&   $ 2x��67   W� 5<      $ halfRepeatingRectangle��6"   $ (Rectangle.Width)�6Q    505=      	 3006   $
 0:0:2D�6&   $
 0.5x��67   W� 5A      $! oneSecondRepeatingRectangle��6"   $ (Rectangle.Width)�6V    505B      	 3006   $
 0:0:2D�6&   $ 0:0:1��67   5C      5D      5E      :� 5F      $ 
stopButton��6   $ Button.Click��61   .[�5G      ��  �� BeginStoryboardName$ myBeginStoryboard��6   5H      5J   	   5K      5L      5M      