   M S B A M L   `   `   `  ����  AnimationExamples$    AnimationExamples.SampleViewer   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5        $��GridSampleViewerPage��5        N� WindowTitle$  Animation Gallery��5      .��5      � 
���   �.+�5	   
   �� -   5        $��SampleGridBorder��5	      $��1q�5
      
�������$��Right=�5      ._�5      � -   5        $��
SampleGrid��5      $��Right=�5   	   $��Right=�5   	   $	��300��5   	   $	��400��6   $��10q�5   	   $	��Top=�6   $y�Visible=�6-    � ColumnDefinitions 5   
   �� 5      �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      .+�5   
   	� -   5         	�Name$% TextAnimationExampleRadioButton��5      $��0��5      $��0��6&      GlassRadioButtonStyle#��[  63   .��5!       � -   5        $��TextAnimationExampleFrame��5"        � Source$$ text\TextAnimationExample.xaml?�5#      
�������  � NavigationUIVisibility$ Hidden=�5$      5&      	� 5)   
   $��1��6   $��0��6&   #��[  63   .��5+       � -   5        $(��"TranslateTextAnimationExampleFrame��5,      $- 'text\TranslateTextAnimationExample.xaml?�5-      $ Hidden=�5.      50      	� 52   
   $��2��6   $��0��6&   #��[  63   .��54       � -   5        $#��SkewTextAnimationExampleFrame��55      $( "text\SkewTextAnimationExample.xaml?�56      $ Hidden=�57      59      	� 5<   
   $��0��6   $��1��6&   #��[  63   .��5>       � -   5        $#��AnimatedParagraphExampleFrame��5?      $( "text\AnimatedParagraphExample.xaml?�5@      $	��400��5A      $	��400��6   $ Hidden=�5B      5D      	� 5G   
   $��1��6   $��1��6&   #��[  63   .��5I       � -	   5        $'��!InteractiveAnimationsExampleFrame��5J      $7 1timingbehaviors\InteractiveAnimationsExample.xaml?�5K      $	��400��5L      $	��400��6   $ Hidden=�5M      5N      	� 5Q   
   $��2��6   $��1��6&   #��[  63   .��5S       � -
   5        $��RotatingCubeExampleFrame��5S      $! 3D\RotatingCubeExample.xaml?�5T      
�������$ Hidden=�5U      5W      	� 5Y   
   $��0��6   $��2��6&   #��[  63   .��5[       � -   5        $��SplineExampleFrame��5[      $" keyframes\SplineExample.xaml?�5\      
�������$ Hidden=�5]      5_      	� 5a   
   $��1��6   $��2��6&   #��[  63   .��5c       � -   5        $*��$ControllableRotatingCubeExampleFrame��5c      $- '3D\ControllableRotatingCubeExample.xaml?�5d      
�������$ Hidden=�5e      5g      	� 5i   
   $��2��6   $��2��6&   #��[  63   .��5k       � -   5        $%��AnimatingAlongAPathExampleFrame��5k      $% AnimatingAlongAPathExample.xaml?�5l      
�������$ Hidden=�5m      5o      5s   	   z�5u      T� 5v   
   -   5         SampleGridTranslateTransform�� T� X$ 0Q�5v   C    T� Y$ 0Q�6I   5x      �� 5{      -   5        $��SampleDisplayBorder��5{      
�������$��1q�6;   $y�	Collapsed=�5|      
���   �._�5~      ]� $��10q�5   	   $��Stretch=�6   .+�5�   
   �� $��Right=�5�      $��50��5�      $��50��6    � Triggers 5�      :� 5�      	 :� RoutedEvent$	 Button.Click��6   .[�5�      �� 
 �� HandoffBehavior$
 SnapshotAndReplace=�6    .��5�      �� .��5�      W�  �� 
TargetName$ 
SampleGrid��5�       �� TargetProperty$ Opacity�5�       W� From 05�      	 W� To 15�       g� 	BeginTime	 0:0:06   W� 5�      $" SampleGridTranslateTransform��5�      $ X�5�       05�      	 0:0:05�      W� 5�      $+ %SampleDisplayBorderTranslateTransform��5�      $ X�5�      	 0:0:05�       g� Duration$ 0:0:1D�5�       05�       5�      ��  �� ElementName$ SampleDisplayBorder�� �� Path$ ActualWidth�5�      5�      5�      5�       � 5�   
   -   5        $��SampleDisplayFrame��5�      
�������$ Hidden=�5�      5�   	   z�5�      T� 5�   
   -   5        )%SampleDisplayBorderTranslateTransform��$ 0Q�5�      5�      5�      5�      