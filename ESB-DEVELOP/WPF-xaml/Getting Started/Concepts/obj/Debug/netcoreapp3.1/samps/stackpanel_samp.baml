   M S B A M L   `   `   `  ����  Concepts    StackPanel_Samp.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  StackPanel Sample��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��StackPanel Element��64    �� 
IsSelected$
 true��6P   .��5	      �� .+�5
      ��   HeaderStyle#��[ 6   StackPanel Element Sample6X   �� 5        MainContentStyle#��[ 6   hfStackPanel arranges child elements into a single line that can be oriented horizontally or vertically.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6D     CodeSnippetParagraph#��[ 6   .��6Y   ��
    <StackPanel>
        <Border Background="SkyBlue" BorderBrush="Black" BorderThickness="1">
            <TextBlock Foreground="black" FontSize="12">Stacked Item #1</TextBlock>
        </Border>
        <Border Width="400" Background="CadetBlue" BorderBrush="Black" BorderThickness="1">
            <TextBlock Foreground="black" FontSize="14">Stacked Item #2</TextBlock>
        </Border>
        <Border Background="#ffff99" BorderBrush="Black" BorderThickness="1">
            <TextBlock Foreground="black" FontSize="16">Stacked Item #3</TextBlock>
        </Border>
        <Border Width="200" Background="PaleGreen" BorderBrush="Black" BorderThickness="1">
            <TextBlock Foreground="black" FontSize="18">Stacked Item #4</TextBlock>
        </Border>
        <Border Background="White" BorderBrush="Black" BorderThickness="1">
            <TextBlock Foreground="black" FontSize="20">Stacked Item #5</TextBlock>
        </Border>
    </StackPanel>
            5%      5&      5'      5(      �� 5)      -   5        $��
xamlcsharp��5)      #��[  6%   $��	XAML + C#��6G   .��5*      ��  �� TabStripPlacement$ Right=�6   .@�5+      �� -   5        $��xcsharpCheck��5+        	TabStyle2#��[ 6.   $
��XAML��6Q   �� 5,      #��[ 6   $��C#��6=   5-      5.      �� 50      -   5        $��xamlvb��50      #��[  6!   $��XAML + Visual Basic.NET��6C   .��51      �� $ Right=�6   .@�52      �� -   5        $��xvbCheck��52      #��[ 6*   $
��XAML��6M   �� 53      #��[ 6   $��VB.NET��6=   54      55      �� 57   
   -   5        $��csharp��57      #��[  6    $��C#��6B   �� 59      -	   5        $��vb��59      #��[  6   $��Visual Basic.NET��6:   �� 5;      -
   5        $��
managedcpp��5;      #��[  6    $��Managed C++��6B   �� 5=      #��[  6   $��Preview Sample��60   .��5>      �� .+�5?   
   �� 
����·�
���   �$��1q�6:   ._�5@      �� 
���   �$��12(�6+   Stacked Item #16J   5A      �� 5B   
   $	��400��6   
�����_�
���   �$��1q�6H   ._�5C      �� 
���   �$��14(�6+   Stacked Item #26J   5D      �� 5E   
   ���#ffff99
���   �$��1q�6:   ._�5F      �� 
���   �$��16(�6+   Stacked Item #36J   5G      �� 5H   
   $	��200��6   
�������
���   �$��1q�6H   ._�5I      �� 
���   �$��18(�6+   Stacked Item #46J   5J      �� 5K   
   
�������
���   �$��1q�68   ._�5L      �� 
���   �$��20(�6+   Stacked Item #56J   5M      5N      5P      5Q      5R      