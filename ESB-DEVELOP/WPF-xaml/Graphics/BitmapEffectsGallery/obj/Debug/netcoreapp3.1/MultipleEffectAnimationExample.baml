   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5	       �� Padding$ 20q�6#   $	��550��60   $��0,10,0,0q�6<   ._�5
   
   �� ��The following example shows how to animate the ShadowDepth and Softness properties of a DropShadowBitmapEffect and the Radius property of a BlurBitmapEffect to create the illusion of a button rising up from toward you.5      5   	   �� 5      $
��Left=�6   $��20q�6.   $	��550��6:   .+�5   
   �� $��40,0,0,0q�6   $
��Bold"�6'   B@Click to Animate the DropShadowBitmapEffect and BlurBitmapEffect6{   �� 5   
   $��20q�6   $	��200��6   .��6)   Click Me to Animatez�5      �� 5      -   5        MyAnimatedScaleTransform�� �� ScaleX$ 1Q�5       �� ScaleY$ 1Q�6    �� CenterX$	 100Q�6$    J� BitmapEffect 5      �� 5      .��5      �� -   5        myBlurBitMapEffect�� �� Radius$ 0Q�5   =    �� 
KernelType$	 Box=�6H   F� 5      -   5        myDropShadowBitMapEffect�� F� Color$ Black��5   I   	 F� ShadowDepth$	 0Q�5      5      
 � Triggers
 5       :� 5!       :� RoutedEvent$ Button.Click��6   .[�5"      �� .��5#      �� .��5'      W�  �� 
TargetName$ MyAnimatedScaleTransform��5(       �� TargetProperty$ ScaleX�5)      	 W� To 5.05*       g� Duration$ 0:0:1D�6    g� AutoReverse$
 True��6/   W� 5.      $ MyAnimatedScaleTransform��5/      $ ScaleY�50       5.051      $ 0:0:1D�6   $
 True��6/   U� 57      $ myBlurBitMapEffect��58      $ Radius�59      $
 True��67   \�5;      ��  �� 	KeySpline$ 0.6,0.0 0.9,0.00��6-    O� Value$ 30Q�6J    O� KeyTime$ 0:0:1��6U   5=      W� 5@      $ myDropShadowBitMapEffect��5A      $ ShadowDepth�5B       W� From 05C       506   $ 0:0:1D�6%   $
 True��5D      W� 5H      $ myDropShadowBitMapEffect��5I      $ Softness�5J       05K       16   $ 0:0:1D�6$   $
 True��5L      5M      5N      5O      5Q      5R   	   5U      5V      5W      