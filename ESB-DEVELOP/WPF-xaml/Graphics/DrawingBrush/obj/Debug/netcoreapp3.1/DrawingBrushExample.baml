   M S B A M L   `   `   `  ����  DrawingBrush&     DrawingBrush.DrawingBrushExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      .��5      �� .+�5	      �� ���	#66000000._�5
      �� $��10q�6   $
��Left=�6   
�������DrawingBrush Examples5   	   5      �� 5      $��10q�6   .+�5      �� $��0,0,0,10q�6   ywA DrawingBrush paints an area with a drawing. It may also be used to create a pattern. The following are some examples.5   	   �� 5        �� Orientation$  
Horizontal=�6   .+�5   
   �� $	��100��6   $	��100��6    
���   �$��1��6<   ��5      L� 5       L� Drawing 5      I� 5      ��5      �  � Geometry+ ��    �� Ѡ�     �@B �� Ѡ� @B 	 � Brush
 �����5      � 5      + ��     �@B �� Ѡ� @B �    �� 	
 �����5       � 5!      + ��� �� � � H� Ѱq �� � �  � 	 �#FFFF005"      � 5#      + ��� �q � � �Y Ѱq �q � �  � 	
 �   �5$      � 5%      + ��� �q �H�  � ѐ� �� � �  � 	 �#FF00005&      � 5'      + ��q �� ��Y  � Ѱq �q � �  � 	
 ��  �5(      5*      5,      5.      �� 50   
   $	��100��6   $	��100��6    
���   �$��1��6<   $��	10,0,10,0q�6P   ��51      L� 52       j� Viewport$ 0,0,0.5,0.5�6    j� TileMode$
 Tile=�62    53      I� 54      ��56      � + ��    �� Ѡ�     �@B �� Ѡ� @B 	
 �����57      � 58      + ��     �@B �� Ѡ� @B �    �� 	
 �����59      � 5:      + ��� �� � � H� Ѱq �� � �  � 	 �#FFFF005;      � 5<      + ��� �q � � �Y Ѱq �q � �  � 	
 �   �5=      � 5>      + ��� �q �H�  � ѐ� �� � �  � 	 �#FF00005?      � 5@      + ��q �� ��Y  � Ѱq �q � �  � 	
 ��  �5A      5C      5E      5G      �� 5I      $	��100��6   $	��100��6#   
���   �$��1��6?   ��5J      L� 5K      $ 0,0,0.1,0.1�6   $
 Tile=�64    5L      I� 5M      ��5O      � + ��    �� Ѡ�     �@B �� Ѡ� @B 	
 �����5P      � 5Q      + ��     �@B �� Ѡ� @B �    �� 	
 �����5R      � 5S      + ��� �� � � H� Ѱq �� � �  � 	 �#FFFF005T      � 5U      + ��� �q � � �Y Ѱq �q � �  � 	
 �   �5V      � 5W      + ��� �q �H�  � ѐ� �� � �  � 	 �#FF00005X      � 5Y      + ��q �� ��Y  � Ѱq �q � �  � 	
 ��  �5Z      5\      5^      5`      5b      �� 5d   
   $��	0,30,0,10q�6   ��The following rectangles are filled with a drawing brush. Notice how the patterns defined by the DrawingBrush expand to fill the area of the rectangle.5g      �� 5i   
   $  
Horizontal=�6   .+�5j      �� $	��100��6   $	��100��6"   
���   �$��1��6>   ��5k      L� 5l       5m      � 5n      
 ��  � 5o      � 5p      .��5q      @�  @� RadiusX$	 0.2Q�6*    @� RadiusY$
 0.45Q�68    @� Center$ 0.5,0.5&�6G   @� 5r      $
 0.45Q�6*   $	 0.2Q�69   $ 0.5,0.5&�6G   5s      
	 � Pen	 5u      >� 5v      
 >� 	Thickness$	
 0.1Q�6    >� Brush
 �   �6,   5x      5z      5|      �� 5}      $	��200��6   $	��100��6"   
���   �$��1��6>   $��	10,0,10,0q�6R   ��5~      L� 5       5�      � 5�      
 ��  � 5�      � 5�      .��5�      @� $	 0.2Q�6*   $
 0.45Q�68   $ 0.5,0.5&�6G   @� 5�      $
 0.45Q�6*   $	 0.2Q�69   $ 0.5,0.5&�6G   5�      	 5�      >� 5�      $	
 0.1Q�6   
 �   �6,   5�      5�      5�      �� 5�      $	��100��6   $	��200��6"   
���   �$��1��6>   ��5�      L� 5�       5�      � 5�      
 ��  � 5�      � 5�      .��5�      @� $	 0.2Q�6*   $
 0.45Q�68   $ 0.5,0.5&�6G   @� 5�      $
 0.45Q�6*   $	 0.2Q�69   $ 0.5,0.5&�6G   5�      	 5�      >� 5�      $	
 0.1Q�6   
 �   �6,   5�      5�      5�      5�      5�      5�      5�      