   M S B A M L   `   `   `  ����D  @Callbacks, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Callbacks	Callbacks  5   	       Callbacks.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Callbacks     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � 	Resources 5	         Callbacks.Gauge �� 
TargetType �� Property �� Value �� 
TargetType �� Target �� ElementName �� Orientation	 �� Orientation
 � Maximum �� RelativeSource �� Path � Value � Minimum   ChaserGauge �� Mode��%W  '        &	  �    �� 5
   
   "  6   .�5      ��  � �� 5      �� 5      "  6&   .R�5      �� .+�5      ��  6$   �� $ MinReadingSlider��.��6T   
MinReading6`   �� 5      $ 
Horizontal=�6)   $	��500��6B   .+�5   "   �� 06/   �� 5   "   $��MinReadingSlider��65   $	��300��6)   $	 
Horizontal=�6M   
 6f   ��  �� *TemplatedParent+$ 
MaxReading� 6�   ��  �� *TemplatedParent+$ 
MinReading��� 5   "   10061   5      �� 5      
���  ����69   ��  �� *TemplatedParent+$ 
MinReading��� 5       6$   �� $ CurrentSlider��.��6Q   CurrentReading"6b   �� 5      $	��500��6)   $ 
Horizontal=�65   .+�5   "   �� ��6,   ��  �� *TemplatedParent+$ 
MinReading��� 5   "   $��CurrentSlider��65   $	��300��6)   $	 
Horizontal=�6J    6c   ��  �� *TemplatedParent+$ 
MinReading�
 6�   ��  �� *TemplatedParent+$ 
MaxReading� 6  ��  �� *TemplatedParent+$ CurrentReading��� 5   "   ��6,   ��  �� *TemplatedParent+$ 
MaxReading�5      �� 5      
���  ����69   ��  �� *TemplatedParent+$ CurrentReading��� 5       6$   �� $ MinReadingSlider��.��6T   
MaxReading6`   �� 5      $	��500��6)   $ 
Horizontal=�66   .+�5   "   �� 06/   �� 5    "   $��MaxReadingSlider��65   $	��300��6)   $	 
Horizontal=�6M   $	
 100Q�6�    6f   ��  �� *TemplatedParent+$ 
MinReading� 6�   ��  �� *TemplatedParent+$ 
MaxReading��� 5!   "   10061   5"      �� 5#      
���  ����69   ��  �� *TemplatedParent+$ 
MaxReading�5$      5%      5'      5(      �� 5)   
   "  6$   .�5*      ��  � �� 5+      �� 5,      "  6&   .R�5-      �� .+�5.      ��  6$   �� $ MinReadingSlider��.��6T   
MinReading6`   �� 5/      $��MinReadingSlider��6%   $	 
Horizontal=�6=   $	
 100Q�6V    6d   ��  �� *TemplatedParent+$ 
MinReading�$ TwoWay=��� 50      
���  ����6=   ��  �� *TemplatedParent+$ 
MinReading�$ TwoWay=��� 51       6$   �� $ CurrentReadingSlider��.��6X   CurrentReading6h   �� 52      $��CurrentReadingSlider��6%   $	 
Horizontal=�6A   $	
 100Q�6Z    6h   ��  �� *TemplatedParent+$ CurrentReading�$ TwoWay=��� 53      
���  ����6=   ��  �� *TemplatedParent+$ CurrentReading�$ TwoWay=��� 54       6$   �� $ MaxReadingSlider��.��6T   
MaxReading6`   �� 55      $��MaxReadingSlider��6%   $	 
Horizontal=�6=   $	
 100Q�6V    6d   ��  �� *TemplatedParent+$ 
MaxReading�$ TwoWay=��� 56      
���  ����6=   ��  �� *TemplatedParent+$ 
MaxReading�$ TwoWay=�57      58      5:      5;      5<      .��5=      �� .+�5>   
   �� 
���  ��$��1q�6#   ._�5?        -   5          Name$ 	MainGauge��5?      $	��200��6-   $	��400��6:      
MaxReading$ 80Q�6F      
MinReading$ 20Q�6V      CurrentReading$ 30Q�6f   5@      �� 5A   
   
��� � �$��1q�6%   ._�5B        -   5        $ ChaserGauge��5B   S   #��[  6   
��� ���$	��200��6h   $	��400��6u   $ 80Q�6�   $ 20Q�6�   $ 30Q�6�   5C      5D      5E      