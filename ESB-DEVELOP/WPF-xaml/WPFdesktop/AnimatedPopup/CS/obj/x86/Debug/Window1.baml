   M S B A M L   `   `   `  ����  	SDKSample    SDKSample.Window1   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � Title$  AnimatedPopup��5      .��5      �� .+�5	      �� -   5        $��
myCheckBox��5	      $��	20,20,0,0q�6!   $"��Select CheckBox to see Popup��5
      �� 5      $
��Left=�6   $	��200��6(   $��	20,10,0,0q�64    � Triggers 5      :� 5   
    :� RoutedEvent$ Button.Click��6   .[�5      �� .��5      �� .��5      W�  �� 
TargetName$ theTransform��5       �� TargetProperty$ (RotateTransform.Angle)�5       W� From$ 0X�5      	 W� To$	 360X�6    g� Duration$ 0:0:5D�6#    g� AutoReverse . 64   5      5      5      .��5       Click to see the Popup animate5      � 5      	 � AllowsTransparency	 . $��Slide=�5"      
 � HorizontalOffset$
 50��5#       � VerticalOffset$ 50��5$      ��5      ��  �� ElementName$ 
myCheckBox�� �� Path$ 	IsChecked� � PlacementTarget 5       �� $ 
myCheckBox��.��5)      �� $	��100��6   $	��100��6   
����  �$	��150q�5*      z�5+   
   �� 5,      -   5        theTransform��5,      .+�5.   
   �� $
��Wrap=�6   
�������Rotating Popup50      51   	   52      55      56      