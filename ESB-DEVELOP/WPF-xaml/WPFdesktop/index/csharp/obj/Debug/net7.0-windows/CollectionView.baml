   M S B A M L   `   `   `  ����C  ?bindings, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:bindingsbindings  5   	   #clr-namespace:bindingsbindings  5   	       bindings.CollectionView   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &srcclr-namespace:bindings     5   	   (localclr-namespace:bindings     5   	   -   5          � Title$  CollectionView��5	   	   $	��450��6    $	��800��6-    � 	Resources 5         listingDataView �� Source �� Current �� Source �� Path��%M   &	        �� 5   
    5      �� # Z $ AuctionItems�5      5      .��5      �  5   
    �� DataType   bindings.AuctionItem �� Padding � RowDefinitions	 � ColumnDefinitions
 �� StrokeLineJoin �� Stretch � Points  smallTitleStyle  textStyleTextBlock �� Orientation �� Triggers �� Binding �� Value   bindings.SpecialFeatures �� 
TargetName �� Property �� Value��%�  (��       5      *, +)7  7  7  7  7  �� 6   "  6   .R�5      �� $��border��5   %   $��1q�5      
�������$ 7q�5      $��3q�63   $	��500��6>   ._�5      �  5      �� 5      �� 5      �� 5      �� 5      	 5      �� 5      $��20 �6/   �� 5       $��86 �6/   �� 5!      $��* �6/   .+�5$      � $
��star��5)   6   $��0��5$   "   $��0��6/   $��4��6?   
��� ���
���   �$��1��5%   ?   $
 Round=�5&   "   $��20��69   $��20��6D   $
 Fill=�5'   "   i �
   @T� �� �ا ��j @f��j  � ��� ��� ��� @T�  �  	= ��� ��[ ��� ��j ��j ��j $y�Hidden=�5)   "   66   �� 5+      $��descriptionTitle��5,   $   $��0��5+   $   $��1��61   $��0,0,8,0q�6A   8��  Description:5-   [   �� 5/      $��DescriptionDTDataType��6$   $��0��6A   $��2��6N   8�� ��50   $   �� $ Description�51   $   �� 53      $��currentPriceTitle��54   $   $��1��53   $   $��1��61   $��0,0,8,0q�6A   8�� Current Price:55   ]   �� 57      $��1��6%   $��2��62   $ 
Horizontal=�6B   .+�58      �� $��$��6(   8�� 61   �� 59      $��CurrentPriceDTDataType��6(   8�� ��5:   (   �� $ CurrentPrice�5;   (   5<      5=      5>       5?      �� 5@       6"   �� $ SpecialFeatures� 5A       5B      	Color=�69   a�5D      �� 5E      $ border��6O    � ��
 ������ 5F      $ descriptionTitle��6H    � ��
 ��  ��� 5G      $ currentPriceTitle��6H    � ��
 ��  ��� 5H      $ border��6J    � ��$ 3q�6@   6J   �� 5I      $ border��6B    �@��Padding$ 5q�68   6B   5K      �� 5L       6"   �� $ SpecialFeatures� 5M       5N      	Highlight=�6=   .a�5P      �� $ border��6G    � ��
 � ����� 5Q      $ descriptionTitle��6D    � ��
 ��  ��� 5R      $ currentPriceTitle��6D    � ��
 ��  ��� 5S      $
 star��6G    � y�$ Visible=�67   6G   �� 5T      $ border��6F    � ��$ 3q�6<   6F   �� 5U      $ border��6>    �@��Padding$ 5q�64   6>   5V      5X      5Z       5[   
   �� 5\      �� 5]      �� 5^      .+�5a   
   �� .+�5b      �� -   5        .��5b   9   Add Sorting6F   �� 5c      -   5        .��5c   >   Add Filtering6M   �� 5d      -   5        .��5d   =   Add Grouping6K   5e      �� 5i   
   -   5        $��Master��5i      $��2��6    $��3��6-   $��8q�6A   ��5j      �� # [  �� 5l   
   -   5        $��Detail��5l      $��3��6'   $��3��64    ! detailsProductListingTemplate#��[ 5n      $��9,0,0,0q�5o      ��5m      �� # [  5o      5q      5r      