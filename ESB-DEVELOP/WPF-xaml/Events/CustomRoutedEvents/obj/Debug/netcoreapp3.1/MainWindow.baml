   M S B A M L   `   `   `  ����M  ICustomRoutedEvents, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CustomRoutedEventsCustomRoutedEvents  5   	   #    CustomRoutedEvents.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:CustomRoutedEvents     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � 	Resources 5	      '   !CustomRoutedEvents.MyButtonSimple �� 
TargetType �� Property �� Value��%�   '        �� 5
   
   "  6   .�5      ��  � ��$ 20��6'   �� 5       � ��$	 250��6&   �� 5       � ��$
 Left=�64   �� 5       � �� �#8080806+   5      5      .��5      �� $��Center=�6   $��Center=�6,   
�������.+�5   
     -   5          Name$ mybtnsimple��5      '   !CustomRoutedEvents.MyButtonSimple
   Tap$ 
TapHandler��64   .��6E   $"Click to see Tap custom event work6i   5      5      