   M S B A M L   `   `   `  ����  Concepts    Scrollviewer_Samp.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  ScrollViewer Sample��5      .��5      �� $
��Left=�6   $	��Top=�6(   .+�5      �� $	��500��6   $	��400��6!   $	��600��60   $	��800��6@   .@�5   
   ��    TabStyle#��[  6   $��ScrollViewer Element��64    �� 
IsSelected$
 true��6R   .��5	      �� .+�5
      ��   HeaderStyle#��[ 6   ScrollViewer Element Sample6Z   �� 5        MainContentStyle#��[ 6   ��ScrollViewer represents a scrollable area that can contain other visible elements. The ScrollViewer element encapsulates a content element and possibly up to two ScrollBar controls.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6D     CodeSnippetParagraph#��[ 6   .��6Y   ��
<ScrollViewer>
    <StackPanel VerticalAlignment="Top" HorizontalAlignment="Left">
        <TextBlock TextWrapping="Wrap" Margin="0,0,0,20">Scrolling is
        enabled when it is necessary.</TextBlock>
        <Rectangle Fill="Red" Width="400" Height="800"></Rectangle>
    </StackPanel>
</ScrollViewer>
            5      5      5      5      �� 5      -   5        $��
xamlcsharp��5      #��[  6%   $��	XAML + C#��6G   .��5       ��  �� TabStripPlacement$ Right=�6   .@�5!      �� -   5        $��xcsharpCheck��5!        	TabStyle2#��[ 6.   $
��XAML��6Q   �� 5"      #��[ 6   $��C#��6=   5#      5$      �� 5&      -   5        $��xamlvb��5&      #��[  6!   $��XAML + Visual Basic.NET��6C   .��5'      �� $ Right=�6   .@�5(      �� -   5        $��xvbCheck��5(      #��[ 6*   $
��XAML��6M   �� 5)      #��[ 6   $��VB.NET��6=   5*      5+      �� 5-   
   -   5        $��csharp��5-      #��[  6    $��C#��6B   �� 5/   
   -	   5        $��vb��5/      #��[  6   $��Visual Basic.NET��6>   �� 51   
   -
   5        $��
managedcpp��51      #��[  6$   $��Managed C++��6F   �� 53   
   #��[  6   $��Preview Sample��64   .��54      �� .��55      �� $	��Top=�6   $
��Left=�6)   .+�56   
   �� $
��Wrap=�6   $��0,0,0,20q�6(   ,*Scrolling is enabled when it is necessary.57   (   �� 58   
   
���  ��$	��400��6   $	��800��6+   59      5:      5;      5<      5=      5@      