   M S B A M L   `   `   `  ����  Concepts    Canvas_Samp.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Canvas Sample��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Canvas Element��64    �� 
IsSelected$
 true��6L   .��5	      �� .+�5
      ��   HeaderStyle#��[ 6   Canvas Element Sample6T   �� 5        MainContentStyle#��[ 6   |zCanvas defines an area within which you can explicitly position child elements by coordinates relative to the Canvas area.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6D     CodeSnippetParagraph#��[ 6   .��6Y   ��
    <Canvas Height="400" Width="400">  
        <Canvas Height="100" Width="100"  Top="0" Left="0">  
            <Rectangle Width="100" Height="100" Fill="red"/>   
        </Canvas>
        <Canvas Height="100" Width="100" Top="100" Left="100">
            <Rectangle Width="100" Height="100" Fill="green"/>  
        </Canvas>
        <Canvas Height="100" Width="100" Top="50" Left="50">
            <Rectangle Width="100" Height="100" Fill="blue"/>  
        </Canvas>    
    </Canvas>
                5       5!      5"      5#      �� 5$      -   5        $��
xamlcsharp��5$      #��[  6%   $��	XAML + C#��6G   .��5%      ��  �� TabStripPlacement$ Right=�6   .@�5&      �� -   5        $��xcsharpCheck��5&        	TabStyle2#��[ 6.   $
��XAML��6Q   �� 5'      #��[ 6   $��C#��6=   5(      5)      �� 5+      -   5        $��xamlvb��5+      #��[  6!   $��XAML + Visual Basic.NET��6C   .��5,      �� $ Right=�6   .@�5-      �� -   5        $��xvbCheck��5-      #��[ 6*   $
��XAML��6M   �� 5.      #��[ 6   $��VB.NET��6=   5/      50      �� 52   
   -   5        $��csharp��52      #��[  6    $��C#��6B   �� 54      -	   5        $��vb��54      #��[  6   $��Visual Basic.NET��6:   �� 56      -
   5        $��
managedcpp��56      #��[  6    $��Managed C++��6B   �� 58      #��[  6   $��Preview Sample��60   .��59      �� $	��400��6   $	��400��6   .+�5:   
   �� $	��100��6   $	��100��6   
 �� Top$ 0��6+    �� Left$ 0��63   .+�5;      �� $	��100��6   $	��100��6$   
���  ��61   5<      �� 5=   
   $	��100��6   $	��100��6   $	 100��6*   $	 100��64   .+�5>      �� $	��100��6   $	��100��6$   
��� � �61   5?      �� 5@   
   $	��100��6   $	��100��6   $ 50��6*   $ 50��63   .+�5A      �� $	��100��6   $	��100��6$   
����  �61   5B      5C      5D      5E      5F      