   M S B A M L   `   `   `  ����  ImageElementExample1    +ImageElementExample.TransformedImageExample   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Transformed Image Example��5       � 	Resources 5         masterImage �� 	UriSource��%U   &	        �� 5      $7 1pack://application:,,/sampleImages/watermelon.jpg?�6(   5	      .��5      ]� 
�������.+�5      �� $	��Top=�6   
���   �._�5      �� 
�������$��Stretch=�6(   $��20(�6F   Rotating an Image Element5      5   	   �� 5      $	��Top=�6     Header1#��[ 6'   Original Image6X   �� 5      $	��Top=�6   $��0,0,0,10q�6$   
�������._�5      �� #��[  6   $	��150��67   $��5q�6C   $��0��5   
   $��1��6   5   	   � 5      -   5        $��transformedGrid��5        CheckeredBrushResource#��[ 6$   $	��Top=�5   
    � ShowGridLines .  $	��Top=�5   
   $��Center=�5   
    � ColumnDefinitions 5      �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � RowDefinitions 5!      �� 5"      $
��Auto �6   �� 5#      $
��Auto �6   �� 5$      $
��Auto �6   .+�5&      �� $��5q�6   #��[ 5'      $��0��5(      $��0��6   90 degree rotation with XAML5*      �� 5,      $	��150��6   $��5q�6   $��0��6(   $��1��68   ��5-      �� 5.      $" /sampleImages/watermelon.jpg?�6    �� Rotation$ Rotate90=�6E   50      �� 52      $��5q�53      #��[ 6   $��1��54      $��0��6   270 degree rotation with C#56      57   	   58      59      