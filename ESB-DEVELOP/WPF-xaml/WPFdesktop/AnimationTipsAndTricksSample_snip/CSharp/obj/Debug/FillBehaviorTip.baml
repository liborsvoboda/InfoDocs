   M S B A M L   `   `   `  ����%  !AnimationTipsAndTricksSample_snip1    +Microsoft.Samples.Animation.FillBehaviorTip   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� Title$  Fill Behavior Example��5       � 	Resources 5       *  &TranslationAnimationStoryboardResource �� 
TargetName �� TargetProperty	 W� To g� Duration��%�   &	        �� 5	      .��5
      W� $ MyTranslateTransform��5   	   $ X�5   	   $	 500X�5   	   $ 0:0:5D�6   5      5      .��5      �� .+�5      �� $	��600��6   $	��200��6   .+�5      �� 
 �� Top$ 50��5   	    �� Left$ 0��6   $��50��5   	   $��50��6   
���  ��z�5   
   T� 5      -   5        MyTranslateTransform�� T� X$ 0Q�5      	 T� Y$	 0Q�6   5   	   5      �� 5#      $��Start Storyboard A��6   
 � Triggers
 5$      :� 5%   
    :� RoutedEvent$ Button.Click��6   .[�5&      �� .��5'      �� .��5(      W� $ MyTranslateTransform��5)      $ X�5*       W� From$ 0X�5+      $	 350X�6   $ 0:0:5D�6#    g� FillBehavior$
 Stop=�5,      5-      5.      5/      51      �� 55       �� Orientation$ 
Horizontal=�6   .+�58      �� $��Start Storyboard B1��6   
 59   
   :� 5:      $ Button.Click��6   .[�5;      �� .��5<      �� -   5         ��Name$ B1��5<      .��5=      W� $ MyTranslateTransform��5>      $ X�5?      $ 0X�5@      $	 350X�6   $ 0:0:5D�6%   $
 Stop=�5A      5C      5D      5E      5G   	   �� 5N      $��Start Storyboard B2��6   
 5O   
   :� 5P      $ Button.Click��6   .[�5Q      �� .��5R      �� -   5        $ B2��5R      .��5S      W� $ MyTranslateTransform��5T      $ X�5U      $	 500X�5V      $ 0:0:5D�6   $
 Stop=�5W      5X      5Y      5Z      5\   	   5_      �� 5c      $��Start Storyboard C��6   
 5d      :� 5e   
   $ Button.Click��6   .[�5f      �� .��5g      �� -   5        .��5h      W� $ MyTranslateTransform��5i      $ X�5j      $ 0X�5k      $	 350X�6   $ 0:0:5D�6#   $
 Stop=�5l      5m      5n      5o      5q      5s      5t      