   M S B A M L   `   `   `  ����  Concepts    DockPanel_Samp.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  DockPanel Sample��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��DockPanel Element��64    �� 
IsSelected$
 true��6O   .��5	      �� .+�5
      ��   HeaderStyle#��[ 6   DockPanel Element Sample6W   �� 5        MainContentStyle#��[ 6   ��DockPanel defines an area within which you can arrange child elements either horizontally or vertically, relative to each other.6�   5      5      �� 5      -   5        $
��xaml��5      #��[  6   $
��XAML��6A   .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6D     CodeSnippetParagraph#��[ 6   .��6Y   ��
    <DockPanel>
        <Border Height="25" Background="SkyBlue" BorderBrush="Black" BorderThickness="1" DockPanel.Dock="Top">
            <TextBlock Foreground="black">Dock = "Top"</TextBlock>
        </Border>
        <Border Height="25" Background="SkyBlue" BorderBrush="Black" BorderThickness="1" DockPanel.Dock="Top">
            <TextBlock Foreground="black">Dock = "Top"</TextBlock>
        </Border>
        <Border Height="25" Background="#ffff99" BorderBrush="Black" BorderThickness="1" DockPanel.Dock="Bottom">
            <TextBlock Foreground="black">Dock = "Bottom"</TextBlock>
        </Border>
        <Border Width="200" Background="PaleGreen" BorderBrush="Black" BorderThickness="1" DockPanel.Dock="Left">
            <TextBlock Foreground="black">Dock = "Left"</TextBlock>
        </Border>
        <Border Background="White" BorderBrush="Black" BorderThickness="1">
            <TextBlock Foreground="black">This content fills the remaining, unallocated space.</TextBlock>
        </Border>
    </DockPanel>
    5&      5'      5(      5)      �� 5*      -   5        $��
xamlcsharp��5*      #��[  6%   $��	XAML + C#��6G   .��5+      ��  �� TabStripPlacement$ Right=�6   .@�5,      �� -   5        $��xcsharpCheck��5,        	TabStyle2#��[ 6.   $
��XAML��6Q   �� 5-      #��[ 6   $��C#��6=   5.      5/      �� 51      -   5        $��xamlvb��51      #��[  6!   $��XAML + Visual Basic.NET��6C   .��52      �� $ Right=�6   .@�53      �� -   5        $��xvbCheck��53      #��[ 6*   $
��XAML��6M   �� 54      #��[ 6   $��VB.NET��6=   55      56      �� 58   
   -   5        $��csharp��58      #��[  6    $��C#��6B   �� 5:      -	   5        $��vb��5:      #��[  6   $��Visual Basic.NET��6:   �� 5<      -
   5        $��
managedcpp��5<      #��[  6    $��Managed C++��6B   �� 5>      #��[  6   $��Preview Sample��60   .��5?      ]� .+�5@   
   �� $��25��6   
����·�
���   �$��1q�6F   $	��Top=�6Z   ._�5A      �� 
���   �Dock = "Top"69   5B      �� 5C   
   $��25��6   
����·�
���   �$��1q�6F   $	��Top=�6Z   ._�5D      �� 
���   �Dock = "Top"69   5E      �� 5F   
   $��25��6   ���#ffff99
���   �$��1q�6F   $��Bottom=�6Z   ._�5G      �� 
���   �Dock = "Bottom"6<   5H      �� 5I   
   $	��200��6   
�������
���   �$��1q�6H   $
��Left=�6\   ._�5J      �� 
���   �Dock = "Left"6:   5K      �� 5L   
   
�������
���   �$��1q�68   ._�5M      �� 
���   �64This content fills the remaining, unallocated space.6a   5N      5O      5Q      5R      5S      