   M S B A M L   `   `   `  ����J  FPhotoViewerDemo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:PhotoViewerDemoPhotoViewerDemo  5   	        PhotoViewerDemo.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:PhotoViewerDemo     5   	   -   5          � Title$  
MainWindow��5	   	   $	��350��6   $	��525��6)    � 	Resources 5
       �� DataType   PhotoViewerDemo.Photo �� CornerRadius T� X T� Y J� BitmapEffect �� Radius �� Padding	 �� Orientation
 � ToolTip �� 
TargetType   PhotoListBoxStyle �� Property �� Value �� 
TargetType K� IsItemsHost � Orientation � 
ItemHeight �� ElementName �� Path � 	ItemWidth J� SnapsToDevicePixels �� Triggers P� Property P� Value  MetadataHeader �� 
StartPoint �� EndPoint � Offset � Color+   %PhotoViewerDemo.ExposureTimeConverter " ExposureTimeConverterReference+   %PhotoViewerDemo.ExposureModeConverter " ExposureModeConverterReference*   $PhotoViewerDemo.FocalLengthConverter ! FocalLengthConverterReference+   %PhotoViewerDemo.LensApertureConverter " LensApertureConverterReference(   "PhotoViewerDemo.PhotoSizeConverter  PhotoSizeConverterReference��%�
  (��       5      *, +)&	  s    '�� �    '�� Y    '�� �    '��     &	 �    &	 �	    &	 �	    &	 �	    &	 �	    &	 
    �� 6
   "  6   .R�5      � $��Center=�6   $��Center=�6.   $��6q�6K   .+�5      �� $��Stretch=�6   $��Stretch=�67   $ 4��6S   ���	#44000000z�5      T� 5      $ 5Q�6-   $ 5Q�63    5      �� 5      $ 8Q�6+   5      �� 5      $ 4q�6   
����������	#22000000$��1q�6P   ._�5      �� $	 Vertical=�6!   .+�5      �� ��6    �� *Image.Thumbnail+�� 5      ��6    �� *Metadata.DateImageTaken+$W
 QOnly JPeg images with a stored thumbnail will display a thumbnail during preview.��5    -   5!      5"      5#      5$      5%      �� 5)   
   " ��6   .�5*      ��  � ��
 �����6+   �� 5+       � �� 5,      �� 5-      " ��6&   .R�5.      � $��5q�6$   $
 True��6/   $ 
Horizontal=�6B   $	��Top=�51   $   $��Stretch=�6<    5/   $   �� $ 
ZoomSlider��$ Value� 50   $   �� $ 
ZoomSlider��$ Value�51   <   52      54      55      �� 58   
   " ��6   .�59      ��  � ��
 ���� 6+   �� 5:       � �� 5;      �� 5<      " ��6&   .R�5=      �� $
 True��6!   $��Stretch=�6<   $��Stretch=�6Z   #��z��5>   !   ._�5?      �� 5@       5A      P� 5B       �@��
IsSelected$
 True��6<   . �5C   "   ��  � �� �	#445B62496?   5D      5F      5H      5I      �� 5L   
   " ��6   .�5M      ��  � �� 5N      �� 5O      " ��6&   .R�5P      � $
 True��6$   5Q      5S      5T      �� 5W   
   " ��6   .�5X      ��  � �� 5Y      �� 5Z      " ��6&   .R�5[      � .+�5\      �� ���	#AAFFFFFF$ 4��6<   ���	#66000000$��1q�6e   ._�5]   "   �� $ 4��6)   ���	#88FFFFFF$��1q�6R   $
}�true��5^   )   ._�5_   &   �� $ 6��6-   $��2q�6>   ���#ABB497 5`   *   �� 5a   .   $ 6Q�6?   ._�5c   *   �� $ 6��61   $��2q�6B   ���#DEF2AD 5d   .   �� 5e   2   $ 6Q�6C   5g   +   5h   '   5i   #   5j      �� 5k      $��6q�6/   5l      5m      5o      5p      �� 5s   
   " ��6   .�5t      ��  � ��$ Segoe UI)�6+   �� 5u       � ��$ 11(�6)   5v      �� 5y   
   " ��6'   .�5z      ��  � �� 5{      �� 5|      $ 0,0.5&�6*   $ 1,0.5&�6=   ��5~      � $	 0.5Q�6+   # Z��68   � 5      $ 2Q�6+   $ Transparent��66   5�      5�      �� 5�       � ��
 �����6+   �� 5�       � ��$
 Bold"�6+   5�        5�   
   6&     5�   
   6&     5�   
   6%     5�   
   6&     5�   
   6#   5�      .��5�      � $��10q�5�       � DataContext 5�      ��  
 Photos �� Source# [  � ColumnDefinitions 5�   
   �� 5�      $��* �6   �� 5�      $	��250 �6     � RowDefinitions  5�   
   �� 5�      $
��Auto �6   �� 5�      $��* �6   .+�5�   
   ]� $��0��6   $��0��6$   $��0,0,0,10q�61   .+�5�      �� -   5        $��Right=�5�      $��80��6,   .��6V   Change6^   �� 5�      $
��Left=�6   $��0,0,10,0q�6*   .��6<   Path:6C   �� 5�      -   5        $��	ImagesDir��5�      $
��10,0q�6'   5�      �� 5�   
   $��0��6   $��1��6#   .��5�      �� $
��Auto=�6   $��Disabled=�6>   .��5�      �� -   5        $��PhotosListBox��5�      $! �� IsSynchronizedWithCurrentItem$
! TrueY�5�      #��[  5�      $��5q�5�      " �� SelectionMode$" Extended=�5�      # �� SelectedIndex$# 0��5�      ��5�      �� $ � ContextMenu$ 5�      �� 5�      .@�5�      m� -   5        $
��Edit��5�   '   65   5�      5�      5�      5�      �� 5�   
   $��1��6   $
��Left=�6'   $��Stretch=�6B   $��15��6^   
������ % �� ShowsPreview$
% True��5�   0   ]� 5�   
   $��0��6   $��1��6!   $��2��61   $��15,0,0,0q�5�      .+�5�      ]� $��Bottom=�6   $��5q�60   .+�5�      �� $
��Left=�6   .��6.   Zoom:65   �� 5�      -   5        $��
ZoomSlider��5�      $��10,0,0,0q�5�      & �� Orientation$& 
Horizontal=�5�      ' � Minimum$' 80Q�5�      ( � Maximum$	( 320Q�5�      ) � Value$	) 160Q�5�      * �� TickFrequency$* 80Q�5�      + �� TickPlacement$+ BottomRight=�5�      , � SmallChange$, 5Q�5�      - � LargeChange$- 20Q�5�      5�      �� 5�      .��5�      �� $
��Auto=�6   $��Disabled=�6B   .��5�      �� .+�5�      �� #��[ 6    .��6H   	Source:6Q   �� 5�      ��6    �� $ Source��� 5�      #��[ 6    .��6H   Size:6O   �� 5�      ��5�      `� 5�   "   . `� 	Converter#. [ 6/   .1�5�   &   �� $ Metadata.Width�6.   �� 5�   &   $ Metadata.Height�6.   5�   #   5�      �� 5�      #��[ 6    .��6H   Date Image Taken:6[   �� 5�      ��6    �� $ Metadata.DateImageTaken��� 5�      #��[ 6    .��6H   Camera Model:6W   �� 5�      ��6    �� $ Metadata.CameraModel��� 5�      #��[ 6    .��6H   Creation Software:6\   �� 5�      ��6    �� $ Metadata.CreationSoftware��� 5�      #��[ 6    .��6H   Lens Aperture:6X   �� 5�      ��5�      �� $ Metadata.LensAperture�/ �� 	Converter#/ [ �� 5�      #��[ 6    .��6H   Focal Length:6W   �� 5�      ��5�      �� $ Metadata.FocalLength�#/ [ �� 5�      #��[ 6    .��6H   
ISO Speed:6T   �� 5�      ��6    �� $ Metadata.IsoSpeed��� 5�      #��[ 6    .��6H   Exposure Time:6X   �� 5�      ��5�      �� $ Metadata.ExposureTime�#/ [ �� 5�      #��[ 6    .��6H   Exposure Mode:6X   �� 5�      ��5�      �� $ Metadata.ExposureMode�#/ [ �� 5�      #��[ 6    .��6H   Exposure Compensation:6`   �� 5�      ��6    �� $# Metadata.ExposureCompensation��� 5�      #��[ 6    .��6H   White Balance Mode:6]   �� 5�      ��6    �� $ Metadata.WhiteBalanceMode��� 5�      #��[ 6    .��6H   Color Representation:6_   �� 5�      ��6    �� $" Metadata.ColorRepresentation�5�      5�      5�      5�      5�      5�      