   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5	       �� Padding$ 20q�6#   $	��550��60   $��0,10,0,0q�6<   ._�5
   
   �� ��This example animates the ShadowDepth and Softness properties of a DropShadowBitmapEffect applied to a Button. This animation makes the Button appear to lift off the screen.5      5   	   �� 5      $
��Left=�6   $��20q�6.   $	��550��6:   .+�5   
   �� $
��Bold"�6   -+Click to Animate the DropShadowBitmapEffect6S   �� 5   
   $
��Left=�6   $��20q�6,   $	��250��68   .��6D   " Click Me to Animate Drop Shadow! J� BitmapEffect 5      F� 5      -   5        myDropShadowBitMapEffect�� F� Color$ Black��5   G    F� ShadowDepth$ 0Q�5       � Triggers 5      :� 5       :� RoutedEvent$ Button.Click��6   .[�5      �� .��5      �� .��5       t�  �� TargetProperty$ Margin�5!       g� Duration$ 0:0:0.5D�67   	 t� From	 20,20,20,205"      	
 t� To
 	0,0,20,206'    g� AutoReverse$
 True��66   W� 5%       �� 
TargetName$ myDropShadowBitMapEffect��5&      $ ShadowDepth�5'       W� From 05(      	 W� To 306   $ 0:0:0.5D�6%   $
 True��5)      W� 5.      $ myDropShadowBitMapEffect��5/      $ Softness�50       051       16   $ 0:0:0.5D�6$   $
 True��52      53      54      55      57      58   	   5;      5<      5=      