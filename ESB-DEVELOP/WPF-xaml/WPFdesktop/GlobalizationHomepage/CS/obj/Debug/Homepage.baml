   M S B A M L   `   `   `  ����   MicrosoftSaudiArabiaHomepage+    %MicrosoftSaudiArabiaHomepage.Homepage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N�Language$  en-US�5      
Page_1��$��LeftToRight=�5       �� Comments$S MFlowDirection(This FlowDirection controls the actual content of the homepage)��5      .��5	      ]� DockPanel_1��$	��800��6"   $	��600��6.   ��.  � 	Resources 5
         TopbarButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType ��Name �� Triggers	 P� Property
 P� Value �� 
TargetName  SidebarButtonStyle  GraybarButtonStyle��%�  &	        &	 +    &	 V    �� 5      Style_1��" ��68   .�5   
   �� Setter_1�� �@�Cursor$
 Hand��64   �� 5   
   Setter_2�� � �� 5      �� 5      ControlTemplate_1��" ��68   .R�5      �� $ Border��6(   Border_1��$��1q�68   ._�5      �� ContentPresenter_1��6#   5       5      P� 5      	Trigger_1��	 �@J�IsMouseOver
 . . �5      �� Setter_3��$ Border��6,    � ��
 �����6W   �� 5      Setter_4��$ Border��6,    � �� �#4B92D96V   5      5      5      5   	   �� 5      Style_2��" ��69   .�5   
   �� Setter_5�� �@�Cursor$
 Hand��64   �� 5   
   Setter_6�� � �� 5       �� 5!      ControlTemplate_2��" ��68   .R�5"      �� $ Border��6(   Border_2��$��1q�68   ._�5#      �� ContentPresenter_2��6#   5$       5%      P� 5&      	Trigger_2��	 �@J�IsMouseOver
 . . �5'      �� Setter_7��$ Border��6,    � ��
 �����6W   �� 5(      Setter_8��$ Border��6,    � �� �#F1F1F16V   5)      5+      5-      5.   	   �� 5/      Style_3��" ��69   .�50   
   �� Setter_9�� �@�Cursor$
 Hand��64   �� 51   
   	Setter_10�� � �� 52      �� 53      ControlTemplate_3��" ��68   .R�54      �� $ Border��6(   Border_3��$��1q�68   ���#F1F1F1._�55      �� ContentPresenter_3��6#   56       57      P� 58      	Trigger_3��	 �@J�IsMouseOver
 . . �59      �� 	Setter_11��$ Border��6-    � ��
 �����6X   �� 5:      	Setter_12��$ Border��6-    � ��
 �����6W   5;      5=      5?      5@   	   5A      .+�5C      ]� DockPanel_2��$	��Top=�5D      ��. ��5F      �� 5G   
   LinearGradientBrush_1�� �� 
StartPoint$	 0,0&�6<    �� EndPoint$	 1,0&�6M   ��5I      � GradientStop_1�� � Color$ #4B92D9��62    � Offset$ 0Q�6B   � 5J      GradientStop_2��$ White��62   $ .3Q�6@   � 5K      GradientStop_3��$ #0B6CCD��62   $ .7Q�6B   5M      .+�5O      �� StackPanel_1��$��Right=�5P       �� Orientation$ 
Horizontal=�5Q   	   .+�5R   
   �� Button_1��#��[  5S      
�������.��5T      Microsoft United States5V      �� 5X   
   TextBlock_1��$��Right=�5Z      
�������$��5,0,5,0q�5\      $� �$Content(This is a comment on the TextBlock's content.)              Margin(This is a comment on the TextBlock's Margin property.)��5]      |5`      �� 5b   
   Button_2��#��[  5c      
�������.��5d      Microsoft Worldwide5f      �� 5h   
   TextBlock_2��$��Right=�5j      
�������$��5,0,5,0q�5l      $< 6$Content(This character is used as a decorative rule.)��5m      |5o      �� 5q   
   Button_3��#��[  5r      
�������.��5s      Home5u      5v   	   �� 5w      TextBlock_3��$
��Left=�5x      $	��300��5y   	   
�������$��Global Composite Font)�5{   	   $
��10pt(�5|   	   Saudia Arabia5~   	   5�      ]� 5�      DockPanel_3��$	��Top=�5�      ��. ��5�      �� 5�   
   LinearGradientBrush_2��$	 0,0&�6<   $	 1,0&�6M   ��5�      � GradientStop_4��$ #0B6CCD��62   $ 0Q�6B   � 5�      GradientStop_5��$ #0B6CCD��62   $	 0.3Q�6B   � 5�      GradientStop_6��$ #ABCCED��62   $ .5Q�6B   � 5�      GradientStop_7��$ White��62   $ .7Q�6@   5�      .+�5�      � 
Grid_1��$��Right=�6    � ColumnDefinitions 5�   
   �� 5�      ColumnDefinition_1��$
��Auto �68   �� 5�      ColumnDefinition_2��$
��Auto �68   �� 5�      ColumnDefinition_3��$
��Auto �68    � RowDefinitions 5�   
   �� 5�      RowDefinition_1��6   �� 5�      RowDefinition_2��6   .+�5�   
   �� 	TextBox_1��$��0��5�      $��0��5�      $��2��5�      �� 5�   
   Button_4��$��0��5�      $��3��5�      .��6   Search5�      	� 5�   
   RadioButton_1��$��1��5�   !   $��0��5�       d� 	IsChecked$
 TrueY�5�      $��0,0,5,0q�5�      .��6   Microsoft.com5�      	� 5�   
   RadioButton_2��$��1��5�   !   $��1��5�      .��6   msn Web Search5�      5�   	   �� 5�      Image_1��$
��Left=�6   $
��Left=�64   $��microsoft_logo.png��6O   $
��None=�6k   5�      �� 5�      Border_4��$	��Top=�5�      
�������$��1q�5�       J� SnapsToDevicePixels . ���#F1F1F1._�5�      �� StackPanel_2��$ 
Horizontal=�6(   .+�5�   
   �� Button_5��#��[ 6"   .��6N   Select your Location6d   �� 5�   
   TextBlock_4��$��Right=�5�      
�������$��5,0,5,0q�5�      $< 6$Content(This character is used as a decorative rule.)��5�      |5�      �� 5�   
    ��Language$ ar-sa�6N   Button_6��#��[ 6"   .��6_   
عربي6e   5�   	   5�      �� 5�      Border_5��
�������$��1,0,1,1q�5�       . ��5�      �� 5�   
   LinearGradientBrush_3��$	 0,0&�6<   $	 0,1&�6M   ��5�      � GradientStop_8��$ White��62   $ 0Q�6@   � 5�      GradientStop_9��$ #D9E7F7��62   $ 1Q�6B   5�      ._�5�      �� StackPanel_3��$ Vertical=�6(   .+�5�   
   �� StackPanel_4��$ Vertical=�6*   .+�5�      �� TextBlock_5��$
��Bold"�6*   Product Families6N   �� 5�      Button_7��#��[ 6$   $��10,0,0,0q�6P   .��6b   	Windows6k   �� 5�      Button_8��#��[ 6$   $��10,0,0,0q�6P   .��6b   Office6j   �� 5�      Button_9��#��[ 6$   $��10,0,0,0q�6P   .��6b   Windows Server System6y   �� 5�      	Button_10��#��[ 6%   $��10,0,0,0q�6Q   .��6c   Developer Tools6t   �� 5�      	Button_11��#��[ 6%   $��10,0,0,0q�6Q   .��6c   Business Solutions6w   �� 5�      	Button_12��#��[ 6%   $��10,0,0,0q�6Q   .��6c   Windows Mobile6s   �� 5�      	Button_13��#��[ 6%   $��10,0,0,0q�6Q   .��6c   Games6j   �� 5�      	Button_14��#��[ 6%   $��10,0,0,0q�6Q   .��6c   
Hardware6m   �� 5�      	Button_15��#��[ 6%   $��10,0,0,0q�6Q   .��6c   MSN Arabia Services6x   �� 5�      	Button_16��#��[ 6%   $��10,0,0,0q�6Q   .��6c   Arabic Development & Support6�   5�      �� 5�   
   Border_6��
�������$��0,1,0,0q�5�      ._�5�      �� StackPanel_5��$ Vertical=�6,   .+�5�      �� TextBlock_6��$
��Bold"�6,   	Resources6I   �� 5�      	Button_17��#��[ 6'   $��10,0,0,0q�6S   .��6e   Events6m   �� 5�      	Button_18��#��[ 6'   $��10,0,0,0q�6S   .��6e   
Security6o   �� 5�      	Button_19��#��[ 6'   $��10,0,0,0q�6S   .��6e   	Support6n   �� 5�      	Button_20��#��[ 6'   $��10,0,0,0q�6S   .��6e   	Downloads6p   �� 5�      	Button_21��#��[ 6'   $��10,0,0,0q�6S   .��6e   Windows Update6u   �� 5�      	Button_22��#��[ 6'   $��10,0,0,0q�6S   .��6e   Communities6r   �� 5�      	Button_23��#��[ 6'   $��10,0,0,0q�6S   .��6e   Learning Tools6u   �� 5�      	Button_24��#��[ 6'   $��10,0,0,0q�6S   .��6e   	Licensing6p   �� 5�      	Button_25��#��[ 6'   $��10,0,0,0q�6S   .��6e   	Careers6n   �� 5�      	Button_26��#��[ 6'   $��10,0,0,0q�6S   .��6e   Find a Partner6u   5�      5�      5�   	   5�      �� 5�      Border_7��$��Bottom=�5�       �� Padding$ 5,5,5,5q�5�       . 
�������$��0,1,1,1q�5     ���#F1F1F1._�5     � 
Grid_2�� 5  
   �� 5     ColumnDefinition_4��6   �� 5     ColumnDefinition_5��6   �� 5     ColumnDefinition_6��6    5	  
   �� 5
     RowDefinition_3��6   �� 5     RowDefinition_4��6   .+�5  
   �� TextBlock_7��$��0��5     $��0��5     $
��10pt(�5     Popular Destinations5     �� 5  
   StackPanel_6��$��1��5      $��0��5     .+�5     �� TextBlock_8��$
��10pt(�5  !   
����d�for your home5     �� 5     TextBlock_9��$��5,0,0,0q�6*   �� 5     Hyperlink_1��.�6,   Windows Vista6;   5     �� 5     TextBlock_10��$��5,0,0,0q�6+   �� 5     Hyperlink_2��.�6,   Windows Mobile6<   5      �� 5!     TextBlock_11��$��5,0,0,0q�6+   �� 5"     Hyperlink_3��.�6,   
Clip Art66   5#     5$     �� 5%  
   StackPanel_7��$��1��5&      $��1��5'     .+�5(     �� TextBlock_12��$
��10pt(�5)  "   
����d�Business Solutions5,     �� 5-     TextBlock_13��$��5,0,0,0q�6+   �� 5.     Hyperlink_4��.�6,   CRM61   5/     �� 50     TextBlock_14��$��5,0,0,0q�6+   �� 51     Hyperlink_5��.�6,   Analytics & Reporting6G   52     �� 53     TextBlock_15��$��5,0,0,0q�6+   �� 54     Hyperlink_6��.�6,   Financial management6B   55     56     �� 57  
   StackPanel_8��$��1��58      $��2��59     .+�5:     �� TextBlock_16��$
��10pt(�5;  "   
����d�
Security5>     �� 5?     TextBlock_17��$��5,0,0,0q�6+   �� 5@     Hyperlink_7��.�6,   " What You Should Know About Zotob6N   5A     �� 5B     TextBlock_18��$��5,0,0,0q�6+   �� 5C     Hyperlink_8��.�6,   Protect Your PC6=   5D     �� 5E     TextBlock_19��$��5,0,0,0q�6+   �� 5F     Hyperlink_9��.�6,   Windows XP Service Pack 26G   5G     �� 5H     TextBlock_20��$��5,0,0,0q�6+   �� 5I     Hyperlink_10��.�6-   Security Home6<   5J     5K     5L  	   5M     �� 5O     Image_2��$��	vista.jpg��6   $
��None=�6/   5P     5Q     