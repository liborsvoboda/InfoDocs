   M S B A M L   `   `   `  ����  ImageElementExample-    'ImageElementExample.CroppedImageExample   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  CroppedImage Example��5       � 	Resources 5         masterImage �� 	UriSource  croppedImage �� Source �� 
SourceRect��%�   &	        &	 F     7   �� 5	      $2 ,pack://application:,,/sampleImages/gecko.jpg?�6%   �� 5
      8   $ 30 20 105 50��5   -   5      .��5      ]� .+�5      �� $	��Top=�6   
���   �._�5      �� 
�������$��Stretch=�6(   $��20(�6F   Cropping an Image Element5      5   	   �� 5      $	��Top=�6     Header1#��[ 6'   Original Image6X   �� 5      $	��Top=�6   $��0,0,0,10q�6$   ._�5      �� $	��200��6   #��[  6   5   	   � 5      -   5        $��croppedGrid��5        CheckeredBrushResource#��[ 6    $	��Top=�5   
    � ShowGridLines .  $	��Top=�5   
   $��Center=�5   
    � ColumnDefinitions 5      �� 5      $
��Auto �6   �� 5       $
��Auto �6   �� 5!      $
��Auto �6   �� 5"      $
��Auto �6    � RowDefinitions 5$      �� 5%      $
��Auto �6   �� 5&      $
��Auto �6   �� 5'      $
��Auto �6   �� 5(      $
��Auto �6   �� 5)      $
��Auto �6   �� 5*      $
��Auto �6   .+�5,      �� $��5q�6   #��[ 5-      $��0��5.      $��0��6   Cropped with XAML50      �� 53      $	��200��6   #��[ 6   $��5q�54      $��0��6   $��1��6(   �� 56      $��5q�57      #��[ 6   $��1��58      $��0��6   Cropped with C#5:      �� 5;        Header2#��[ 6   $��5q�5<      $��0��6   $��2��6(   $��2��65   Chaining Cropped Images5>      �� 5A      $	��200��6   $��0��6   $��3��6-   $��5q�6:   ��5B      �� 5C      # [ 6   $ 
30 0 75 50��5D      5F      �� 5H   
   #��[ 6   $��5q�5I      $��0��6   $��4��6'   $��2��64   Clipped Image5K      �� 5N   
   $	��200��6   $��0��6   $��5��6,   $��5q�69   $��/sampleImages/gecko.jpg��5O       J� Clip 5P      @� 5Q      	 @� Center$	 75,50&�6   
 @� RadiusX$
 50Q�6-    @� RadiusY$ 25Q�6:   5S      5U   	   5V      5W      