   M S B A M L   `   `   `  ����I  ECustomComboBox, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:CustomComboBoxCustomComboBox  5   	   E'clr-namespace:CustomComboBox.ConvertersCustomComboBox.Converters  5   	       CustomComboBox.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:CustomComboBox     5   	   >
converters'clr-namespace:CustomComboBox.Converters     5   	     � WindowStartupLocation$  CenterScreen=�5       � Title$ 
MainWindow��5	   	   $	��350��6   $	��525��6)    � DataContext 5
      (  "CustomComboBox.MainWindowViewModel  5   
    � 	Resources 5      ?  9CustomComboBox.Converters.StringToStringAndColorConverter   stringConverter��%   &	          5   
   65   5      .��5      � .+�5   
     CustomComboBox.DropList  $��	Watch Now��6      SubTitle$ Movie: ��6-   $
��Bold"�5      $��Center=�5      $	��Top=�6;     DropListStyle#��[ 5        MovieItemContainerStyle   ItemContainerStyle# [ 5         DisplayMemberPath$ Title��5      $��False��5         ItemsSource 5      �� *Movies+   Command 6=   �� *
OnWatchNow+5      �� 5   
   	 �� Orientation$	 
Horizontal=�6   $��Center=�6.   $��Center=�6I   .+�5      �� -   5          streamingTextStyle#���  5   �   4  .System.Windows.Automation.AutomationProperties
   LiveSetting$
 	Assertive=�6�   ��6   �� *SelectedMovie+ �� 	Converter# [   �� ConverterParameter$
 text�� �� NotifyOnTargetUpdated$
 True��6�   �� 5      -   5        $��Center=�5   S   $
 	Assertive=�6�   ��6   �� *SelectedMovie+$
 True��6�   5      5      5      