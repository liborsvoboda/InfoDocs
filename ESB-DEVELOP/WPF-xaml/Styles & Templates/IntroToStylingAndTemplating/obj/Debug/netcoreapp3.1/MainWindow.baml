   M S B A M L   `   `   `  ����V  RIntroToStylingAndTemplating, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:IntroToStylingAndTemplatingIntroToStylingAndTemplating  5   	   ,    &IntroToStylingAndTemplating.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:IntroToStylingAndTemplating     5   	   -   5          � Title$  Style Intro Sample��5   	    � SizeToContent$ WidthAndHeight=�6:    � 	Resources 5	         MyPhotos S� 
ObjectType+   %IntroToStylingAndTemplating.PhotoList �� 
TargetType �� Property �� Value �� BasedOn  	TitleText �� 
StartPoint	 �� EndPoint
 � Offset � Color �� 
TargetType �� CornerRadius �� Orientation K� IsItemsHost �� DataType'   !IntroToStylingAndTemplating.Photo �� Triggers P� Property P� Value :� RoutedEvent g� Duration �� TargetProperty	 W� To��%3  &	        '��      &	 �     7��'�� �    (�� 
    5:      *, +)'�� |    S� 5
   
   "  5      �� 5   
   " ��6   .�5      ��  � ��$ Center=�64   �� 5       � ��$ Comic Sans MS)�6+   �� 5       � ��$ 14(�6)   5      �� 5   
   8   " ��5      .�5      ��  � ��$ 26(�6)   �� 5       � �� 5      �� 5      $ 0.5,0&�6*   $	 0.5,1&�6=   ��5      � $	
 0.0Q�6+   $ #90DDDD��68   � 5      $	
 1.0Q�6+   $ #5BFFFF��68   5!      5#      5$      �� 5'   
   " ��6   .�5(      ��  � �� 5)      �� 5*      " ��6&   .R�5+      �� $ 5��6!   #��z��62   ._�5,      �� $
��Auto=�6+   .��5-   "   �� $ 
Horizontal=�6-   $��Center=�5.      $��Center=�5/      $
 True��50      51      52      53      55      56      �� 5:   
   "  6   .R�5;      �� $��3q�6   ._�5<      �� ��6   �� *Source+5=      5>      �� 5@   
   " ��6   .�5A      ��  �@J�Opacity$	 0.5Q�6(   �� 5B       � ��$ 75��6*    5C      P� 5D       �@��
IsSelected$
 True��60    �5E      �� 5F       �@J�Opacity$	 1.0Q�64   5H      :� 5I      $ Mouse.MouseEnter��6   [�5J      �� 5K      .��5L      �� .��5M   "   W� $ 0:0:0.2D�5N      $ 	MaxHeight�5O       905P      5Q      5R      5T      :� 5U      $ Mouse.MouseLeave��6   [�5V      �� 5W      .��5X      �� .��5Y   "   W� $ 0:0:1D�5Z      $ 	MaxHeight�5[      5\      5]      5_      5a      5c      .��5d      �� $��10q�6   .+�5e   
   �� -   5        $��
textblock1��5e   7   #��[ 6   My Pictures6V   �� 5f   
   Check out my new pictures!60   �� 5h   
   
�������$	��600��5i   $   $��10q�60    �� SelectedIndex$ 0��6<   ��5h      ��  �� Source# [  5i   <   5j      5k      