   M S B A M L   `   `   `  ����  	DialogBox    DialogBox.FindDialogBox   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � Title$
  Find��5      $	��350��5      $	��100��5      $	��350��5       � SizeToContent$ Height=�5	       � ShowInTaskbar$ False��5
       � 
ResizeMode$ CanResizeWithGrip=�5       � WindowStartupLocation$ CenterOwner=�5       +� FocusedElement 5      ��  �� ElementName$ findWhatTextBox��.��5      �  � ColumnDefinitions 5      �� 5      $��10 �6   �� 5      $
��Auto �6   �� 5      �� 5      $��10 �6   �� 5      $
��Auto �6   �� 5      $��10 �6    � RowDefinitions 5      �� 5      $��10 �6   �� 5      $
��Auto �6   �� 5      $��5 �6   �� 5      $
��Auto �6   �� 5      $��5 �6   �� 5      $
��Auto �6   �� 5      �� 5       $��10 �6   .+�5$      �� $��1��6   $��1��6   .��6)   _Find What:66   �� 5%      -   5        $��findWhatTextBox��5%      $��2��6%   $��1��65   6B   �� 5(      -   5        $��caseSensitiveCheckBox��5(      $��1��6,   $��3��6<   $��2��6I   $��5,0,0,0q�6t   	 d� 	IsChecked$
	 TrueY�6�   .��6�   Match case?6�   �� 5+      -   5        $��matchWholeWordCheckBox��5+      $��1��6-   $��5��6=   $��2��6J   $��5,0,0,0q�6u   $
	 TrueY�6�   .��6�   Match whole word?6�   �� 5.      $��4��6   $��1��6!   $��6��6.   .+�5/      �� -   5        $��findNextButton��5/      $��25��6%   $��70��61   
 �� 	IsDefault$

 True��6Y   $��0,0,0,5q�6j   .��6{   	Find Next6�   �� 50      -   5        $��closeButton��50      $��25��6"   $��70��6.    �� IsCancel$
 True��6S   .��6c   Close6j   51      53      54      