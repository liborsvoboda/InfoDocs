   M S B A M L   `   `   `  ����  
ImageBrush    ImageBrush.TilingExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5	      .��5      � $��20q�6	     � ColumnDefinitions  5      �� 5      �� 5      �� 5       � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $��40 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��20 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5       �� -   5        $��noTileRectangle��5       $��3��6'   $��0��64   $	��150��6D   $	��150��6P   
���   �$��1��6l   $
��Left=�6�   ��5!      �� 5"   
    j� Viewport$ 	0,0,50,50�6    j� ViewportUnits$ Absolute=�6*    j� 
AlignmentX$
 Left=�6C    j� 
AlignmentY$	 Top=�6U    �� ImageSource$ sampleImages\triangle.jpg��6f   5$      �� 5'      -   5        $��tileRectangle��5'      $��3��6%   $��1��62   $	��150��6B   $	��150��6N   
���2�2�$��1��6n   $
��Left=�6�   ��5(      �� 5)   
   $ 	0,0,50,50�6   $ Absolute=�6*    j� TileMode$
 Tile=�6D   $
 Left=�6T   $	 Top=�6f   $ sampleImages\triangle.jpg��6w   5+      �� 5/      -   5        $��flipXTileRectangle��5/      $��3��6*   $��2��67   $	��150��6G   $	��150��6S   
���2�2�$��1��6s   $
��Left=�6�   ��50      �� 51   
   $ 	0,0,50,50�6   $ Absolute=�6*   $ FlipX=�6D   $
 Left=�6U   $	 Top=�6g   $ sampleImages\triangle.jpg��6x   53      �� 57      -   5        $��flipYTileRectangle��57      $��6��6*   $��1��67   $	��150��6G   $	��150��6S   
���2�2�$��1��6s   $
��Left=�6�   ��58      �� 59   
   $ 	0,0,50,50�6   $ Absolute=�6*   $ FlipY=�6D   $
 Left=�6U   $	 Top=�6g   $ sampleImages\triangle.jpg��6x   5;      �� 5?      -   5        $��flipXYTileRectangle��5?      $��6��6+   $��2��68   $	��150��6H   $	��150��6T   
���2�2�$��1��6t   $
��Left=�6�   ��5@      �� 5A   
   $ 	0,0,50,50�6   $ Absolute=�6*   $ FlipXY=�6C   $
 Left=�6U   $	 Top=�6g   $ sampleImages\triangle.jpg��6x   5C      �� 5F      $��0��6   $��0��6   $��3��6-   $��Stretch=�5G      $��Stretch=�6%   
���2�2�$��6��5H      ��5I      �� 5J   
    �� 
StartPoint$ 0,0.5&�6   	 �� EndPoint$	 1,0.5&�61   ��5L      � 
 � Offset$	
 0.0Q�6    � Color$ 	LimeGreen��6(   � 5M      $	
 1.0Q�6   $ Yellow��6(   5O      5Q      ]� 5T      $��0��6   $��0��6   $��3��6-   .+�5W      �� $
��Left=�6   $��10q�6(   $	��400��64   b`The TileMode property enables you to specify how an ImageBrush is tiled to fill the output area.5Z   	   �� 5[      $��Right=�5\      $��Right=�6$   $��sampleImages\triangle.jpg��6;   $��0,0,40,0q�6^   $	��100��5]   	   $	��100��6   5^      �� 5`      $��2��6   $��0��6   	No Tile66   �� 5a      $��2��6   $��1��6   TileMode="Tile"6>   �� 5b      $��2��6   $��2��6   TileMode="FlipX"6?   �� 5c      $��5��6   $��1��6   TileMode="FlipY"6?   �� 5d      $��5��6   $��2��6   TileMode="FlipXY"6@   5f      5g      