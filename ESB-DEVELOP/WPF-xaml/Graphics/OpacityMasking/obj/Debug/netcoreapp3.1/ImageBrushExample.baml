   M S B A M L   `   `   `  ����  OpacityMasking!    SDKSample.ImageBrushExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� Title$'  !Using an Image as an Opacity Mask��5      .��5      ]� 
�������.+�5
      �� 
���   �$	��Top=�6    ._�5      �� $��16(�6   
�������$��Stretch=�63   #!Using an Image as an Opacity Mask5   	   5      � 5         MyCheckeredBrushResource#��[  6   $��Center=�5      $��Center=�6"    � ColumnDefinitions 5      �� 5   
   $
��Auto �6   �� 5   
   $
��Auto �6   �� 5   
   $
��Auto �6    � RowDefinitions 5      �� 5   
   $
��Auto �6   �� 5   
   $
��Auto �6   �� 5   
   $
��Auto �6   �� 5   
   $
��Auto �6   .+�5      �� $��Stretch=�6   $��Stretch=�60   
�������$��0��5       $��0��6#   $��3��63   �� 5!      $��10q�6   $��0��6   $��0��6.   Without Opacity Mask6Q   �� 5"      $��10q�6   $��1��6   $��0��6.   The Opacity Mask6M   �� 5#      $��10q�6   $��2��6   $��0��6.   With Opacity Mask6N   �� 5'      $	��150��5(   	   $	��200��5)   	   $"��sampleImages/Waterlilies.jpg��5*      $
��Left=�5+      $��0��5,      $��1��6   $��10q�5-      �� 52      $	��150��53   	   $	��200��54   	   
���   �$��1��56   	   $
��Left=�57   	   $��10q�58   	   $��1��59   	   $��1��6   ��5:   
   �� 5;       �� ImageSource$  sampleImages/tornedges.png��6   5=   	   �� 5A      $	��150��5B   	   $	��200��5C   	   $"��sampleImages/Waterlilies.jpg��5D   	   $
��Left=�5E   	   $��10q�5F   	   $��2��5G   	   $��1��6    J� OpacityMask 5H   
   �� 5I      $  sampleImages/tornedges.png��6   5K   	   �� 5N      $	��150��5O   	   $	��200��5P   	   $"��sampleImages/Waterlilies.jpg��5Q   	   $
��Left=�5R   	   $��10q�5S   	   $��0��5T   	   $��2��6   �� 5Y      $	��150��5Z   	   $	��200��5[   	   
���   �$��1��5]   	   $
��Left=�5^   	   $��10q�5_   	   $��1��5`   	   $��2��6   ��5a   
   �� 5b       j� Viewport$ 	0,0,50,50�5c       j� ViewportUnits$ Absolute=�5d       j� TileMode$
 Tile=�5e      $  sampleImages/tornedges.png��5f      5h   	   �� 5k      $	��150��5l   	   $	��200��5m   	   $"��sampleImages/Waterlilies.jpg��5n   	   $
��Left=�5o   	   $��10q�5p   	   $��2��5q   	   $��2��6    5s   
   �� 5t      $ 	0,0,50,50�5u      $ Absolute=�5v      $
 Tile=�5w      $  sampleImages/tornedges.png��5x      5z   	   �� 5}      $	��100��5~   	   $	��200��5   	   $��	MS Gothic)�5�   	   $��16(�5�   	   $
��Left=�5�   	   $��10q�5�   	   $��0��5�   	   $��3��6   .��6&   
A Button5�   	   �� 5�      $	��100��5�   	   $	��200��5�   	   
���   �$��1��5�   	   $
��Left=�5�   	   $��10q�5�   	   $��1��5�   	   $��3��6   ��5�   
   �� 5�      $  sampleImages/tornedges.png��6   5�   	   �� 5�      $	��100��5�   	   $	��200��5�   	   $��	MS Gothic)�5�   	   $��16(�5�   	   $
��Left=�5�   	   $��10q�5�   	   $��2��5�   	   $��3��6   .��6&   
A Button 5�   
   �� 5�      $  sampleImages/tornedges.png��6   5�   	   5�      5�      5�      