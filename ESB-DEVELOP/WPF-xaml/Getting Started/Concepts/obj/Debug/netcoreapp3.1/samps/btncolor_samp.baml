   M S B A M L   `   `   `  ����  Concepts    ButtonColor.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Sample Title��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Button Color Sample��64    �� 
IsSelected$
 true��6Q   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Button Color Sample6R   �� 5        MainContentStyle#��[ 6   64This example demonstrates different button controls.6x   �� 5      #��[ 6   pnThe preview window renders code from the C#+Markup tab. The VB+markup code is provided for reference purposes.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6*   $
��XAML��6M   .��5      �� $��Visible=�6   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6F     CodeSnippetParagraph#��[ 6   .��6[   ��
                 
<Canvas
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="ButtonAlign.Pane1"
 >

  <Grid ShowGridLines ="false" Background ="White" >
<Grid.ColumnDefinitions>
<ColumnDefinition/>
<ColumnDefinition/>
</Grid.ColumnDefinitions>
<Grid.RowDefinitions>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
</Grid.RowDefinitions>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="0" FontSize="24">Buttons</TextBlock>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="1" FontSize="14" Grid.ColumnSpan="2">The following button examples demonstrate:</TextBlock>  
    <DockPanel Margin="30, 10, 3, 3" Grid.Column="0" Grid.Row="2">
      <Button Name="btn1" Background="Pink" BorderBrush="Black" BorderThickness="1" Click="OnClick1">ClickMe1</Button>
      <Button Name="btn2" Background="LightBlue" BorderBrush="Black" BorderThickness="1" Click="OnClick2">ClickMe2</Button>
      <Button Name="btn3" Click="OnClick3">Reset</Button>
    </DockPanel>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="2" FontSize="12" VerticalAlignment="Center">Changing the background property.</TextBlock>  
    <Button Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="3" Width="250px" Name="btn4" Click="OnClick4">Click me to change colors and font size.</Button>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="3" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Changing the background, foreground, and font size properties.</TextBlock> 
    <DockPanel Margin="30, 10, 3, 3" Grid.Column="0" Grid.Row="4">
      <Button Name="btn5" Width="50" Height="30" Click="OnClick5">
        <Image Source="\images\flower.jpg">
        </Image>
      </Button>
      <Button Name="btn6" BorderBrush="Black">Click the picture.</Button>
    </DockPanel>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="4" FontSize="10pt" VerticalAlignment="Center" TextWrapping="Wrap">Adding an image as the button's content.</TextBlock>
    <Button Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="5" Width="250" Name="btn7" Click="OnClick6">
      <DockPanel Height="30">
        <Image Source="\images\flower.jpg"/>
        <TextBlock Name="txt">Button with an image. Click me.</TextBlock>
      </DockPanel>
    </Button>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="5" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Adding complex content, the button contains a DockPanel with an image and some text.</TextBlock> 
    <Button Margin="30, 10, 3, 3" Grid.Column="0" Grid.Row="6" Click="OnClick7">Click me to create a button with C# code.</Button>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="6" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Creating a button with C#.</TextBlock>
  </Grid>
  <Canvas Name="cv2" Width="550" Height="50" Canvas.Top="290" Canvas.Left="10"></Canvas> 

</Canvas>
5T      5U      5V      �� 5W      #��[ 6   $��C#��69   .��5X      �� $��Visible=�6   .��5Z      ��  preserve6F   #��[ 6   .��6[   ��
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Data;
using System.Windows.Media;

namespace ButtonAlign
{
	/// <summary>
	/// Interaction logic for Pane1.xaml
	/// </summary>

	public partial class Pane1 : Canvas
	{
		// To use PaneLoaded put Loaded="PaneLoaded" in root element of .xaml file.
		// private void PaneLoaded(object sender, EventArgs e) {}
		// Sample event handler: 
		static int newcolor = 0;
		Button btncsharp;
		void OnClick1(object sender, RoutedEventArgs e)
		{
			btn1.Background = Brushes.LightBlue;
		}

		void OnClick2(object sender, RoutedEventArgs e)
		{
			btn2.Background = Brushes.Pink;
		}

		void OnClick3(object sender, RoutedEventArgs e)
		{
			btn1.Background = Brushes.Pink;
			btn2.Background = Brushes.LightBlue;
		}
		void OnClick4(object sender, RoutedEventArgs e)
		{
			switch (newcolor)
			{
				case 0:
					btn4.Background = Brushes.Red;
					btn4.Foreground = Brushes.Beige;
					btn4.Content = "Font Size 10";
					btn4.FontSize = 10;
					break;

				case 1:
					btn4.Background = Brushes.CadetBlue;
					btn4.Foreground = Brushes.LemonChiffon;
					btn4.Content = "Font Size 12";
					btn4.FontSize = 12;
					break;

				case 2:
					btn4.Background = Brushes.Purple;
					btn4.Foreground = Brushes.PeachPuff;
					btn4.Content = "Font Size 14";
					btn4.FontSize = 14;
					break;

				case 3:
					btn4.Background = Brushes.BlanchedAlmond;
					btn4.Foreground = Brushes.DarkRed;
					btn4.Content = "Font Size 16";
					btn4.FontSize = 16;
					break;

				case 4:
					btn4.Background = Brushes.Green;
					btn4.Foreground = Brushes.White;
					btn4.Content = "Font Size 18";
					btn4.FontSize = 18;
					break;
			}
			newcolor = newcolor + 1;
			if (newcolor > 4)
			{
				newcolor = 0;
			}
		}
		void OnClick5(object sender, RoutedEventArgs e)
		{
			btn6.FontSize = 16;
			btn6.Content = "This is my favorite photo.";
			btn6.Background = Brushes.Red;
		}
		void OnClick6(object sender, RoutedEventArgs e)
		{
			btn7.FontSize = 16;
			txt.Text = "You clicked the button.";
			btn7.Background = Brushes.Yellow;
		}
		void OnClick7(object sender, RoutedEventArgs e)
		{
			btncsharp = new Button();
			btncsharp.Content = "Created with C# code.";
			btncsharp.Background = SystemColors.ControlDarkDarkBrush;
                        btncsharp.FontSize = SystemFonts.CaptionFontSize;
                        cv2.Children.Add(btncsharp);
	   }
   }
}        
              5�      5�      5�      5�      5�      �� 5�   
   -   5        $��xamlvb��5�      #��[  6    $��XAML + Visual Basic.NET��6B   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6&   $
��XAML��6I   .��5�      �� $��Visible=�6   .��5�      ��  preserve6S   #��[ 6%   .��6h   ��
                           
<StackPanel  
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="ButtonAlignM8_vb.Pane1"
    >
    <!--  The namespace + class name in the codebehind file and the x:Class attribute in the root of this document, must stay identical.  You can change them, but you must keep them in sync. -->
<Grid ShowGridLines ="false" Background ="White">
<Grid.ColumnDefinitions>
<ColumnDefinition/>
<ColumnDefinition/>
</Grid.ColumnDefinitions>
<Grid.RowDefinitions>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
<RowDefinition/>
</Grid.RowDefinitions>
<TextBlock Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="0" FontSize="24">Buttons</TextBlock>
<TextBlock Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="1" FontSize="14" Grid.ColumnSpan="2">The following button examples demonstrate:</TextBlock>  
<DockPanel Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="2"><Button Name="btn1" Background="Pink" BorderBrush="Black" BorderThickness="1" Click="OnClick1">ClickMe1</Button><Button Name="btn2" Background="LightBlue" BorderBrush="Black" BorderThickness="1" Click="OnClick2">ClickMe2</Button><Button Name="btn3" Click="OnClick3">Reset</Button></DockPanel>
<TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="2" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Changing the background property.</TextBlock>  
<Button Margin="10, 10, 5, 5" HorizontalAlignment="Left" Grid.Column="0" Grid.Row="3" Width="250" Name="btn4" Click="OnClick4">Click me to change colors and font size.</Button>
<TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="3" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Changing the background, foreground, and font size properties.</TextBlock>

<DockPanel HorizontalAlignment="Left" Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="4">lt;Button Name="btn5" Width="50" Height="30" Click="OnClick5"><Image Source="\images\flower.jpg"></Image></Button>
<Button Name="btn6" BorderBrush="Black">Click the picture.</Button></DockPanel>

<TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="4" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Adding an image as the button's content.</TextBlock>

<Button HorizontalAlignment="Left" Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="5" Width="250" Name="btn7" Click="OnClick6">
  <DockPanel Height="30">
    <Image Source="\images\flower.jpg"/>
    <TextBlock Name="txt">Button with an image. Click me.</TextBlock>
  </DockPanel>
</Button>

<TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="5" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Adding complex content, the button contains a DockPanel with an image and some text.</TextBlock>
 
<Button HorizontalAlignment="Left" Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="6" Click="OnClick7">Click me to create a button with VB code.</Button>

<TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="6" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Creating a button with Visual Basic.</TextBlock>
   
<Canvas Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="7" Name="cv2" Width="550" Height="50" Canvas.Top="280" Canvas.Left="10"></Canvas>
</Grid>
</StackPanel>
 
                       5     5	     5
     �� 5     #��[ 6   $��VB.NET��69   .��5     �� $��Visible=�6   .��5  +   ��  preserve6a   #��[ 63   .��6v   ��
Imports System
Imports System.Windows
Imports System.Windows.Controls
Imports System.Windows.Documents
Imports System.Windows.Navigation
Imports System.Windows.Media
Imports System.Windows.Shapes
Imports System.Windows.Data

Namespace ButtonAlignM8_vb

    '@ <summary>
    '@ Interaction logic for Pane1_xaml.xaml
    '@ </summary>
    Partial Class Pane1

        Sub OnClick1(ByVal sender As Object, ByVal e As RoutedEventArgs)
            btn1.Background = Brushes.LightBlue
        End Sub

        Sub OnClick2(ByVal sender As Object, ByVal e As RoutedEventArgs)
            btn2.Background = Brushes.Pink
        End Sub

        Sub OnClick3(ByVal sender As Object, ByVal e As RoutedEventArgs)
            btn1.Background = System.Windows.Media.Brushes.Pink
            btn2.Background = System.Windows.Media.Brushes.LightBlue
        End Sub

        Sub OnClick4(ByVal sender As Object, ByVal e As RoutedEventArgs)
            Static NewColor As Integer = 0

            Select Case NewColor

                Case 0
                    btn4.Background = Brushes.Red
                    btn4.Foreground = Brushes.Beige
                    btn4.Content = "Font Size 10"
                    btn4.FontSize = 10

                Case 1
                    btn4.Background = Brushes.CadetBlue
                    btn4.Foreground = System.Windows.Media.Brushes.LemonChiffon
                    btn4.Content = "Font Size 12"
                    btn4.FontSize = 12

                Case 2
                    btn4.Background = Brushes.Purple
                    btn4.Foreground = Brushes.PeachPuff
                    btn4.Content = "Font Size 14"
                    btn4.FontSize = 14

                Case 3
                    btn4.Background = Brushes.BlanchedAlmond
                    btn4.Foreground = Brushes.DarkRed
                    btn4.Content = "Font Size 16"
                    btn4.FontSize = 16

                Case 4
                    btn4.Background = Brushes.Green
                    btn4.Foreground = Brushes.White
                    btn4.Content = "Font Size 18"
                    btn4.FontSize = 18

            End Select

            NewColor = NewColor + 1
            If NewColor > 4 Then
                NewColor = 0
            End If
        End Sub
        Sub OnClick5(ByVal sender As Object, ByVal e As RoutedEventArgs)
            btn6.FontSize = 16
	    btn6.Content = "This is my favorite photo."
	    btn6.Background = Brushes.Red
        End Sub
        Sub OnClick6(ByVal sender As Object, ByVal e As RoutedEventArgs)
            btn7.FontSize = 16
	    txt.Text = "You clicked the button."
	    btn7.Background = Brushes.Yellow
        End Sub
        Sub OnClick7(ByVal sender As Object, ByVal e As RoutedEventArgs)
            Dim btnvb As Button
            btnvb = New Button()
	    btnvb.Content = "Created with VB code."
	    btnvb.Background = SystemColors.ControlDarkDarkBrush
            btnvb.FontSize = SystemFonts.CaptionFontSize
            cv2.Children.Add(btnvb)
        End Sub
                
    End Class

End Namespace
                                           
                                           
                                           
                                           5o  .   5p     5q     5r     5s     �� 5u  
   -   5        $��csharp��5u     #��[  6    $��C#��6B   �� 5w     -   5        $��vb��5w     #��[  6   $��Visual Basic.NET��6:   �� 5y     -	   5        $��
managedcpp��5y     #��[  6    $��Managed C++��6B   �� 5{     #��[  6   $��Preview Sample��60   .��5~     �� .+�5     �  � ShowGridLines$ false��6   
������� � ColumnDefinitions 5�     �� 5�     $	��300 �6!   �� 5�     $	��250 �6!    � RowDefinitions 5�     �� 5�     �� 5�     �� 5�     �� 5�     �� 5�     �� 5�     �� 5�     �� 5�     �� 5�     �� 5�     �� 5�     �� 5�     �� 5�     .+�5�     �� $��10, 10, 3, 3q�6   $��0��60   $��0��6@   $��24(�6M   	Buttons6d   �� 5�     $��10, 10, 3, 3q�6   $��0��60   $��1��6@   $��14(�6M   $��2��6[   ,*The following button examples demonstrate:6�   ]� 5�     $��30, 10, 3, 3q�6   $��0��60   $��2��6@   .+�5�     �� -
   5        $
��btn1��5�     
�������
���   �$��1q�6K   .��6p   
ClickMe16z   �� 5�     -   5        $
��btn2��5�     
����ح�
���   �$��1q�6P   .��6u   
ClickMe26   �� 5�     -   5        $
��btn3��5�     .��66   Reset6=   5�     �� 5�     $��10, 10, 3, 3q�6   $��1��60   $��2��6@   $��12(�6M   $��Center=�6[   #!Changing the background property.6�   �� 5�     -   5        $
��btn4��5�  X   $��10, 10, 3, 3q�6   $��0��6-   $��3��6=   $��250px��6J   .��6u   *(Click me to change colors and font size.6�   �� 5�     $��10, 10, 3, 3q�6   $��1��60   $��3��6@   $��12(�6M   $��Center=�6[   $
��Wrap=�6v   @>Changing the background, foreground, and font size properties.6�   ]� 5�     $��30, 10, 3, 3q�6   $��0��60   $��4��6@   .+�5�     �� -   5        $
��btn5��5�     $��50��6%   $��30��60   .��5�     �� $
��None=�6   ��6,   �� 6:    �� 	UriSource$ \images\flower.jpg?�6F   6w   5�     �� 5�     -   5        $
��btn6��5�     
���   �.��69   Click the picture.6M   5�     �� 5�     $��10, 10, 3, 3q�6   $��1��60   $��4��6@   $
��10pt(�6M   $��Center=�6]   $
��Wrap=�6x   *(Adding an image as the button's content.6�   �� 5�     -   5        $
��btn7��5�  V   $��10, 10, 3, 3q�6   $��0��6-   $��5��6=   $	��250��6J   .��5�     ]� $��30��6   .+�5�     �� $
��None=�6   ��6,   �� 6:   $ \images\flower.jpg?�6F   6w   �� 5�     -   5        $	��txt��5�     !Button with an image. Click me.6J   5�     5�     �� 5�     $��10, 10, 3, 3q�6   $��1��60   $��5��6@   $��12(�6M   $��Center=�6[   $
��Wrap=�6v   VTAdding complex content, the button contains a DockPanel with an image and some text.6�   �� 5�     -   5        $��30, 10, 3, 3q�5�     $��0��6-   $��6��6=   .��6[   +)Click me to create a button with C# code.6�   �� 5�     $��10, 10, 3, 3q�6   $��1��60   $��6��6@   $��12(�6M   $��Center=�6[   $
��Wrap=�6v   Creating a button with C#.6�   5�     �� 5�     -   5        $	��cv2��5�     $	��550��6    $��50��6,   
 �� Top$	 290��68   	 �� Left$	 10��6I   5�     5�     5�  	   5�     