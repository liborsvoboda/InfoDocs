   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� WindowTitle$  Animate within a Style��5       � 	Resources 5       �� 
TargetType   MyButtonStyle �� Property �� Value �� Color �� Triggers :� RoutedEvent �� TargetProperty	 W� From	
 W� To g� Duration g� AutoReverse g� RepeatBehavior �� From	 �� To��%F  &	        �� 5      " ��6   .�5      ��  � �� 5   
   �� 5      $ Orange��6   5   	    5      :� 5   
   $ Button.MouseEnter��6   [�5      �� 5      .��5      �� .��5      W� $ (Button.Opacity)�5      	 1.05      
 0.56   $ 0:0:0.5D�6'   $
 True��6:   $ Forever��5      5      5      5      :� 5"   
   $ Button.MouseLeave��6   [�5#      �� 5$      .��5%      �� .��5&      W� $ (Button.Opacity)�5'      
 15(      $ 0:0:0.1D�6   5)      5*      5,      :� 53   
   $ Button.Click��6   [�54      �� 55      .��56      �� .��57      �� $1 +(Button.Background).(SolidColorBrush.Color)�58      
 Orange59      	 White6!   $ 0:0:0.1D�6,   $
 True��6?   5:      5;      5=      5?      5@      .��5D      �� 
�������._�5E      �� $��30q�6   $
��Left=�6   $	��500��68   .+�5H      �� #��[  5I   	   $��Click Me��5J   	   5L      5M      5N      