   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5	       �� Padding$ 20q�6#   $	��550��60   $��0,10,0,0q�6<   ._�5
   
   �� ��This example animates the LightAngle property of an EmbossBitmapEffect applied to an Image. Mouseover the image to run the animation.5      5   	   �� 5      $
��Left=�6   $��20q�6.   $	��550��6:   .+�5   
   �� $��50,0,0,0q�6   $
��Bold"�6&   .,Animate the LightAngle of EmbossBitmapEffect6f   �� 5   
   $��/images/WaterLilies.jpg��6   $
��Left=�61   $	��400��6L   $��10q�6X    J� BitmapEffect 5      ?� 5      -   5        myEmbossBitMapEffect�� ?� Relief$	 0.8Q�5   ?    ?� 
LightAngle$ 0Q�6L    � Triggers 5      :� 5       :� RoutedEvent$ Image.MouseEnter��6   .[�5      �� .��5      �� .��5      W�  �� 
TargetName$ myEmbossBitMapEffect��5       �� TargetProperty$ 
LightAngle�5       	 W� From	 05!      	
 W� To
 3606    g� Duration$ 0:0:3D�6&   5#      5$      5%      5'      5(   	   5+      5,      5-      