   M S B A M L   `   `   `  ����Q  MGlobalizationRunDialog, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:GlobalizationRunDialogGlobalizationRunDialog  5   	   '    !GlobalizationRunDialog.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:GlobalizationRunDialog     5   	     �Language$  en-US�5
   	    � Title$	 Run��5       � 
ResizeMode$ NoResize=�5	   	    � SizeToContent$ WidthAndHeight=�5
   	   .��5      � 
Grid_1�����#E1E0E5 � IsSharedSizeScope$
 True��5       � ColumnDefinitions 5   
   �� 5      ColumnDefinition_1��6   �� 5      ColumnDefinition_2��6   �� 5      ColumnDefinition_3�� z� SharedSizeGroup$ Buttons��6:   �� 5      ColumnDefinition_4��$ Buttons��6:   �� 5      ColumnDefinition_5��$ Buttons��6:    � RowDefinitions 5   
   �� 5      RowDefinition_1��6   �� 5      RowDefinition_2��6   �� 5      RowDefinition_3��6   .+�5   
   �� Image_1��$��0��5      $��0��5      $
��None=�5       $
��Left=�5!      $��10,0,0,0q�5"      $��RunIcon.JPG��5#      �� 5$   
   TextBlock_1��$��0��5%      $��1��5&      $��4��5'      $
��Left=�5(      $��Center=�5)      $
��Wrap=�5*      $��3.0 in��5+      $��10,10,10,10q�5,      geType the name of a program, folder, document, or Internet resource, and Windows will open it for you.5.      �� 5/   
   TextBlock_2��$��1��50      $��0��51      $��10,0,0,0q�52      $��Center=�53      Open:55      �� 56   
   
ComboBox_1��$��1��57      $��1��58      $��4��59      $
��Left=�5:      $��3.0 in��5;      $��10,10,10,10q�5<      �� 5=   
   Button_1��$��2��5>      $��2��5?      $��	3,10,3,15q�5@      $��3,0,3,0q�5A      .��6   OK5C      �� 5D   
   Button_2��$��2��5E      $��3��5F      $��	3,10,3,15q�5G      $��3,0,3,0q�5H      .��6   Cancel5J      �� 5K   
   Button_3��$��2��5L      $��4��5M      $��	3,10,3,15q�5N      $��3,0,3,0q�5O      .��6   	Browse...5Q      5R      5S      