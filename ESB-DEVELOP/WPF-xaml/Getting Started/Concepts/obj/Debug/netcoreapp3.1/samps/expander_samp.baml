   M S B A M L   `   `   `  ����  Concepts    myExpander.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Expander��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Expander Sample��64    �� 
IsSelected$
 true��6M   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Expander Sample6N   �� 5        MainContentStyle#��[ 6   ><This example demonstrates how to create an expander control.6�   �� 5      #��[ 6   pnThe preview window renders code from the C#+Markup tab. The VB+markup code is provided for reference purposes.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6*   $
��XAML��6M   .��5      �� $��Visible=�6   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6F     CodeSnippetParagraph#��[ 6   .��6[   ��
<StackPanel
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="ExpanderTest.Pane1"
    
>

  <Expander Width="100" HorizontalAlignment="Left" IsExpanded="false" Background="Red" Header="header" Content="content"/>

</StackPanel>
                
                
              5$      5%      5&      �� 5'      #��[ 6   $��C#��69   .��5(      �� $��Visible=�6   .��5*      ��  preserve6F   #��[ 6   .��6[   ��
//This is a list of commonly used namespaces for a pane.
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Data;
using System.Windows.Media;

namespace ExpanderTest
{
	/// <summary>
	/// Interaction logic for Pane1.xaml
	/// </summary>

	public partial class Pane1 : StackPanel
	{

				
		
       }
}                
                
              5C      5D      5E      5F      5G      �� 5I   
   -   5        $��xamlvb��5I      #��[  6    $��XAML + Visual Basic.NET��6B   .��5J      �� $ Right=�6   .@�5K      �� -   5        $��xvbCheck��5K      #��[ 6&   $
��XAML��6I   �� 5L      #��[ 6   $��VB.NET��6;   5M      5N      �� 5P   
   -   5        $��csharp��5P      #��[  6    $��C#��6B   �� 5R      -   5        $��vb��5R      #��[  6   $��Visual Basic.NET��6:   �� 5T      -	   5        $��
managedcpp��5T      #��[  6    $��Managed C++��6B   �� 5V      #��[  6   $��Preview Sample��60   .��5X      �� .+�5Z      9� $	��100��6   $
��Left=�6    9� 
IsExpanded$ false��64   
���  ��$��header��6X   $��content��6h   5\      5_      5`   	   5a      