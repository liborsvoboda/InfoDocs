   M S B A M L   `   `   `  ����  DigitalInkTopics    DigitalInkTopics.Window1   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � Title$  DigitalInkTopics��5      $	��300��6   $	��300��6+   .��5      N� .��5      �� -   5        $��myInkCanvas��5       �� 
Background 5	      �� 5
   
   .��5      �  � Color$ Yellow��6    � Offset$	 0.0Q�6(   � 5      $
 Blue��6   $	 0.5Q�6&   � 5      $ Green��6   $	 1.0Q�6'   5      5       � Triggers 5      :� 5       :� RoutedEvent$ Page.Loaded��6   [�5   
   �� 5      .��5      ��  g� RepeatBehavior$ Forever��6    g� AutoReverse . .��5      ��  �� 
TargetName$ myInkCanvas��6    	 �� TargetProperty$X	 R(InkCanvas.Background).(LinearGradientBrush.GradientStops)[0].(GradientStop.Color)�5      
 �� From$
 YellowX�5      	 �� To$
 BlueX�6    g� Duration$ 0:0:5D�6'   �� 5      $ myInkCanvas��6   $X	 R(InkCanvas.Background).(LinearGradientBrush.GradientStops)[1].(GradientStop.Color)�5      $

 BlueX�5      $	 RedX�6   $ 0:0:5D�6$   �� 5       $ myInkCanvas��6   $X	 R(InkCanvas.Background).(LinearGradientBrush.GradientStops)[2].(GradientStop.Color)�5!      $
 GreenX�5#      $
 BlueX�6   $ 0:0:5D�6&   5$      5%      5'   	   5+      5.      