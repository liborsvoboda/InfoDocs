   M S B A M L   `   `   `  ����F  BUsingSpeech, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:UsingSpeechUsingSpeech  5   	       UsingSpeech.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:UsingSpeech     5   	     � Title$  
MainWindow��5   	    � SizeToContent$ WidthAndHeight=�6   .��5	      � .+�5
   
   �� .+�5      � $
��10pxq�6    � RowDefinitions 5      �� 5      $��* �6$   �� 5      $��* �6$   �� 5      $��* �6$   �� 5      $��* �6$   �� 5      $��* �6$   �� 5      $��* �6$   �� 5      $��* �6$   �� 5      $��* �6$    � ColumnDefinitions 5      �� 5      $	��100 �6'   �� 5      $��* �6'   .+�5      �� $��0��6   $��0��6(   .��65   Sample string:6E   �� 5      -   5        $��TextToDisplay��5(   	   $��1��5    	   $��0��6   $
��Left=�5!   	    �� TextWrapping$
 Wrap=�5"   	    �� AcceptsReturn . " �� VerticalScrollBarVisibility$ Visible=�5$   	   $��12(�5%   	   $	��100��5&   	   $	��400��5'   	   .��5(      Hello, world!6-   �� 5+      $��0��6   $��1��6(   .��65   Volume (%):6B   �� 5,      -   5        $��VolumeSlider��5,      $��1��6-   $��1��6=    � Value$ 50Q�6J    � Minimum$ 0Q�6U   	 � Maximum$		 100Q�6a   
 �� TickFrequency$
 5Q�6o   6�   �� 5/      $��0��6   $��2��6(   .��65   Speaking rate:6E   �� 50      -   5        $��
RateSlider��50      $��1��6+   $��2��6;   $ -1Q�6H   $ -5Q�6S   $	 7Q�6`   $
 1Q�6l   6~   �� 53      -   5        $��1��53      $��3��6)   .��6P   Echo Textbox6^   �� 54      -   5        $��1��54      $��4��6)   .��6P   
Say Date6Z   �� 55      -   5        $��1��55      $��5��6)   .��6P   
Say Time6Z   �� 56      -   5        $��1��56      $��6��6)   .��6P   
Say Name6Z   �� 58      -   5        $��
DebugLabel��58      $��0��6*   $��7��6:   5:      5;      5<      5=      