   M S B A M L   `   `   `  ����  Concepts    Slider_wcp.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Sample Title��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Slider Sample��64    �� 
IsSelected$
 true��6K   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Slider6E   �� 5        MainContentStyle#��[ 6   ;9This example demonstrates how to create a slider control.6}   �� 5      #��[ 6   trThe preview window renders code from the C#+Markup tab. The C# standalone code is provided for reference purposes.6�   5      5      �� 5      -   5        $
��xaml��5      #��[  6'   $
��XAML��6I   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6.   $
��XAML��6Q   .��5      �� $��Visible=�6#   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve68     CodeSnippetParagraph#��[ 6
   .��6M   ��                  
                  
<StackPanel  
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="Slider_wcp.Pane1"
    >
    <!--  The namespace + class name in the codebehind file and the x:Class attribute in the root of this document, must stay identical.  You can change them, but you must keep them in sync. -->


<Grid ShowGridLines ="false" Background ="White" >'
<Grid.ColumnDefinitions>
<ColumnDefinition Width="300"/>
<ColumnDefinition Width="250"/>
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
</Grid.RowDefinitions>
<TextBlock Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="0" FontSize="24">Sliders</TextBlock>
<TextBlock Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="1" FontSize="14" Grid.ColumnSpan="2">The following slider examples demonstrate:</TextBlock>  
    
<Slider Orientation="Horizontal" Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="2" Value="0" HorizontalAlignment="Left"/>
<TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="2" FontSize="12" VerticalAlignment="Center">Horizontal Slider.</TextBlock> 

<Slider Orientation="Vertical" Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="3" Height="50"/>
<TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="3" FontSize="12" VerticalAlignment="Center">Vertical Slider.</TextBlock>

<Slider Orientation="Horizontal" Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="4" Value="50" HorizontalAlignment="Left" IsSnapToTickEnabled="True" Maximum="3" TickPlacement="BottomRight" AutoToolTipPlacement="BottomRight" TickFrequency="1"/>
<TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="4" FontSize="12" VerticalAlignment="Center">Horizontal Slider with tick bar.</TextBlock>

<Button Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="5" Click="OnClick" HorizontalAlignment="Left">Click me to create a slider with C# code.</Button>
<TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="5" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Creating a slider with C#.</TextBlock>
</Grid>

<Canvas Name="cv1" Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="6"></Canvas>  

</StackPanel>
5G      5J      5K      �� 5L      #��[ 6   $��C#��6=   .��5M      �� $��Visible=�6#   .��5N      ��  preserve6J   #��[ 6   .��6_   ��     
//This is a list of commonly used namespaces for a pane.
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Data;

namespace Slider_wcp
{
	/// <summary>
	/// Interaction logic for Pane1.xaml
	/// </summary>

	public partial class Pane1 : StackPanel
	{
	   void OnClick(object sender, RoutedEventArgs e)
		{ 
                 cv1.Children.Clear();
	         //Slider Orientation="Horizontal" hslider = new Slider Orientation="Horizontal"();
                 hslider.Width = 100;
                 cv1.Children.Add(hslider);
		}

	}
}                    
                    
                    
                    
                    5m      5n      5o      5p      5q      �� 5s      -   5        $��xamlvb��5s      #��[  6!   $��XAML + Visual Basic.NET��6C   .��5t      �� $ Right=�6   .@�5u      �� -   5        $��xvbCheck��5u      #��[ 6*   $
��XAML��6M   �� 5v      #��[ 6   $��VB.NET��6=   5w      5x      �� 5y      -   5        $��csharp��5y      #��[  6!   $��C#��6C   .��5z      �� $��Visible=�6   .��5{      �� -   5        $��csharpCheck��5{      �� 5|       preserve6E   #��[ 6   .��6Z   ��
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Threading;

namespace WCSample
{
	public class app : System.Windows.Application
	{
		System.Windows.Controls.Slider Orientation="Horizontal" hslider;

		System.Windows.Controls.Slider Orientation="Vertical" vslider;

		System.Windows.Window mainWindow;

		System.Windows.Controls.Canvas cv;

		System.Windows.Controls.TextBlock txt1, txt2;

		protected override void OnStartingUp(StartingUpCancelEventArgs e)
		{
			base.OnStartingUp(e);
			CreateAndShowMainWindow();
		}

		private void CreateAndShowMainWindow()
		{
			// Create the application's main window
			mainWindow = new System.Windows.Window();

			// Create two sliders
			cv = new Canvas();
			mainWindow.Content = cv;
			hslider = new Slider Orientation="Horizontal"();
			vslider = new Slider Orientation="Vertical"();
			cv.Children.Add(hslider);
			cv.Children.Add(vslider);
			hslider.Width = 250;
			vslider.Height = 250;
			System.Windows.Controls.Canvas.SetTop(hslider, 10);
			System.Windows.Controls.Canvas.SetTop(vslider, 50);
			txt1 = new TextBlock();
			txt1.Text = "Horizontal Slider";
			cv.Children.Add(txt1);
			System.Windows.Controls.Canvas.SetTop(txt1, 25);
			System.Windows.Controls.Canvas.SetLeft(txt1, 60);
			txt2 = new TextBlock();
			txt2.Text = "Vertical Slider";
			System.Windows.Controls.Canvas.SetTop(txt2, 175);
			System.Windows.Controls.Canvas.SetLeft(txt2, 20);
			cv.Children.Add(txt2);
			mainWindow.Show();
		}

		internal sealed class EntryClass
		{
			[System.STAThread()]
			private static void Main()
			{
				app app = new app();

				app.Run();
			}
		}
	}
}

               
               
               5�      5�      5�      5�      �� 5�      -	   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6?   �� 5�      -
   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      �� .+�5�      �  � ShowGridLines$ false��6   
������� � ColumnDefinitions 5�      �� 5�      $	��300 �6   �� 5�      $	��250 �6    � RowDefinitions 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      .+�5�      �� $��10, 10, 3, 3q�6   $��0��6"   $��0��62   $��24(�6?   	Sliders6V   �� 5�      $��10, 10, 3, 3q�6   $��0��6"   $��1��62   $��14(�6?   $��2��6M   ,*The following slider examples demonstrate:6�   �� 5�       �� Orientation$ 
Horizontal=�6	   $��10, 10, 3, 3q�6#   $��0��69   $��2��6I    � Value$ 0Q�6V   $
��Left=�6`   �� 5�      $��10, 10, 3, 3q�6   $��1��6"   $��2��62   $��12(�6?   $��Center=�6M   Horizontal Slider.6|   �� 5�      $ Vertical=�6	   $��10, 10, 3, 3q�6    $��0��66   $��3��6F   $��50��6S   �� 5�      $��10, 10, 3, 3q�6   $��1��6"   $��3��62   $��12(�6?   $��Center=�6M   Vertical Slider.6z   �� 5�      $ 
Horizontal=�6	   $��10, 10, 3, 3q�6"   $��0��68   $��4��6H   $ 50Q�6U   $
��Left=�6`   	 �� IsSnapToTickEnabled$
	 True��6{   
 � Maximum$
 3Q�6�    �� TickPlacement$ BottomRight=�6�    �� AutoToolTipPlacement$ BottomRight=�6�    �� TickFrequency$ 1Q�6�   �� 5�      $��10, 10, 3, 3q�6   $��1��6"   $��4��62   $��12(�6?   $��Center=�6M   " Horizontal Slider with tick bar.6�   �� 5�      -   5        $��10, 10, 3, 3q�5�   	   $��0��6   $��5��6/   $
��Left=�6L   .��6g   +)Click me to create a slider with C# code.6�   �� 5�      $��10, 10, 3, 3q�6   $��1��6"   $��5��62   $��12(�6?   $��Center=�6M   $
��Wrap=�6h   Creating a slider with C#.6�   5�      �� 5�      -   5        $	��cv1��5�   	   $��10, 10, 3, 3q�6   $��6��6*   5�      5�      5�      5�      