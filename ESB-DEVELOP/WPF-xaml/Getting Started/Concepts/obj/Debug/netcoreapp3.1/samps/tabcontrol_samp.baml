   M S B A M L   `   `   `  ����  Concepts    TabControlGrid.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Sample Title��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Tab Control Sample��64    �� 
IsSelected$
 true��6P   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Tab Control6J   �� 5        MainContentStyle#��[ 6   KIThis example demonstrates how to create tab controls with styles applied.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5   
   �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   .��6W   ��
<Application
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="TabControlGrid.app"
    StartupUri="Pane1.xaml"
    >
  <Application.Resources>
    <Style x:Key="SimpleTabControl" TargetType="{x:Type TabControl}">
      <Setter Property = "TabStripPlacement" Value = "Top"/>
      <Setter Property = "Background" Value = "LightBlue"/>
    </Style>

    <Style x:Key="Triggers" TargetType="{x:Type TabItem}">
      <Style.Triggers>
        <Trigger Property="TabItem.IsMouseOver" Value="true">
          <Setter Property = "Foreground" Value="Green"/>
          <Setter Property = "Background" Value="Red"/>
        </Trigger>
      </Style.Triggers>
    </Style>

    <Style x:Key="SimpleTabItem" TargetType="{x:Type TabItem}">
      <Setter Property = "Background" Value = "Pink"/>
      <Setter Property = "FontWeight" Value = "Bold"/>
    </Style>


  </Application.Resources>
</Application>
            
            52      53      54      55      �� 56      -   5        $��
xamlcsharp��56      #��[  6%   $��	XAML + C#��6G   .��57      ��  �� TabStripPlacement$ Right=�6   .@�58      �� -   5        $��xcsharpCheck��58        	TabStyle2#��[ 6.   $
��XAML��6Q   �� 59      #��[ 6   $��C#��6=   5:      5;      �� 5=      -   5        $��xamlvb��5=      #��[  6!   $��XAML + Visual Basic.NET��6C   .��5>      �� $ Right=�6   .@�5?      �� -   5        $��xvbCheck��5?      #��[ 6*   $
��XAML��6M   �� 5@      #��[ 6   $��VB.NET��6=   5A      5B      �� 5D   
   -   5        $��csharp��5D      #��[  6    $��C#��6B   �� 5F      -	   5        $��vb��5F      #��[  6   $��Visual Basic.NET��6:   �� 5H      -
   5        $��
managedcpp��5H      #��[  6    $��Managed C++��6B   �� 5J      #��[  6   $��Preview Sample��60   .��5L      ��  � 	Resources 5N        SimpleTabControl �� 
TargetType �� Property �� Value  Triggers �� Triggers	 P� Property
 P� Value  SimpleTabItem��%�  &	       &	 �     &	 9    �� 5O      " ��6/   .�5P      ��  �@��TabStripPlacement$	 Top=�68   �� 5Q       � ��
 ��ح�61   5R      �� 5T      " ��6'    5U      P� 5V      	 �@J�IsMouseOver$

 true��6;   . �5W      ��  � ��
 � � �65   �� 5X       � ��
 �  ��65   5Y      5[      �� 5]      " ��6,   .�5^      ��  � ��
 �����61   �� 5_       � ��$
 Bold"�61   5`      5c      .+�5e      � -   5        $
��grid��5e       � ShowGridLines$ false��6   
������� � ColumnDefinitions 5f      �� 5g      $	��300 �6#   �� 5h      $	��250 �6#    � RowDefinitions 5j      �� 5k      �� 5l      �� 5m      �� 5n      �� 5o      �� 5p      �� 5q      �� 5r      �� 5s      �� 5t      �� 5u      �� 5v      �� 5w      .+�5y      �� $��10, 10, 3, 3q�6   $��0��60   $��0��6@   $��24(�6M   Tab Control Styles6o   �� 5z      $��10, 10, 3, 3q�6   $��0��60   $��1��6@   $��14(�6M   $��2��6[   64The following tab controls are created using styles.6�   ]� 5|      $��30, 10, 3, 3q�6   $��0��60   $��2��6@   .+�5}      �� $��50��6   #��[ 6)   .@�5~      �� $��
Background��6   $
 true��60   �� 5      $��
Foreground��6   �� 5�      $��BorderBrush��6   5�      5�      �� 5�      $��10, 10, 3, 3q�6   $��1��60   $��2��6@   $��12(�6M   $��Center=�6[   $
��Wrap=�6v   ZXStyles the tab control by placing the tabs on the top and changing the background color.6�   ]� 5�      $��30, 10, 3, 3q�6   $��0��60   $��3��6@   .+�5�      �� $
 Left=�6   .@�5�      �� $��
Background��6   #��[ 60   �� 5�      $��
Foreground��6   #��[ 62   �� 5�      $��BorderBrush��6   #��[ 63   5�      5�      �� 5�      $��10, 10, 3, 3q�6   $��1��60   $��3��6@   $��12(�6M   $��Center=�6[   $
��Wrap=�6v   ECStyles the tab items changing the background color and font weight.6�   ]� 5�      $��30, 10, 3, 3q�6   $��0��60   $��4��6@   .+�5�      �� $ Bottom=�6   .@�5�      �� $��
Background��6   $
 true��60   #��[ 6B   �� 5�      $��
Foreground��6   #��[ 62   �� 5�      $��BorderBrush��6   #��[ 63   5�      5�      �� 5�      $��10, 10, 3, 3q�6   $��1��60   $��4��6@   $��12(�6M   $��Center=�5�      $
��Wrap=�6*   ECChanges the tab items appearance in response to a mouse over event.5�      5�      5�      5�      5�   	   5�      