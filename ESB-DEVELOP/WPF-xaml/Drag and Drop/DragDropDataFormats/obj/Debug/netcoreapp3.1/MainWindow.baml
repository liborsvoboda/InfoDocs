   M S B A M L   `   `   `  ����N  JDragDropDataFormats, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:DragDropDataFormatsDragDropDataFormats  5   	   $    DragDropDataFormats.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:DragDropDataFormats     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $��30 �6   �� 5      $��50 �6   �� 5      $��* �6   .+�5   
   �� $��0��5   	   $��0��6    �� Orientation$ 
Horizontal=�5   	   .+�5      �� -   5        $��btClear��5      $��Clear Format Info��6-    � ToolTip$5 /Click to clear the contents of the drop window.��5      $��5q�5      $��Center=�6   �� 5      -   5        $��cbAutoConvert��5      $� �Check this checkbox to include non-native data formats that data in the dropped object can be auto-converted to.  Clear this checkbox to only show native data-formats.��5      $+��%Include Auto-convertable Data Formats��5       d� 	IsChecked$
 TrueY�5      $��5q�6   $��Center=�6'   5      �� 5!   
   -   5        $��lblEventSelectionTitle��5"   	   $��0��5#   	   $��1��6   ���	#CC0088FF$
��Bold"�5$       $
��Wrap=�62   ��Drop text or other content from another application (i.e. highlighted content from an HTML or Word file) into the TextBox below to display data formats present in the dropped content.5(      �� 5)   
   -   5        $��tbDropTarget��5*   	   $��0��5+   	   $��2��6   $� �Drop text or other content from another application (i.e. highlighted content from an HTML or Word file)          into the TextBox below to display data formats present in the dropped content.��5,   	    �� AcceptsReturn$
 True��5.   	    �� 
AcceptsTab$
 True��6   " �� VerticalScrollBarVisibility$
 Auto=�60   $|�False��6S    J� 	AllowDrop$
 True��5/   	   	 �� TextWrapping$
	 Wrap=�6   51   	   53      54      