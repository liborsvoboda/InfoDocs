   M S B A M L   `   `   `  ����J  FDialogBoxSample, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:SDKSample	SDKSample  5           SDKSample.MarginsDialogBox   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      )localclr-namespace:SDKSample     5        � Title$  Margins��5      $	��190��5      $	��300��5      $��10��5	      $	��300��5
       � 
ResizeMode$ CanResizeWithGrip=�5       � ShowInTaskbar .   � WindowStartupLocation$ CenterOwner=�5       +� FocusedElement 5      ��  �� ElementName$ leftMarginTextBox��.��5      �  � 	Resources 5       �� 
TargetType �� Property	 �� Value
 �� Triggers P� Property P� Value �� RelativeSource �� Path��%�  '�       '�� H     '�� �     '�� �    '�� 5    �� 5      " �6   .�5   
   ��  � ��$	 10q�6#   5   	   �� 5      " ��6   .�5   
   ��  � ��$	 0,3,5,5q�6#   �� 5   
    � ��$	 0,0,0,5q�6$   5   	   �� 5      " ��6   .�5   
   ��  � ��$	 0,0,0,5q�6#   
 5   
   P� 5       �@=�HasError . . �5      ��  �@�ToolTip	 6(   ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5      5    	   �� 5!      " ��6   .�5"   
   ��  �@��Orientation$	 
Horizontal=�6(   �� 5#   
    � ��$	 Right=�60   5$   	   �� 5%      " ��6   .�5&   
   ��  � ��$	 70��6"   �� 5'   
    � ��$	 25��6#   �� 5(   
    � ��$	 5,0,0,0q�6#   5)   	   5*       � ColumnDefinitions 5,      �� 5-      $
��Auto �6   �� 5.       � RowDefinitions 51      �� 52      $
��Auto �6   �� 53      $
��Auto �6   �� 54      $
��Auto �6   �� 55      $
��Auto �6   �� 56      $
��Auto �6   �� 57      .+�5;      �� $��0��6   $��0��6   .��6)   Left Margin:67   �� 5<      -   5        $��leftMarginTextBox��5<      $��1��6'   $��0��67   .��6D   ��5=      �� 5>   
   $
 Left�6    �� UpdateSourceTrigger$ PropertyChanged=�6    �� ValidationRules 5?      $   SDKSample.MarginValidationRule  5@         	MinMargin$ 0Q�6)      	MaxMargin$ 10Q�67   5B      .��5C      5D      �� 5G      $��0��6   $��1��6   .��6)   Top Margin:66   �� 5H      -   5        $��topMarginTextBox��5H      $��1��6&   $��1��66   .��6C   ��5I      �� 5J   
   $	 Top�6   $ PropertyChanged=�6    5K        5L      $ 0Q�6)   $ 10Q�67   5N      .��5O      5P      �� 5S      $��0��6   $��2��6   .��6)   Right Margin:68   �� 5T      -   5        $��rightMarginTextBox��5T      $��1��6(   $��2��68   .��6E   ��5U      �� 5V   
   $ Right�6   $ PropertyChanged=�6    5W        5X      $ 0Q�6)   $ 10Q�67   5Z      .��5[      5\      �� 5_      $��0��6   $��3��6   .��6)   Bottom Margin:69   �� 5`      -   5        $��bottomMarginTextBox��5`      $��1��6)   $��3��69   .��6F   ��5a      �� 5b   
   $ Bottom�6   $ PropertyChanged=�6     5c        5d      $ 0Q�6)   $ 10Q�67   5f      .��5g      5h      �� 5k      $��0��6   $��2��6!   $��4��65   .+�5l      �� -   5        $��okButton��5l       �� 	IsDefault . .��6G   OK6K   �� 5m      -   5        $��cancelButton��5m       �� IsCancel . .��63   Cancel6;   5n      5o      5p      