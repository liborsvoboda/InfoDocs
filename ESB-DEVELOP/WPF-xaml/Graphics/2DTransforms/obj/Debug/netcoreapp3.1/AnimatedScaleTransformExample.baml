   M S B A M L   `   `   `  ����  2DTransformsI    CMicrosoft.Samples.Graphics.Transforms.AnimatedScaleTransformExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� WindowTitle$%  Animated ScaleTransform Example��5       N� 
Background
 �����.��5      �� 
�������$��2q�6#   
�������$��10q�6O   ._�5	      �� $��10q�6   .+�5
      �� $��0,10,0,0q�6   $	��250��6$   XVThe ScaleX and ScaleY properties of this ScaleTransform are each animated from 0 to 1.5   	   �� 5      
���   �$��1q�6#      MyBlueGridBrushResource#��[  67   $��Center=�5   	   $	��Top=�6&   ._�5   
   �� $	��250��6   $	��250��6   .+�5      �� $��50��5      $��50��6   ���	#CCCCCCFF
����  �$��2��6C    �� Left$	 100��5      
 �� Top$	 100��6   z�5      �� 5      -   5        MyAnimatedScaleTransform�� �� CenterX$ 25Q�5   A    �� CenterY$ 25Q�6N    �� ScaleX$ 1Q�6[    �� ScaleY$ 1Q�6f   5      �� 5      $��50��6   $��50��6"   ���	#99000000 �� StrokeDashArray$	 4,1R�5      $��2��6#   $	 100��5      $	 100��6   5      5   	   �� 5      	 �� Orientation$	 
Horizontal=�6   $��Center=�6,   $��10q�5   	   .+�5   
   �� -   5        $��startButton��5      $��0,0,2,0q�6$   .��65   Start6<   �� 5   
   -   5        $��
stopButton��5      .��6#   Stop6)   
 � Triggers
 5    
   :� 5!       :� 
SourceName$ startButton��6    :� RoutedEvent$ Button.Click��62   .[�5"      �� -   5         ��Name$ myBeginStoryboard��5"      .��5#      �� .��5$      W�  �� 
TargetName$ MyAnimatedScaleTransform��5%       �� TargetProperty$ ScaleX�5&       W� From 05'      	 W� To 36    g� Duration$ 0:0:2D�6#   W� 5(      $ MyAnimatedScaleTransform��5)      $ ScaleY�5*       05+       36   $ 0:0:2D�6#   5,      5-      5.      :� 5/      $ 
stopButton��6   $ Button.Click��61   .[�50      ��  �� BeginStoryboardName$ myBeginStoryboard��6   51      53   	   54      55      56      