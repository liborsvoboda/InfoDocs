   M S B A M L   `   `   `  ����R  NBusinessLayerValidation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:BusinessLayerValidationBusinessLayerValidation  5   	   (    "BusinessLayerValidation.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:BusinessLayerValidation     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � 	Resources 5	      $   BusinessLayerValidation.Person   Data  TextBoxInError �� 
TargetType �� Triggers P� Property P� Value �� Property �� Value �� Self	 �� RelativeSource
 �� Path��%�   &	        &	        5
   
   6   �� 5   
   " ��6'    5      P� 5       �@=�HasError$
 true��69   . �5      ��  �@�ToolTip 5      �� #	 Z $)
 #(Validation.Errors)[0].ErrorContent�5      5      5      .��5      �� $��20q�6   .+�5   
   �� Enter your age:6%   �� 5   
   #��[ 6   .��6:   ��5      �� 5       $	
 Age�6    �� Source# [  6%    �� ValidatesOnExceptions$
 True��5!       �� UpdateSourceTrigger$ PropertyChanged=�5"       �� ValidationRules 5#      5  /System.Windows.Controls.DataErrorValidationRule  5'      5)      .��5*      5+      �� 5,   
   1/Mouse-over to see the validation error message.6E   5-      5.      