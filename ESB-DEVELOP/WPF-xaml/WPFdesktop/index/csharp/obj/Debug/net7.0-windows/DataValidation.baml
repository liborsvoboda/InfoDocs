   M S B A M L   `   `   `  ����C  ?bindings, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:bindingsbindings  5   	   #clr-namespace:bindingsbindings  5   	       bindings.DataValidation   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:bindings     5   	   &srcclr-namespace:bindings     5   	     � Title$  DataValidation��5	   	   $	��450��6    $	��800��6-    � 	Resources 5
         validationTemplate  textStyleTextBox �� 
TargetType �� Property �� Value �� Triggers P� Property P� Value �� RelativeSource   bindings.DateConverter  dateConverter   bindings.AuctionItem  item��%  &	        &	 r     &	 �    &	 �    �� 5   
   .R�5      ]� .+�5      �� 
���  ��$��20(�6-   !6>   �� 5      5      5      �� 5   
   " ��6)   .�5      ��  � �� �#3333336+   �� 5       �@��	MaxLength$ 40��6*   �� 5       � ��$	 392��6&    5      P� 5       �@=�HasError$
 true��69   . �5      ��  �@�ToolTip 5      �� *.,(Validation.Errors).CurrentItem.ErrorContent+ �� *Self+5      5        5    
   6     5!   
   6   5"      .��5$      � 	 � DataContext#	 [ 6   
 � RowDefinitions
 5%   
   �� 5&      $
��Auto �6   �� 5'      $
��Auto �6   �� 5(      $
��Auto �6   �� 5)      $
��Auto �6    � ColumnDefinitions 5+   
   �� 5-      $
��779* �6   �� 5.      $	��21* �6   .+�53   
   �� -   5        $��StartPriceEntryForm��53      $��2��6-   #��[ 54      $��8,5,0,5q�6<   $��2��6M   .��6a   ��55      �� 56       �� Path$ 
StartPrice�6    �� UpdateSourceTrigger$ PropertyChanged=�6,    �� ValidationRules 57      5  /System.Windows.Controls.ExceptionValidationRule  58      5:      .��5;      5<      �� 5@   
   -   5        $��StartDateEntryForm��5@      $��3��6,    =� ErrorTemplate# [  5A      #��[ 5B      $��8,5,0,5q�6<   $��2��6M   .��6a   ��5C      �� 5D      $ 	StartDate�6   $ PropertyChanged=�6+    �� 	Converter# [ 5E       5F         bindings.FutureDateRule  5G      5I      .��5J      5K      5N      5O      