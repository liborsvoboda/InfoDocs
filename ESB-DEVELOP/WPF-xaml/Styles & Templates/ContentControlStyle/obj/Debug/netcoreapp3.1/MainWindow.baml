   M S B A M L   `   `   `  ����N  JContentControlStyle, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:ContentControlStyleContentControlStyle  5   	   $    ContentControlStyle.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:ContentControlStyle     5   	     � Title$  
MainWindow��5   	    � SizeToContent$ WidthAndHeight=�6   .��5	      �  � ShowGridLines$ false��6   
������� � ColumnDefinitions 5
   
   �� 5      $	��300 �6   �� 5      $	��250 �6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � 	Resources 5   
      ContentCtrl �� 
TargetType �� Property �� Value	 �� 
TargetType  	Template1��%  &	        &	 �    �� 5      " ��6(   .�5      ��  � ��
 �  ��6/   �� 5       � ��
 � � �6/   �� 5       � ��$ 20(�6-   �� 5        � ��$
 Bold"�6/   �� 5!       � �� 5"      �� 5#      "	 ��6*   .R�5$      � .+�5'   "   A� #��z��6*   #��z��5(      #��z��5)      �� 5*   "   $��Center=�63   $��Center=�5+   %   5,      5-      5/      50      �� 52      .R�53      �� $��12(�6-   $
��Bold"�6;   $
��Wrap=�6M   ��6   �� 6M   54      56      .+�58   
   �� $��10, 10, 3, 3q�6   $��0��6*   $��0��6:   $��2��6G   $��24(�6[   Using ContentControls6�   �� 5:   
   $��10, 10, 3, 3q�6   $��0��6&   $��2��66   .��5;      �� $��75��6   #��[  6(   $��Hello��5<      5=      �� 5>   
   $��10, 10, 3, 3q�6   $��1��6*   $��2��6:   $��14(�6G   $��WrapWithOverflow=�6U   igThis example demonstrates how to enhance the visual appearance of a ContentControl by applying a style.5A      �� 5E   
   $��10, 10, 3, 3q�6   $��0��6&   $��3��66   
����ح�.��5G      �� -   5        $��contCtrl��5G      #��[ 6-   $1��+This is the content of the content control.��5H      5I      �� 5J   
   -   5        $
��btn2��5J      $��10, 10, 3, 3q�6   $��0��63   $��4��6C   
����ح�.��5K      �� $
��Wrap=�6   SQClick the button to see if the content control above the button contains content.5M      5N      �� 5O   
   $��10, 10, 3, 3q�6   $��1��6*   $��3��6:   $��14(�6G   $��WrapWithOverflow=�6U   ~|This example demonstrates how to create and use a ContentTemplate and how to determine whether the control contains content.6�   5Q      5S      