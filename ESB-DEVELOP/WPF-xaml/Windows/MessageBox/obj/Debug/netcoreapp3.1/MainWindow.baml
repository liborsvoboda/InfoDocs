   M S B A M L   `   `   `  ����E  AMessageBox, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:MessageBox
MessageBox  5   	       MessageBox.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:MessageBox     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)   .��5	      �  � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��0��6   $��0��6    .��6-   Associate with Owner Window?6K   �� 5   
   -   5        $��ownerCheckBox��5   0   $��1��6   $��0��6#   60   �� 5   
   $��0��6   $��1��6    .��6-   messageBoxText:6>   �� 5   
   -   5        $��messageBoxText��5   /   $��1��6   $��1��6"   .��6F   MessageBoxText6V   �� 5!   
   $��0��6   $��2��6    .��6-   
caption:67   �� 5"   
   -   5        $��caption��5"   /   $��1��6   $��2��6"   .��6>   	Caption6G   �� 5$   
   $��0��6   $��3��6    .��6-   	button:66   �� 5%   
   -   5        $��buttonComboBox��5%   0   $��1��6   $��3��6#   .@�5&      ��  �� 
IsSelected$
 True��6   .��6-   OK61   �� 5'      .��6   
OKCancel6%   �� 5(      .��6   YesNo6"   �� 5)      .��6   YesNoCancel6(   5*      �� 5,   
   $��0��6   $��4��6    .��6-   icon:64   �� 5-   
   -   5        $��imageComboBox��5-   0   $��1��6   $��4��6#   .@�5.      �� .��6   
Asterisk6%   �� 5/      .��6   Error6"   �� 50      .��6   Exclamation6(   �� 51      .��6   Hand6!   �� 52      .��6   Information6(   �� 53      $
 True��6   .��6-   None63   �� 54      .��6   
Question6%   �� 55      .��6   Stop6!   �� 56      .��6   	Warning6$   57      �� 59   
   $��0��6   $��5��6    .��6-   defaultResult:6=   �� 5:   
   -   5        $��defaultResultComboBox��5:   0   $��1��6   $��5��6#   .@�5;      �� .��6   Cancel6#   �� 5<      .��6   No6   �� 5=      $
 True��6   .��6-   None63   �� 5>      .��6   OK6   �� 5?      .��6   Yes6    5@      �� 5B   
   $��0��6   $��6��6    .��6-   	options66   �� 5C   
   -   5        $��optionsComboBox��5C   0   $��1��6   $��6��6#   .@�5D      �� .��6   DefaultDesktopOnly6/   �� 5E      $
 True��6   .��6-   None63   �� 5F      .��6   
RightAlign6'   �� 5G      .��6   
RtlReading6'   �� 5H      .��6   ServiceNotification60   5I      �� 5K   
   -   5        $��showMessageBoxButton��5K   .   $��1��6   $��7��6!   .��6m   Show MessageBox6~   �� 5M   
   $��0��6   $��2��6$   $��8��68   .@�5N      �� .��5O      �� -	   5        $��resultTextBlock��5O      Ready6:   5P      5Q      5R      5S      