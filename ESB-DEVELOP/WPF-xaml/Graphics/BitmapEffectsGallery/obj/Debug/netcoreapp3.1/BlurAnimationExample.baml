   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5	       �� Padding$ 20q�6#   $	��550��60   $��0,10,0,0q�6<   ._�5
   
   �� }{This example animates the Radius property of a BlurBitmapEffect applied to a Button. Click the button to run the animation.5      5   	   �� 5      $
��Left=�6   $��20q�6.   $	��550��6:   .+�5   
   �� $
��Bold"�6   (&Animate the Radius of BlurBitmapEffect6N   �� 5   
   $	��200��6   $
��Left=�6   $��20q�68   .��6E   Click to Blur ME! J� BitmapEffect 5      �� 5      -   5        myBlurBitMapEffect�� �� Radius$ 0Q�5   ;    � Triggers 5      :� 5       :� RoutedEvent$ Button.Click��6   .[�5      �� .��5      �� .��5      W�  �� 
TargetName$ myBlurBitMapEffect��5        �� TargetProperty$ Radius�5!       W� From 05"      		 W� To	 406   
 g� Duration$
 0:0:0.3D�6%    g� AutoReverse$
 True��5#      5$      5%      5&      5(      5)   	   5,      5-      5.      