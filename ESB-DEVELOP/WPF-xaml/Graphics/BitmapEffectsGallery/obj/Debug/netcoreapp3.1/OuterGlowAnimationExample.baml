   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5	       �� Padding$ 20q�6#   $	��550��60   $��0,10,0,0q�6<   ._�5
   
   �� ��This example animates the GlowSize property of an OuterGlowBitmapEffect applied to a TextBox. Click inside the TextBox to run the animation.5      5   	   �� 5      $
��Left=�6   $��20q�6.   $	��550��6:   .+�5   
   �� $
��Bold"�6   /-Animate the GlowSize of OuterGlowBitmapEffect6U   �� 5   
   $
��Left=�6   $	��200��6-   $��	30,40,0,0q�69   .��6L    J� BitmapEffect 5      O� 5      -   5        myOuterGlowBitMapEffect�� O� 	GlowColor$
 Blue��5   E    O� GlowSize$ 0Q�6V   .��5   "    � Triggers 5      :� 5       :� RoutedEvent$ TextBox.GotFocus��6   .[�5      �� .��5      �� .��5      W�  �� 
TargetName$ myOuterGlowBitMapEffect��5       �� TargetProperty$ GlowSize�5       	 W� From	 05!      	
 W� To
 406    g� Duration$ 0:0:0.5D�6&   5"      5#      5$      .��5%      5&      5'   	   5*      5+      5,      