   M S B A M L   `   `   `  ����  Concepts    Guide.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          N� WindowTitle$5  /Windows Presentation Foundation Samples Gallery��5   	    N� 
Background0 �)sc#1.000000, 0.769689, 0.831936, 1.000000.��5      �  � 	Resources 5   
      XamlDefault � XPath��%�  &	        � 5	   
   $ InitialSyntax��6.   .��5
      ��<InitialSyntax xmlns="">
              <Syntax>
                <![CDATA[
<Border Background="LightSkyBlue" HorizontalAlignment="Center" VerticalAlignment="Center" CornerRadius="10" Padding="10" BorderBrush="Black" BorderThickness="4" xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml">
    <StackPanel>
        <TextBlock FontSize="12">Welcome to XAMLPad! Input XAML in the TextBox to change the rendered output.</TextBlock>
    </StackPanel>
</Border>]]>
              </Syntax>
            </InitialSyntax>        5      5       � RowDefinitions 5      �� 5   
   $��* �6   �� 5   
   $��30 �6   .+�5   
   �� $��1��6   $��5q�6!     MainContentStyle#��[ 6.   53© Microsoft Corporation 2005. All rights reserved.6�   �� 5   
   -   5        $��TabControl1��5      $��Stretch=�6(   $��Stretch=�6F   $��0,10,0,0q�6b   0���)sc#1.000000, 0.769689, 0.831936, 1.000000.@�5      �� $��XAMLPad��6   $��10,0,0,0q�6'   ��5      � 5       $��
20,20,20,0q�6    5!      �� 5"      -   5         ��Name$ 
PreviewRow��5"   4   $��* �6(   64   �� 5#      -   5        $ CodeRow��5#   7   $
��0.5* �6(   67   �� 5$      -   5        $ 	ButtonRow��5$   5   $��40 �6(   65   .+�5&      �� 
������� �� RadiusX$ 14��61    �� RadiusY$ 14��6>   $��0,0,0,8q�6K    �� StrokeDashArray$ 2R�6\   � 5'      -   5        $��cc��5'      $��0��6)   $��0,0,0,8q�66   $
}�True��6G   �� 5(      $��16��6$   $��bottom=�60   ��5)      
� 5*   "   ��5,   *   � � 5-   .   	 � Color$/	 )sc#0.300000, 0.000000, 0.000000, 0.000000��6;   
 � Offset$
 0.019230769230769232Q�6m   � 5.   .   $	 	#FFFFFFFF��6;   $
 1Q�6M   5/   +    �� RelativeTransform 51   &   V� 52   *   ~�54   2   X� T� 55   6    T� X$ -0.0052816901408450721Q�6I    T� Y$ 0.5185185185185186Q�6d   56   3   58   +   5:   #   5<      �� 5=      -   5        $��TextBox1��5=   "   $��0,20,0,0q�6T   $ �� HorizontalScrollBarVisibility$
 Auto=�6g   " �� VerticalScrollBarVisibility$
 Auto=�6�   $��Consolas)�6�   $
��12pt(�6�   
������ $��1��6�    �� 
AcceptsTab$
 True��6�    �� AcceptsReturn$
 True��6   � DataContext 6$  ��  �� Source# [   �� XPath$ /InitialSyntax����6v  �� $ Syntax���� 5>      -   5        $��	ErrorText��5>   $   $��
100,5,60,0q�65   $��WordEllipsis=�6I   
���  ��$
��10pt(�6v   $
��bold"�6�   5?      5A      �� 5B      -	   5        $��TabItem1��5B      $��Samples��6&    �� 
IsSelected$
 True��67   ��5C      � 5D      0���)sc#1.000000, 0.769689, 0.831936, 1.000000 � ColumnDefinitions 5E      �� 5F      $	��250 �6+   �� 5G      $��* �6+   .+�5I      �� 
�������$ 14��61   $ 14��6>   $��10q�6K   $��2��6W   0���)sc#1.000000, 0.250141, 0.333404, 0.884413$ 2R�6�   � 5J      $��20q�6   .+�5K      �� $��7q�6(   1���*sc#1.000000, 0.769689,  0.831936, 1.000000$ 10��6e   $ 10��6r   0���)sc#1.000000, 0.250141, 0.333404, 0.884413$ 2R�6�    � 5L   "   -
   5        $��frame1��5L   (     � Source$ TOC.xaml?�66   $��15q�6H   5M      � 5N      $��1��6   .+�5O      �� $��20q�6)   .+�5P   "   ��  �� Orientation$ 
Horizontal=�6-   $��right=�6F   .+�5Q   &   �� -   5        $��myCombo��5Q   O    �� 
IsEditable$ False��6/   $��10q�6C   .@�5R   *   �� -   5        $��cbItem5��5R   7   .��6F   Show All (no filtering)6_   �� 5S   *   -   5        $��cbItem1��5S   7   .��6F   XAML6L   �� 5T   *   -   5        $��cbItem6��5T   7   .��6F   	XAML + C#6Q   �� 5U   *   -   5        $��cbItem7��5U   7   .��6F   XAML + Visual Basic.NET6_   �� 5V   *   -   5        $��cbItem2��5V   7   .��6F   C#6J   �� 5W   *   -   5        $��cbItem3��5W   7   .��6F   Visual Basic.NET6X   �� 5X   *   -   5        $��cbItem4��5X   7   .��6F   Managed C++6S   5Y   '   �� 5[   &   -   5        $	��tb1��5[   0   $y�	collapsed=�6;   #��[ 6S   $��10��6}   5\   #    � 5]   "   -   5        $��frame2��5]   c   $��Stretch=�6(   $��Stretch=�6F   $ welcome.xaml?�6q   5^      5_      5`      5b      5c      5d      5e      