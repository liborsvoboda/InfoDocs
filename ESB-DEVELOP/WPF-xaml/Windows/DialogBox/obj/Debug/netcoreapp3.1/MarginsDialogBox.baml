   M S B A M L   `   `   `  ����D  @DialogBox, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:DialogBox	DialogBox  5           DialogBox.MarginsDialogBox   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      )localclr-namespace:DialogBox     5        � Title$  Margins��5      $	��190��5      $	��300��5      $��10��5	      $	��300��5
       � 
ResizeMode$ CanResizeWithGrip=�5       � ShowInTaskbar$ False��5       � WindowStartupLocation$ CenterOwner=�5       +� FocusedElement 5      ��  �� ElementName$ leftMarginTextBox��.��5      �  � 	Resources 5       �� 
TargetType �� Property	 �� Value
 �� Triggers P� Property P� Value �� RelativeSource �� Path��%  '�       '�� H     '�� �     '�� �    '�� >    �� 5      " �6   .�5   
   ��  � ��$	 10q�6#   5   	   �� 5      " ��6   .�5   
   ��  � ��$	 0,3,5,5q�6#   �� 5   
    � ��$	 0,0,0,5q�6$   5   	   �� 5      " ��6   .�5   
   ��  � ��$	 0,0,0,5q�6#   
 5   
   P� 5       �@=�HasError$
 true��63   . �5      ��  �@�ToolTip	 6(   ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5      5!   	   �� 5"      " ��6   .�5#   
   ��  �@��Orientation$	 
Horizontal=�6(   �� 5$   
    � ��$	 Right=�60   5%   	   �� 5&      " ��6   .�5'   
   ��  � ��$	 70��6"   �� 5(   
    � ��$	 25��6#   �� 5)   
    � ��$	 5,0,0,0q�6#   5*   	   5+       � ColumnDefinitions 5-      �� 5.      $
��Auto �6   �� 5/       � RowDefinitions 52      �� 53      $
��Auto �6   �� 54      $
��Auto �6   �� 55      $
��Auto �6   �� 56      $
��Auto �6   �� 57      $
��Auto �6   �� 58      .+�5<      �� $��0��6   $��0��6   .��6)   Left Margin:67   �� 5=      -   5        $��leftMarginTextBox��5=      $��1��6'   $��0��67   .��6D   ��5>      �� 5?   
   $
 Left�6    �� UpdateSourceTrigger$ PropertyChanged=�6    �� ValidationRules 5@      $   DialogBox.MarginValidationRule  5A         	MinMargin$ 0Q�6)      	MaxMargin$ 10Q�67   5C      .��5D      5E      �� 5H      $��0��6   $��1��6   .��6)   Top Margin:66   �� 5I      -   5        $��topMarginTextBox��5I      $��1��6&   $��1��66   .��6C   ��5J      �� 5K   
   $	 Top�6   $ PropertyChanged=�6    5L        5M      $ 0Q�6)   $ 10Q�67   5O      .��5P      5Q      �� 5T      $��0��6   $��2��6   .��6)   Right Margin:68   �� 5U      -   5        $��rightMarginTextBox��5U      $��1��6(   $��2��68   .��6E   ��5V      �� 5W   
   $ Right�6   $ PropertyChanged=�6    5X        5Y      $ 0Q�6)   $ 10Q�67   5[      .��5\      5]      �� 5`      $��0��6   $��3��6   .��6)   Bottom Margin:69   �� 5a      -   5        $��bottomMarginTextBox��5a      $��1��6)   $��3��69   .��6F   ��5b      �� 5c   
   $ Bottom�6   $ PropertyChanged=�6     5d        5e      $ 0Q�6)   $ 10Q�67   5g      .��5h      5i      �� 5l      $��0��6   $��2��6!   $��4��65   .+�5m      �� -   5        $��okButton��5m       �� 	IsDefault$
 True��66   .��6G   OK6K   �� 5n      -   5        $��cancelButton��5n       �� IsCancel$
 True��6#   .��63   Cancel6;   5o      5q      5s      