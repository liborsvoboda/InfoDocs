   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5	       �� Padding$ 20q�6#   $	��550��60   $��0,10,0,0q�6<   ._�5
   
   �� ��This example animates the BevelWidth and LightAngle properties of a BevelBitmapEffect applied to a Button. Mouseover the button to run the animation.5      5   	   �� 5      $
��Left=�6   $��20q�6.   $	��550��6:   .+�5   
   �� $
��Bold"�6   <:Animate the BevelWidth and LightAngle of BevelBitmapEffect6b   �� 5   
   $	��200��6   $��80��6   $
��Left=�6)   $��50,20,20,20q�6D   .��6Z   MouseOver ME! J� BitmapEffect 5      �� 5      -   5        myBevelBitMapEffect�� �� 
BevelWidth$ 0Q�5   =    �� EdgeProfile$ CurvedIn=�6L    � Triggers 5      :� 5       :� RoutedEvent$ Button.MouseEnter��6   .[�5      �� .��5      �� .��5      W�  �� 
TargetName$ myBevelBitMapEffect��5        �� TargetProperty$ 
BevelWidth�5!      	 W� From	 05"      	
 W� To
 156    g� Duration$ 0:0:0.5D�6%    g� AutoReverse$
 True��68   W� 5&      $ myBevelBitMapEffect��5'      $ 
LightAngle�5(      	 3605)      
 06   $ 0:0:0.5D�6&   $
 True��69   5*      5+      5,      5.      5/   	   52      53      54      