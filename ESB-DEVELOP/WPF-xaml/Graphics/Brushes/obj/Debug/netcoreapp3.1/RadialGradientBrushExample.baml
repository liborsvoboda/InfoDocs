   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� Title$  Radial Gradients��5      .��5	      � $��10q�6	    � ColumnDefinitions 5
      �� 5      �� 5      �� 5       � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $��20 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5      �� $��0��6   $��0��6   $��3��6*      BlueHorizontalGradientBrush#��[  5      ._�5      ��   MyIntroTextBlockStyle#��[ 6   ��The following examples show radial gradients with different gradient origin and center settings. The gradient origin of each radial gradient is marked with a red dot, and the gradient circle is outlined with a red circle.5   	   5      �� 5!      $��2��6   $��0��6   $��0,0,10,0q�6-   �� 5"      .�6   GradientOrigin6   	: 0.5,0.5�� 6,   �� 5#      .�6   Center6   	: 0.5,0.5�� 6$   �� 5$      .�6   	RadiusX6   : 0.5�� 6!   �� 5%      .�6   	RadiusY6   : 0.55&      �� 5'      $��3��6   $��0��6   $	��150��6*   $	��150��66   .+�5(      �� $	��150��6   $	��150��6   ��5)   
   
� 5*       
� GradientOrigin$ 0.5,0.5&�6     
� Center$ 0.5,0.5&�69    
� RadiusX$	 0.5Q�6J    
� RadiusY$	 0.5Q�6X   .��5+      �  � Color$ White��6    � Offset$	 0.0Q�6)   � 5,      $ #545454��6   $	 1.0Q�6+   5-      5/   	   F� 52      
���  ����53   
   @� 54      	 @� Center$	 75,75&�6   
 @� RadiusX$
 2Q�6+    @� RadiusY$ 2Q�67   56   	   F� 57      
���  ��$��2��6   ��58   
   @� 59      $	 75,75&�6   $
 74Q�6+   $ 74Q�68   5;   	   5<      �� 5>      $��2��6   $��1��6   $��0,0,10,0q�6-   �� 5?      .�6   GradientOrigin6   : 0.75,0.25�� 6.   �� 5@      .�6   Center6   	: 0.5,0.5�� 6$   �� 5A      .�6   	RadiusX6   : 0.5�� 6!   �� 5B      .�6   	RadiusY6   : 0.55C      �� 5D      $��3��6   $��1��6   $	��150��6*   $	��150��66   .+�5E      �� $	��150��6   $	��150��6   ��5F   
   
� 5G      $ 	0.75,0.25&�6    $ 0.5,0.5&�6;   $	 0.5Q�6L   $	 0.5Q�6Z   .��5H      � $ White��6   $ 0Q�6)   � 5I      $ #545454��6   $ 1Q�6+   5J      5L   	   F� 5O      
���  ����5P   
   @� 5Q      $	 
112.5,37.5&�6   $
 2Q�60   $ 2Q�6<   5S   	   F� 5T      
���  ��$��2��6   ��5U   
   @� 5V      $	 75,75&�6   $
 74Q�6+   $ 74Q�68   5X   	   5Y      �� 5[      $��2��6   $��2��6   �� 5\      .�6   GradientOrigin6   	: 0.5,0.5�� 6,   �� 5]      .�6   Center6   	: 0.1,0.1�� 6$   �� 5^      .�6   	RadiusX6   : 0.75�� 6"   �� 5_      .�6   	RadiusY6   : 0.755`      �� 5a      $
}�True��6   $��3��6!   $��2��6.   $	��150��6>   $	��150��6J   .+�5b      �� $	��150��6   $	��150��6   ��5c   
   
� 5d      $ 0.5,0.5&�6    $ 0.1,0.1&�69   $
 0.75Q�6J   $
 0.75Q�6Y   .��5e      � $ White��6   $ 0Q�6)   � 5f      $ #545454��6   $ 1Q�6+   5g      5i   	   F� 5l      
���  ����5m   
   @� 5n      $	 75,75&�6   $
 2Q�6+   $ 2Q�67   5p   	   F� 5q      
���  ��$��2��6   ��5r   
   @� 5s      $	 15,15&�6   $
 111.5Q�6+   $ 111.5Q�6;   5u   	   5v      �� 5x        FooterRectangleStyle#��[ 6   $��5��5y      $��0��6   $��3��6%   #��[  5z      5{      5|      