   M S B A M L   `   `   `  ����  InkCanvasBinding    InkCanvasBinding.Window2   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � Title$(  "InkCanvasBinding - topic snippents��5      $	��300��60   $	��300��6=    � WindowState$ 	Maximized=�5      .��5      ��  � 	Resources 5      �� 5         KeyMyDrawingAttributes   �� Type*  $System.Windows.Ink.DrawingAttributes"  6,   .s�5   
        Color$ Black��6      
FitToCurve .    Width$ 3Q�6<      Height$ 3Q�6F     5   
   $
 Blue��6    .  $ 5Q�6=   $ 5Q�6G     5   
   $	 Red��6    . $ 7Q�6<   $ 7Q�6F   5   	   �� 5       �� DataType"  6   .R�5   
   �� $��80��6   ��6   �� 	 �� Path$	 Height���5      �� 5      
 �� Color
 6   �� $	 Color�5      5   	   .+�5      �� -   5        $��ic��5!   )    �� 
Background
 �����
 �� Top$ 0��5        �� Left$ 0��6   $	��400��5!      $	��200��6   6)   �� 5%      
 ��ح�$ 0��5&      $	 200��6   $	��400��5'      $	��200��6    �� Strokes 5(      ��  �� ElementName$ ic��$	 Strokes� � LayoutTransform 5)      �� 5*   
    �� ScaleX$ -1Q�6    �� ScaleY$ 1Q�6%   5,      �� 52      -   5        $��
inkCanvas1��52      
 ����$	 400��53      $ 0��6!   $	��400��54      $	��400��6    �� DefaultDrawingAttributes 55      �� $ lbDrawingAttributes��$	 SelectedItem�58      �� 5;      -   5        $��lbDrawingAttributes��5;      $	 400��5<      $	 450��6   $	��100��5=      $	��100��6     MyDrawingAttributes#��[ 5>      5F      5G      