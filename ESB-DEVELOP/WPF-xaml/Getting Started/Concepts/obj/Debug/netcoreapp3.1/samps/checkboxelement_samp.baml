   M S B A M L   `   `   `  ����  Concepts    checkboxelement.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Sample Title��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5      ��    TabStyle#��[  6   $��Check Box Elements Sample��6<    �� 
IsSelected$
 true��6_   .��5      �� .+�5	      ��   HeaderStyle#��[ 6$   Check Box Elements6]   �� 5        MainContentStyle#��[ 6$   Sample descriptive text.6h   5      5      �� 5      -   5        $
��xaml��5      #��[  6&   $
��XAML��6H   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6.   $
��XAML��6Q   .��5      �� $��Visible=�6   .��5   (   �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6a     CodeSnippetParagraph#��[ 63   ��
 
<StackPanel  
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="Checkbox2.Pane1"
    Height="900"
    >
  <Grid ShowGridLines ="false" Background ="White">
    <Grid.ColumnDefinitions>
    <ColumnDefinition Width="300px"/>
    <ColumnDefinition Width="250px"/>
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
    </Grid.RowDefinitions>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="0" FontSize="20">Check Boxes</TextBlock>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="1" Grid.ColumnSpan="2" FontSize="14">The following check box examples demonstrate:</TextBlock>
    <CheckBox Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="2" Name="cb1" FontSize="12" IsCheckedChanged="HandleChange">Check Box</CheckBox>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="2" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Single check box. Clicking the box toggles its state from checked to unchecked.</TextBlock>
    <DockPanel Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="3" Grid.RowSpan="2">
      <CheckBox Name="cb2" FontSize="12" DockPanel.Dock="Top">Yes</CheckBox>
      <CheckBox Name="cb3" FontSize="12" DockPanel.Dock="Top">No</CheckBox>
      <CheckBox Name="cb4" FontSize="12" DockPanel.Dock="Top">Maybe</CheckBox>
      <CheckBox Name="cb5" FontSize="12" DockPanel.Dock="Top">I have no opinion.</CheckBox>  
    </DockPanel>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="3" Grid.RowSpan="2" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Group of check boxes. You may choose as many items as you wish in a group of check boxes.</TextBlock> 
    <DockPanel Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="5">
      <CheckBox Name="cb6" IsCheckedChanged="HandleChange1">
        <Image Source="\images\flower.jpg" Height="30" Width="30"/>
      </CheckBox>
      <TextBlock Name="txt" VerticalAlignment="Center">Click the check box.</TextBlock>
    </DockPanel>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="5" Name="txt2" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Check box with an image.</TextBlock> 
    <CheckBox  Name="cb7" IsCheckedChanged="HandleChange2" Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="6" FontSize="12">
      <DockPanel>
        <Image Source="\images\flower.jpg" Height="30" Width="30"/>
        <TextBlock Name="txt3" VerticalAlignment="Center">Click the check box.</TextBlock>
      </DockPanel>
    </CheckBox>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="6" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Check box with complex content, the check box contains a DockPanel with an image and some text.</TextBlock> 
  </Grid>
 
</StackPanel>
            
                
            5K      5L      5M      �� 5N      #��[ 6   $��C#��6=   .��5O      �� $��Visible=�6   .��5Q   (   ��  preserve6^   #��[ 60   .��6s   ��
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Data;
using System.Windows.Media;

namespace Checkbox2
{
	/// <summary>
	/// Interaction logic for Pane1.xaml
	/// </summary>

	public partial class Pane1 : StackPanel
	{
		// To use PaneLoaded put Loaded="PaneLoaded" in root element of .xaml file.
		// private void PaneLoaded(object sender, EventArgs e) {}
		// Sample event handler:  
		// private void ButtonClick(object sender, ClickEventArgs e) {}
		private void HandleChange(object sender, RoutedEventArgs e)
		{
			cb1.Content = "You clicked the check box";
		}

        private void HandleChange1(object sender, RoutedEventArgs e)
        {
            txt.FontSize = 16;
            txt.Text = "I took this photo yesterday.";
	    }
		private void HandleChange2(object sender, RoutedEventArgs e)
		{
			txt3.FontSize = 16;
			txt3.Text = "My favorite photo.";
		}
	}
}        
                
            5y      5z      5{      5|      5}      �� 5      -   5        $��xamlvb��5      #��[  6!   $��XAML + Visual Basic.NET��6C   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6*   $
��XAML��6M   �� 5�      #��[ 6   $��VB.NET��6=   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -	   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      �� .+�5�      �  � ShowGridLines$ false��6   
������� � ColumnDefinitions 5�      �� 5�      $��300px �6/   �� 5�      $��250px �6/    � RowDefinitions 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      .+�5�      �� $��10, 10, 3, 3q�6(   $��0��6>   $��0��6N   $��20(�6[   Check Boxes6v   �� 5�      $��10, 10, 3, 3q�6(   $��0��6>   $��1��6N   $��2��6[   $��14(�6o   /-The following check box examples demonstrate:6�   �� 5�      -
   5        $	��cb1��5�   Z   $��10, 10, 3, 3q�6'   $��0��6=   $��2��6M   $��12(�6e   .��6�   	Check Box6�   �� 5�      $��10, 10, 3, 3q�6(   $��1��6>   $��2��6N   $��12(�6[   $��Center=�6i   $
��Wrap=�6�   QOSingle check box. Clicking the box toggles its state from checked to unchecked.6�   ]� 5�      $��10, 10, 3, 3q�6(   $��0��6>   $��3��6N   $��2��6[   .+�5�   "   �� -   5        $	��cb2��5�   +   $��12(�66   $	��Top=�6D   .��6Y   Yes6^   �� 5�   "   -   5        $	��cb3��5�   +   $��12(�66   $	��Top=�6D   .��6Y   No6]   �� 5�   "   -   5        $	��cb4��5�   +   $��12(�66   $	��Top=�6D   .��6Y   Maybe6`   �� 5�   "   -   5        $	��cb5��5�   +   $��12(�66   $	��Top=�6D   .��6Y   I have no opinion.6m   5�      �� 5�      $��10, 10, 3, 3q�6(   $��1��6>   $��3��6N   $��2��6[   $��12(�6l   $��Center=�6z   $
��Wrap=�6�   [YGroup of check boxes. You may choose as many items as you wish in a group of check boxes.6  ]� 5�      $��10, 10, 3, 3q�6(   $��0��6>   $��5��6N   .+�5�   "   �� -   5        $	��cb6��5�   +   .��5�   &   �� $��30��6,   $��30��68   $
��None=�6C   ��6S   �� 6a    �� 	UriSource$ \images\flower.jpg?�6m   6�   5�   #   �� 5�   "   -   5        $	��txt��5�   ,   $��Center=�67   Click the check box.6h   5�      �� 5�      -   5        $
��txt2��5�   [   $��10, 10, 3, 3q�6(   $��1��6>   $��5��6N   $��12(�6g   $��Center=�6u   $
��Wrap=�6�   Check box with an image.6�   �� 5�      -   5        $	��cb7��5�   (   $��10, 10, 3, 3q�6K   $��0��6a   $��6��6q   $��12(�6~   .��5�   "   ]� .+�5�   &   �� $��30��6,   $��30��68   $
��None=�6C   ��6S   �� 6a   $ \images\flower.jpg?�6m   6�   �� 5�   &   -   5        $
��txt3��5�   0   $��Center=�6<   Click the check box.6m   5�   #   5�      �� 5�      $��10, 10, 3, 3q�6(   $��1��6>   $��6��6N   $��12(�6[   $��Center=�6i   $
��Wrap=�6�   a_Check box with complex content, the check box contains a DockPanel with an image and some text.6�   5�      5�      5�      5�      5�      