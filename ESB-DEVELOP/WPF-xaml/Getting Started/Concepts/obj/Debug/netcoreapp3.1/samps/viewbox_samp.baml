   M S B A M L   `   `   `  ����  Concepts    Viewbox_Samp.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Viewbox Sample��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Viewbox Element��64    �� 
IsSelected$
 True��6M   .��5	      �� .+�5
      ��   HeaderStyle#��[ 6   Viewbox Element Sample6U   �� 5        MainContentStyle#��[ 6   qoViewbox is a content decorator, wherein a single child can be stretched and scaled to fill the available space.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6D     CodeSnippetParagraph#��[ 6   .��6Y   ��
    <StackPanel HorizontalAlignment="Center" VerticalAlignment="Center">
        <Viewbox MaxWidth="500" MaxHeight="500" Name="vb1">
            <Image Stretch="None"><Image.Source><BitmapImage UriSource="\images\tulip_farm.jpg"/></Image.Source></Image>
        </Viewbox>    
    </StackPanel>
    5      5      5      �� 5      -   5        $��
xamlcsharp��5      #��[  6%   $��	XAML + C#��6G   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6.   $
��XAML��6Q   �� 5      #��[ 6   $��C#��6=   5      5       �� 5"      -   5        $��xamlvb��5"      #��[  6!   $��XAML + Visual Basic.NET��6C   .��5#      �� $ Right=�6   .@�5$      �� -   5        $��xvbCheck��5$      #��[ 6*   $
��XAML��6M   �� 5%      #��[ 6   $��VB.NET��6=   5&      5'      �� 5)   
   -   5        $��csharp��5)      #��[  6    $��C#��6B   �� 5+      -	   5        $��vb��5+      #��[  6   $��Visual Basic.NET��6:   �� 5-      -
   5        $��
managedcpp��5-      #��[  6    $��Managed C++��6B   �� 5/      #��[  6   $��Preview Sample��60   .��51      �� $��Center=�6   $��Center=�6.   .+�52   
   (� $	��500��6   $	��500��6!    (� StretchDirection$
 Both=�61    (� Stretch$ Uniform=�6I   .��53      �� $
��None=�6   ��6$   �� 62    �� 	UriSource$ \images\tulip_farm.jpg?�6>   6s   54      55      57      58      5:      