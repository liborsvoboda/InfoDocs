   M S B A M L   `   `   `  ����  InkCanvasBinding    InkCanvasBinding.Window1   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � Title$(  "InkCanvasBinding - complete sample��5      $	��300��60   $	��300��6=    � WindowState$ 	Maximized=�5      .��5	      ��  � 	Resources 5
      �� 5         KeyMyEditingModes   �� Type2  ,System.Windows.Controls.InkCanvasEditingMode"  6'   .s�5   
   ��  �� Member$ InkCanvasEditingMode.Ink��6   �� 5   
   $! InkCanvasEditingMode.Select��6   �� 5   
   $' !InkCanvasEditingMode.EraseByPoint��6   �� 5   
   $( "InkCanvasEditingMode.EraseByStroke��6   5   	   �� 5      MyDrawingAttributes  *  $System.Windows.Ink.DrawingAttributes"  5      .s�5   
        Color$ Black��6      
FitToCurve .    Width$ 3Q�5         Height$ 3Q�6&     5   
   $
 Blue��6    .  $ 5Q�5      $ 5Q�6&     5   
   $	 Red��6    . $ 7Q�5      $ 7Q�6&   5   	   �� 5       	 �� DataType"	  6   .R�5!   
   �� $��80��6   ��6   �� 
 �� Path$
 Height���5"      �� 5#       �� Color 6   �� $
 Color�5%      5&   	   .+�5,      �� -   5        $��ic��5,       �� 
Background
 �����
 �� Top$ 0��5-       �� Left$ 0��6   $	��400��5.      $	��200��6    �� DefaultDrawingAttributes 5/      ��  �� ElementName$ lbDrawingAttributes��$
 SelectedItem� �� EditingMode 51      �� $ lbEditingMode��$
 SelectedItem�54      �� 58      
 ��ح�$ 0��59      $	 200��6   $	��400��5:      $	��200��6    �� Strokes 5;      �� $ ic��$
 Strokes� 5<      �� $ ic��$
 DefaultDrawingAttributes� 5>      �� $ ic��$
 EditingMode� � LayoutTransform 5@      �� 5A   
    �� ScaleX$ -1Q�6    �� ScaleY$ 1Q�6%   5D      �� 5G      -   5        $��lbEditingMode��5G      $ 0��5H      $	 450��6   $	��100��5I      $	��100��6     MyEditingModes#��[ 5J      �� 5M      -   5        $��lbDrawingAttributes��5M      $	 150��5N      $	 450��6   $	��100��5O      $	��100��6     MyDrawingAttributes#��[ 5P      5R      5T      