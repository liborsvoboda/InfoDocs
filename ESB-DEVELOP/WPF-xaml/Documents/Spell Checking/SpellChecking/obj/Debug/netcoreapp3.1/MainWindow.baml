   M S B A M L   `   `   `  ����H  DSpellChecking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:SpellCheckingSpellChecking  5   	       SpellChecking.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:SpellChecking     5   	     � Title$  Spell Checking Sample��5   	   $	��450��6'   $	��800��64    � 	Resources 5	       �� 
TargetType �� Property �� Value��%~   '��       �� 5
   
   " ��6   .�5      ��  � ��
 �����6+   �� 5       � ��$ DemiBold"�6+   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $	��25* �6   �� 5      $
��Auto �6   �� 5      $	��25* �6   �� 5      $	��30* �6   .+�5   
   �� $��0��6   $��TextBox��6   �� 5   
   $��1��6    �� 	IsEnabled$
 True��6   .��6;   This is a mispeled word.6U   �� 5   
   $��2��6   $��RichTextBox��6   �� 5   
   $��3��6   $
 true��6#    �� AcceptsReturn$
 True��6?    �5      /� 5      .T�5      J� .*�6    .*�5      ��  ��Language$ en-us�6/   $
��Bold"�.�6A   
Mispeled6K    �� 5       $ en-us�6   .�6/   word in English6A   �� 5!      �� 5"      $ it-it�6/   $
��Bold"�.�6A   Erratd6I    �� 5#      $ it-it�6   .�6/   parola in italiano6D   5$      5%      5'      � 5)   
   $��4��6   	 � ColumnDefinitions	 5*      �� 5+      $��* �6#   �� 5,      $��* �6#   .+�5/      � $��0��6    50      �� 51      $
��Auto �6$   �� 52      $
��Auto �6$   	 54      �� 55      $
��Auto �6'   �� 56      $��* �6'   .+�59      �� $��0��6   $��0��6%   $*��$Check word for spelling-suggestions:��65   �� 5:      -   5        
 ��Name$
 
txtBoxWord��5:   7   $��0��6   $��1��6'   $
 true��6K   �� 5;      -   5        $��1��5;      $��1��6&   $��Check��66   6F   5<      � 5=      $��1��6    5>      �� 5?      $
��Auto �6$   �� 5@      $��* �6$   .+�5B      �� $��0��6   $��Suggestions��6%   �� 5C      -   5         ��Name$ lbSuggestions��5C   '   $��1��6   $��Visible=�6>   5D      5F      5G      5H      