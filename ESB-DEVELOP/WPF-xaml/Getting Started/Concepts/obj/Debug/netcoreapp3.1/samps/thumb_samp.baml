   M S B A M L   `   `   `  ����  Concepts    myThumb.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Thumb��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Thumb Sample��64    �� 
IsSelected$
 true��6J   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Thumb Sample6K   �� 5        MainContentStyle#��[ 6   LJThis example demonstrates how to detect a Thumb control's DragDelta event.6�   �� 5      #��[ 6   pnThe preview window renders code from the C#+Markup tab. The VB+markup code is provided for reference purposes.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6*   $
��XAML��6M   .��5      �� $��Visible=�6   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6F     CodeSnippetParagraph#��[ 6   .��6[   ��
 
<Canvas  
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="Thumb_wcp.Pane1" 
    >
    <!--  The namespace + class name in the codebehind file and the x:Class attribute in the root of this document, must stay identical.  You can change them, but you must keep them in sync. -->
    
    <TextBox Width="300" Height="75" TextWrapping="Wrap">Click on the green thumb, hold down the left mouse button, and move the cursor around the screen. The difference between the current mouse cursor coordinates and the original cursor coordinates is displayed.</TextBox>
    
    <Thumb Canvas.Left="0" Canvas.Top="80" Background="Green" Width="20" Height="20" DragDelta="ShowDelta"></Thumb>
    <TextBox Canvas.Left="25"  Canvas.Top="85"  Name="changes" Width="100" Height="50" DockPanel.Dock="Left">0</TextBox>


</Canvas>
                
              5'      5(      5)      �� 5*      #��[ 6   $��C#��69   .��5+      �� $��Visible=�6   .��5,      ��  preserve6F   #��[ 6   .��6[   ��
//This is a list of commonly used namespaces for a pane.
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Data;

namespace Thumb_wcp
{
	/// <summary>
	/// Interaction logic for Pane1.xaml
	/// </summary>

	public partial class Pane1 : Canvas
	{
		void ShowDelta(object sender, DragDeltaEventArgs e)
		{
			Thumb thumb = sender as Thumb;

			changes.Text = e.HorizontalChange.ToString() + ", " + e.VerticalChange.ToString();
		}

	}
}                
                
              5I      5J      5K      5L      5M      �� 5O   
   -   5        $��xamlvb��5O      #��[  6    $��XAML + Visual Basic.NET��6B   .��5P      �� $ Right=�6   .@�5Q      �� -   5        $��xvbCheck��5Q      #��[ 6&   $
��XAML��6I   .��5R      �� $��Visible=�6   .��5S      ��  preserve6F   #��[ 6   .��6[   ��

<Canvas  
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="Thumb_wcp_vb.Pane1" 
    >
  <!--  The namespace + class name in the codebehind file and the x:Class attribute in the root of this document, must stay identical.  You can change them, but you must keep them in sync. -->

  <TextBox Width="300" Height="75" TextWrapping="Wrap">Click on the green thumb, hold down the left mouse button, and move the cursor around the screen. The difference between the current mouse cursor coordinates and the original cursor coordinates is displayed.</TextBox>

  <Thumb Canvas.Left="0" Canvas.Top="80" Background="Green" Width="20" Height="20" DragDelta="ShowDelta"></Thumb>
  <TextBox Canvas.Left="25"  Canvas.Top="85"  Name="changes" Width="100" Height="50" DockPanel.Dock="Left">0</TextBox>



</Canvas>
                
              5e      5f      5g      �� 5h      #��[ 6   $��VB.NET��69   .��5i      �� $��Visible=�6   .��5j      ��  preserve6<   #��[ 6   .��6Q   ��
        
Imports System
Imports System.Windows
Imports System.Windows.Controls
Imports System.Windows.Controls.Primitives
Imports System.Windows.Documents
Imports System.Windows.Navigation
Imports System.Windows.Shapes
Imports System.Windows.Data

Namespace Thumb_wcp_vb

    '@ <summary>
    '@ Interaction logic for Pane1_xaml.xaml
    '@ </summary>
    Partial Class Pane1
        Sub ShowDelta(ByVal sender As Object, ByVal e As DragDeltaEventArgs)
            Dim thumb As Thumb
            Dim horz As String
            Dim vert As String

            thumb = CType(sender, Thumb)
            horz = e.HorizontalChange.ToString()
            
            vert = e.VerticalChange.ToString()
            changes.Text = horz & ", " & vert
        End Sub

    End Class

End Namespace
        
      5�   	   5�      5�      5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -	   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      �� .+�5�      �� $	��300��6   $��75��6    �� TextWrapping$
 Wrap=�6&   .��6:   ��Click on the green thumb, hold down the left mouse button, and move the cursor around the screen. The difference between the current mouse cursor coordinates and the original cursor coordinates is displayed.6  n� 5�      -
   5         �� Left$ 0��5�      
 �� Top$ 80��6   
��� � �$��20��6?   $��20��6J   6V   �� 5�      -   5        $��changes��5�   1   $ 25��6   $ 85��6    $	��100��6@   $��50��6L   $
��Left=�6X   .��6n   06q   5�      5�      5�   	   5�      