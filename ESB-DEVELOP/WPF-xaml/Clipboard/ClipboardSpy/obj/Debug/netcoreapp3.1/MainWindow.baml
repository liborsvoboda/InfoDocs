   M S B A M L   `   `   `  ����G  CClipboardSpy, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ClipboardSpyClipboardSpy  5   	       ClipboardSpy.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:ClipboardSpy     5   	   -   5          � Title$  
MainWindow��5	   	   $	��350��6   $	��525��6)   .��5
      �  � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      .+�5   
   �� ._�5      �� .+�5      �� -   5        $��Get Clipboard Contents��5      $��5q�5      �� 5      �� 5       �� Orientation$ 
Horizontal=�5      .+�5      �� -   5        $��cbContainsAudio��5      ${�False��5        d� 	IsChecked$ FalseY�5!      $��Center=�5"      $��Center=�5#      $��4q�5$      $��0,0,0,0q�5%      �� 5'      .��6   ContainsAudio6+   5(      �� 5)      $ 
Horizontal=�5*      .+�5,      �� -   5        $��cbContainsFileDropList��5-      ${�False��5.      $ FalseY�5/      $��Center=�50      $��Center=�51      $��4q�52      $��0,0,0,0q�53      �� 55      .��6   ContainsFileDropList62   56      �� 57      $ 
Horizontal=�58      .+�5:      �� -   5        $��cbContainsImage��5;      ${�False��5<      $ FalseY�5=      $��Center=�5>      $��Center=�5?      $��4q�5@      $��0,0,0,0q�5A      �� 5C      .��6   ContainsImage6+   5D      �� 5E      $ 
Horizontal=�5F      .+�5H      �� -   5        $��cbContainsText��5I      ${�False��5J      $ FalseY�5K      $��Center=�5L      $��Center=�5M      $��4q�5N      $��0,0,0,0q�5O      �� 5Q      .��6   ContainsText6*   5R      �� 5T      -   5        $��Check Clipboard��5U      $��5q�5W      �� 5Z      $��5q�6   �� 5\      -   5        $��Clear Clipboard Contents��5]      $��5q�5_      5b      5c      �� 5e   
   $��1��5f      
���   �$��1q�5h      ._�5j      �  � RowDefinitions 5l      �� 5m      $
��Auto �6$   �� 5n      .+�5p      �� $��0��6   .��6%   Clipboard Status Information5r      �� 5s      -	   5        $��tbInfo��5t   	    �� 
IsReadOnly$
 True��5u   	    �� AcceptsReturn$
 True��5v   	   " �� VerticalScrollBarVisibility$
 Auto=�5w   	   $ �� HorizontalScrollBarVisibility$
 Auto=�5x   	   $��1��5y   	   5{      5|      5      5�      