   M S B A M L   `   `   `  ����P  LGlobalizationHomepage, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:GlobalizationHomepageGlobalizationHomepage  5      $    GlobalizationHomepage.HomePage   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:GlobalizationHomepage     5        N�Language$  en-US�5
       N� Title$ HomePage��5      $��LeftToRight=�6    �� Comments$S MFlowDirection(This FlowDirection controls the actual content of the homepage)��5	      .��5      ]� DockPanel_1��$	��800��6$   $	��600��60   $
��True��6=    � 	Resources 5   
      TopbarButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType ��Name	 �� Triggers
 P� Property P� Value �� 
TargetName  SidebarButtonStyle  GraybarButtonStyle��%�  &	        &	 4    &	 h    �� 5      Style_1��" ��6>   .�5      �� Setter_1�� �@�Cursor$
 Hand��6<   �� 5      Setter_2�� � �� 5      �� 5      ControlTemplate_1��" ��6D   .R�5      �� $ Border��66   Border_1��$��1q�6F   ._�5   "   �� ContentPresenter_1��63   5      	 5      P� 5   "   	Trigger_1��
 �@J�IsMouseOver$
 True��6S   . �5   &   �� Setter_3��$ Border��6>    � ��
 �����6i   �� 5   &   Setter_4��$ Border��6>    � �� �#4B92D96h   5   #   5      5      5      �� 5       Style_2��" ��6?   .�5!      �� Setter_5�� �@�Cursor$
 Hand��6<   �� 5"      Setter_6�� � �� 5#      �� 5$      ControlTemplate_2��" ��6D   .R�5%      �� $ Border��66   Border_2��$��1q�6F   ._�5&   "   �� ContentPresenter_2��63   5'      	 5(      P� 5)   "   	Trigger_2��
 �@J�IsMouseOver$
 True��6S   . �5*   &   �� Setter_7��$ Border��6>    � ��
 �����6i   �� 5+   &   Setter_8��$ Border��6>    � �� �#F1F1F16h   5,   #   5.      50      51      �� 52      Style_3��" ��6?   .�53      �� Setter_9�� �@�Cursor$
 Hand��6<   �� 54      	Setter_10�� � �� 55      �� 56      ControlTemplate_3��" ��6D   .R�57      �� $ Border��66   Border_3��$��1q�6F   ���#F1F1F1._�58   "   �� ContentPresenter_3��63   59      	 5:      P� 5;   "   	Trigger_3��
 �@J�IsMouseOver$
 True��6S   . �5<   &   �� 	Setter_11��$ Border��6?    � ��
 �����6j   �� 5=   &   	Setter_12��$ Border��6?    � ��
 �����6i   5>   #   5@      5B      5C      5D      .+�5F   
   ]� DockPanel_2��$	��Top=�5G      $
��True��5H      ��5I      �� 5J      LinearGradientBrush_1�� �� 
StartPoint$	 0,0&�6D    �� EndPoint$	 1,0&�6U   ��5L      � GradientStop_1�� � Color$ #4B92D9��6>    � Offset$ 0Q�6N   � 5M      GradientStop_2��$ White��6>   $ .3Q�6L   � 5N      GradientStop_3��$ #0B6CCD��6>   $ .7Q�6N   5P      .+�5R      �� StackPanel_1��$��Right=�5S       �� Orientation$ 
Horizontal=�5T   	   .+�5U      �� Button_1��#��[  5V      
�������.��5W      Microsoft United States5Y      �� 5Z      TextBlock_1��$��Right=�5\      
�������$��5,0,5,0q�5^      $< 6$Content(This character is used as a decorative rule.)��5_      |5a      �� 5b      Button_2��#��[  5c      
�������.��5d      Microsoft Worldwide5f      �� 5g      TextBlock_2��$��Right=�5i      
�������$��5,0,5,0q�5k      $< 6$Content(This character is used as a decorative rule.)��5l      |5n      �� 5o      Button_3��#��[  5p      
�������.��5q      Home5s      5t      �� 5u      TextBlock_3��$
��Left=�5v      $	��300��5w   	   
�������$��Global Composite Font)�5y   	   $
��10pt(�5z   	   Saudia Arabia5|      5~      ]� 5�   
   DockPanel_3��$	��Top=�5�      $
��True��5�      ��5�      �� 5�      LinearGradientBrush_2��$	 0,0&�6D   $	 1,0&�6U   ��5�      � GradientStop_4��$ #0B6CCD��6>   $ 0Q�6N   � 5�      GradientStop_5��$ #0B6CCD��6>   $	 0.3Q�6N   � 5�      GradientStop_6��$ #ABCCED��6>   $ .5Q�6N   � 5�      GradientStop_7��$ White��6>   $ .7Q�6L   5�      .+�5�      � 
Grid_1��$��Right=�6"    � ColumnDefinitions 5�      �� 5�      ColumnDefinition_1��$
��Auto �6B   �� 5�      ColumnDefinition_2��$
��Auto �6B   �� 5�      ColumnDefinition_3��$
��Auto �6B    � RowDefinitions 5�      �� 5�      RowDefinition_1��6$   �� 5�      RowDefinition_2��6$   .+�5�      �� 	TextBox_1��$��0��5�      $��0��5�      $��2��5�      �� 5�      Button_4��$��0��5�      $��3��5�      .��6   Search5�      	� 5�      RadioButton_1��$��1��5�   !   $��0��5�       d� 	IsChecked$
 TrueY�5�      $��0,0,5,0q�5�      .��6   Microsoft.com5�      	� 5�      RadioButton_2��$��1��5�   !   $��1��5�      .��6   msn Web Search5�      5�      �� 5�      Image_1��$
��Left=�6$   $
��Left=�6:   $��microsoft_logo.png��6U   $
��None=�6q   5�      �� 5�   
   Border_4��$	��Top=�5�      
�������$��1q�5�       J� SnapsToDevicePixels$
 True��5�      ���#F1F1F1._�5�      �� StackPanel_2��$ 
Horizontal=�6.   .+�5�      �� Button_5��#��[ 6*   .��6V   Select your Location6l   �� 5�      TextBlock_4��$��Right=�5�      
�������$��5,0,5,0q�5�      $< 6$Content(This character is used as a decorative rule.)��5�      |5�      �� 5�       ��Language$ ar-sa�6V   Button_6��#��[ 6*   .��6g   
عربي6m   5�      5�      �� 5�   
   Border_5��
�������$��1,0,1,1q�5�      $
 True��5�      ��5�      �� 5�      LinearGradientBrush_3��$	 0,0&�6D   $	 0,1&�6U   ��5�      � GradientStop_8��$ White��6>   $ 0Q�6L   � 5�      GradientStop_9��$ #D9E7F7��6>   $ 1Q�6N   5�      ._�5�      �� StackPanel_3��$ Vertical=�6.   .+�5�      �� StackPanel_4��$ Vertical=�62   .+�5�      �� TextBlock_5��$
��Bold"�64   Product Families6X   �� 5�      Button_7��#��[ 6.   $��10,0,0,0q�6Z   .��6l   	Windows6u   �� 5�      Button_8��#��[ 6.   $��10,0,0,0q�6Z   .��6l   Office6t   �� 5�      Button_9��#��[ 6.   $��10,0,0,0q�6Z   .��6l   Windows Server System6�   �� 5�      	Button_10��#��[ 6/   $��10,0,0,0q�6[   .��6m   Developer Tools6~   �� 5�      	Button_11��#��[ 6/   $��10,0,0,0q�6[   .��6m   Business Solutions6�   �� 5�      	Button_12��#��[ 6/   $��10,0,0,0q�6[   .��6m   Windows Mobile6}   �� 5�      	Button_13��#��[ 6/   $��10,0,0,0q�6[   .��6m   Games6t   �� 5�      	Button_14��#��[ 6/   $��10,0,0,0q�6[   .��6m   
Hardware6w   �� 5�      	Button_15��#��[ 6/   $��10,0,0,0q�6[   .��6m   MSN Arabia Services6�   �� 5�      	Button_16��#��[ 6/   $��10,0,0,0q�6[   .��6m   Arabic Development & Support6�   5�      �� 5�      Border_6��
�������$��0,1,0,0q�5�      ._�5�      �� StackPanel_5��$ Vertical=�66   .+�5�      �� TextBlock_6��$
��Bold"�68   	Resources6U   �� 5�      	Button_17��#��[ 63   $��10,0,0,0q�6_   .��6q   Events6y   �� 5�      	Button_18��#��[ 63   $��10,0,0,0q�6_   .��6q   
Security6{   �� 5�      	Button_19��#��[ 63   $��10,0,0,0q�6_   .��6q   	Support6z   �� 5�      	Button_20��#��[ 63   $��10,0,0,0q�6_   .��6q   	Downloads6|   �� 5�      	Button_21��#��[ 63   $��10,0,0,0q�6_   .��6q   Windows Update6�   �� 5�      	Button_22��#��[ 63   $��10,0,0,0q�6_   .��6q   Communities6~   �� 5�      	Button_23��#��[ 63   $��10,0,0,0q�6_   .��6q   Learning Tools6�   �� 5�      	Button_24��#��[ 63   $��10,0,0,0q�6_   .��6q   	Licensing6|   �� 5�      	Button_25��#��[ 63   $��10,0,0,0q�6_   .��6q   	Careers6z   �� 5�      	Button_26��#��[ 63   $��10,0,0,0q�6_   .��6q   Find a Partner6�   5�      5�      5�      5�      �� 5�   
   Border_7��$��Bottom=�5�       �� Padding$ 5,5,5,5q�5�      $
 True��5�      
�������$��0,1,1,1q�5�      ���#F1F1F1._�5     � 
Grid_2�� 5     �� 5     ColumnDefinition_4��6'   �� 5     ColumnDefinition_5��6'   �� 5     ColumnDefinition_6��6'    5     �� 5     RowDefinition_3��6$   �� 5	     RowDefinition_4��6$   .+�5     �� TextBlock_7��$��0��5     $��0��5     $
��10pt(�5     Popular Destinations5     �� 5     StackPanel_6��$��1��5      $��0��5     .+�5     �� TextBlock_8��$
��10pt(�5  !   
����d�for your home5     �� 5     TextBlock_9��$��5,0,0,0q�64   �� 5     Hyperlink_1��.�6,   Windows Vista6;   5     �� 5     TextBlock_10��$��5,0,0,0q�65   �� 5     Hyperlink_2��.�6,   Windows Mobile6<   5     �� 5     TextBlock_11��$��5,0,0,0q�65   �� 5      Hyperlink_3��.�6,   
Clip Art66   5!     5"     �� 5#     StackPanel_7��$��1��5$      $��1��5%     .+�5&     �� TextBlock_12��$
��10pt(�5'  "   
����d�Business Solutions5*     �� 5+     TextBlock_13��$��5,0,0,0q�65   �� 5,     Hyperlink_4��.�6,   CRM61   5-     �� 5.     TextBlock_14��$��5,0,0,0q�65   �� 5/     Hyperlink_5��.�6,   Analytics & Reporting6G   50     �� 51     TextBlock_15��$��5,0,0,0q�65   �� 52     Hyperlink_6��.�6,   Financial management6B   53     54     �� 55     StackPanel_8��$��1��56      $��2��57     .+�58     �� TextBlock_16��$
��10pt(�59  "   
����d�
Security5<     �� 5=     TextBlock_17��$��5,0,0,0q�65   �� 5>     Hyperlink_7��.�6,   " What You Should Know About Zotob6N   5?     �� 5@     TextBlock_18��$��5,0,0,0q�65   �� 5A     Hyperlink_8��.�6,   Protect Your PC6=   5B     �� 5C     TextBlock_19��$��5,0,0,0q�65   �� 5D     Hyperlink_9��.�6,   Windows XP Service Pack 26G   5E     �� 5F     TextBlock_20��$��5,0,0,0q�65   �� 5G     Hyperlink_10��.�6-   Security Home6<   5H     5I     5J     5K     �� 5M  
   Image_2��$��	vista.jpg��6    $
��None=�63   5N     5O     