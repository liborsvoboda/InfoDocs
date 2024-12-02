   M S B A M L   `   `   `  ����  Concepts    ActualWidth_Samp.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  ActualWidth Sample��5      .��5      �� $	��500��6   $	��700��6!   $	��400��61   .@�5   
   ��    TabStyle#��[  6   $��Width Properties Sample��64    �� 
IsSelected$
 true��6U   .��5	      �� .+�5
      ��   HeaderStyle#��[ 6   Width Properties Sample6V   �� 5        MainContentStyle#��[ 6   ��Four properties are exposed on FrameworkElement that describe an element's Width characteristics. It is possible for these values to be in conflict. This example demonstrates how those conflicts between values are resolved.6#  5      5      �� 5      -   5        $
��xaml��5      #��[  6"   $
��XAML��6D   �� 5   
   -   5        $��
xamlcsharp��5      #��[  6$   $��	XAML + C#��6F   .��5      ��  �� TabStripPlacement$ Right=�6   $	��500��63   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6.   $
��XAML��6Q   .��5      �� $��Visible=�6#   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6J     CodeSnippetParagraph#��[ 6   .��6_   �!�!
<Window  
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="Width_MinWidth_MaxWidth.Window1"
    Title="Width Properties Sample">
    <Border BorderBrush="Black" BorderThickness="2" Background="White">
	<StackPanel Margin="10">
	
		<TextBlock FontSize="20" DockPanel.Dock="Top">Width Properties Sample</TextBlock>
        <TextBlock TextWrapping="Wrap" Margin="0,0,0,10">Four properties are exposed on FrameworkElement that describe an element's Width characteristics. It is possible for these values to be in conflict. This example demonstrates how those conflicts between values are resolved.</TextBlock>
        <TextBlock TextWrapping="Wrap" Margin="0,0,0,10">If viewed on a continuum, MinWidth value takes precedence over MaxWidth value, which in turn takes precedence over the Width value. This is best demonstrated visually:</TextBlock>
            <Canvas Height="200" MinWidth="200" Background="#b0c4de" VerticalAlignment="Top"  HorizontalAlignment="Center" Name="myCanvas">
                <Rectangle HorizontalAlignment="Center" Canvas.Top="50" Canvas.Left="50"  Name="rect1" Fill="#4682b4" Width="100" Height="100"/>
            </Canvas>
        <StackPanel Orientation="Horizontal" HorizontalAlignment="Center">
            <Button Name="Button1" Click="clipRect" Margin="0,5,5,5">Canvas.ClipToBounds="True"</Button><Button Name="Button2" Margin="0,5,5,5" Click="unclipRect">Canvas.ClipToBounds="False"</Button>
        </StackPanel>
            <Grid>
            <RowDefinition/>
            <RowDefinition/>
            <ColumnDefinition Width="Auto"/>
            <ColumnDefinition Width="Auto"/>
            <ColumnDefinition Width="Auto"/>
            <ColumnDefinition Width="Auto"/>
            <ColumnDefinition Width="Auto"/>
            <ColumnDefinition Width="Auto"/>
    <TextBlock Grid.Row="0" FontSize="14" FontWeight="Bold" Grid.ColumnSpan="6" HorizontalAlignment="Center" Margin="0,15,0,15" TextWrapping="Wrap">
            Use the ListBoxes below to manipulate the various Width related properties of the Rectangle above.</TextBlock>
    <TextBlock Grid.Row="1" Grid.Column="0" Margin="10,0,0,0" TextWrapping="Wrap">Set the Rectangle Width:</TextBlock>
    <ListBox Grid.Column="1" Grid.Row="1" Margin="10,0,0,0" Width="50" Height="50" SelectionChanged="changeWidth">
      <ListBoxItem>25</ListBoxItem>
      <ListBoxItem>50</ListBoxItem>
      <ListBoxItem>75</ListBoxItem>
      <ListBoxItem>100</ListBoxItem>
      <ListBoxItem>125</ListBoxItem>
      <ListBoxItem>150</ListBoxItem>
      <ListBoxItem>175</ListBoxItem>
      <ListBoxItem>200</ListBoxItem>
      <ListBoxItem>225</ListBoxItem>
      <ListBoxItem>250</ListBoxItem>
    </ListBox>

	<TextBlock Grid.Row="1" Grid.Column="2" Margin="10,0,0,0" TextWrapping="Wrap">Set the Rectangle MinWidth:</TextBlock>
    <ListBox Grid.Column="3" Grid.Row="1" Margin="10,0,0,0" Width="50" Height="50" SelectionChanged="changeMinWidth">
      <ListBoxItem>25</ListBoxItem>
      <ListBoxItem>50</ListBoxItem>
      <ListBoxItem>75</ListBoxItem>
      <ListBoxItem>100</ListBoxItem>
      <ListBoxItem>125</ListBoxItem>
      <ListBoxItem>150</ListBoxItem>
      <ListBoxItem>175</ListBoxItem>
      <ListBoxItem>200</ListBoxItem>
      <ListBoxItem>225</ListBoxItem>
      <ListBoxItem>250</ListBoxItem>
  </ListBox>      
     
    <TextBlock Grid.Row="1" Grid.Column="4" Margin="10,0,0,0" TextWrapping="Wrap">Set the Rectangle MaxWidth:</TextBlock>
    <ListBox Grid.Column="5" Grid.Row="1" Margin="10,0,0,0" Width="50" Height="50" SelectionChanged="changeMaxWidth">
      <ListBoxItem>25</ListBoxItem>
      <ListBoxItem>50</ListBoxItem>
      <ListBoxItem>75</ListBoxItem>
      <ListBoxItem>100</ListBoxItem>
      <ListBoxItem>125</ListBoxItem>
      <ListBoxItem>150</ListBoxItem>
      <ListBoxItem>175</ListBoxItem>
      <ListBoxItem>200</ListBoxItem>
      <ListBoxItem>225</ListBoxItem>
      <ListBoxItem>250</ListBoxItem>  
    </ListBox>
  	</Grid>

	    <TextBlock Name="txt1"/>
        <TextBlock Name="txt2"/>
        <TextBlock Name="txt3"/>
        <TextBlock Name="txt4"/>
        <TextBlock Name="txt5"/>
	</StackPanel>
	</Border>	
</Window>


            5h      5i      5k      �� 5l      #��[ 6   $��C#��6=   .��5m      �� .��5n      ��  preserve6J   #��[ 6   .��6_   ��
using System;
using System.Windows;
using System.Windows.Media;
using System.Windows.Controls;
using System.Windows.Documents;

namespace Width_MinWidth_MaxWidth
{
	public partial class Window1 : Window
    {
        public void changeWidth(object sender, RoutedEventArgs args)
        {
            ListBoxItem li = ((sender as ListBox).SelectedItem as ListBoxItem);
            Double sz1 = Double.Parse(li.Content.ToString());
            rect1.Width = sz1;
            rect1.UpdateLayout();
            txt1.Text = "ActualWidth is set to " + rect1.ActualWidth;
            txt2.Text = "Width is set to " + rect1.Width;
            txt3.Text = "MinWidth is set to " + rect1.MinWidth;
            txt4.Text = "MaxWidth is set to " + rect1.MaxWidth;
        }
        public void changeMinWidth(object sender, RoutedEventArgs args)
        {
            ListBoxItem li = ((sender as ListBox).SelectedItem as ListBoxItem);
            Double sz1 = Double.Parse(li.Content.ToString());
            rect1.MinWidth = sz1;
            rect1.UpdateLayout();
            txt1.Text = "ActualWidth is set to " + rect1.ActualWidth;
            txt2.Text = "Width is set to " + rect1.Width;
            txt3.Text = "MinWidth is set to " + rect1.MinWidth;
            txt4.Text = "MaxWidth is set to " + rect1.MaxWidth;
        }
        public void changeMaxWidth(object sender, RoutedEventArgs args)
        {
            ListBoxItem li = ((sender as ListBox).SelectedItem as ListBoxItem);
            Double sz1 = Double.Parse(li.Content.ToString());
            rect1.MaxWidth = sz1;
            rect1.UpdateLayout();
            txt1.Text = "ActualWidth is set to " + rect1.ActualWidth;
            txt2.Text = "Width is set to " + rect1.Width;
            txt3.Text = "MinWidth is set to " + rect1.MinWidth;
            txt4.Text = "MaxWidth is set to " + rect1.MaxWidth;
        }

        public void clipRect(object sender, RoutedEventArgs args)
        {
            myCanvas.ClipToBounds = true;
            txt5.Text = "Canvas.ClipToBounds is set to " + myCanvas.ClipToBounds;
        }
        public void unclipRect(object sender, RoutedEventArgs args)
        {
            myCanvas.ClipToBounds = false;
            txt5.Text = "Canvas.ClipToBounds is set to " + myCanvas.ClipToBounds;
        }
    }
}                
                
            5�      5�      5�      5�      5�      �� 5�      -   5        $��xamlvb��5�      #��[  6!   $��XAML + Visual Basic.NET��6C   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6*   $
��XAML��6M   �� 5�      #��[ 6   $��VB.NET��6=   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�   
   -   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6>   �� 5�   
   -	   5        $��
managedcpp��5�      #��[  6$   $��Managed C++��6F   �� 5�   
   #��[  6   $��Preview Sample��64   .��5�      �� 
���   �$��2q�6!   
�������._�5�      �� $��10q�6   .+�5�      �� $��20(�6   $	��Top=�6   Width Properties Sample6J   �� 5�   
   $
��Wrap=�6   $��0,0,0,10q�6(   ��Four properties are exposed on FrameworkElement that describe an element's Width characteristics. It is possible for these values to be in conflict. This example demonstrates how those conflicts between values are resolved.6  �� 5�   
   $
��Wrap=�6   $��0,0,0,10q�6(   ��If viewed on a continuum, MinWidth value takes precedence over MaxWidth value, which in turn takes precedence over the Width value. This is best demonstrated visually:6�   �� 5�      -
   5        $��myCanvas��5�   |   $	��200��6   $	��200��6"   ���#b0c4de$	��Top=�6F   $��Center=�6_   .+�5�      �� -   5        $��rect1��5�   [   $��Center=�6   
 �� Top$ 50��69    �� Left$ 50��6I   ���#4682b4$	��100��6w   $	��100��6�   5�      �� 5�   
    �� Orientation$ 
Horizontal=�6   $��Center=�6.   .+�5�      �� -   5        $��Button1��5�      $��0,5,5,5q�65   .��6F   Canvas.ClipToBounds="True"6b   �� 6j   -   5        $��Button2��5�   q   $��0,5,5,5q�6�   .��6�   Canvas.ClipToBounds="False"6�   5�      � 5�       � RowDefinitions 5�      �� 5�      �� 5�       � ColumnDefinitions 5�      �� 5�      $
��Auto �6   �� 5�      $
��Auto �6   �� 5�      $
��Auto �6   �� 5�      $
��Auto �6   �� 5�      $
��Auto �6   �� 5�      $
��Auto �6   .+�5�      �� $��0��6   $��14(�6   $
��Bold"�6+   $��6��6=   $��Center=�6Q   $��	0,15,0,15q�6n   $
��Wrap=�6�   dbUse the ListBoxes below to manipulate the various Width related properties of the Rectangle above.5�   q   �� 5�      $��1��6   $��0��6   $��10,0,0,0q�6-   $
��Wrap=�6?   Set the Rectangle Width:6m   �� 5�      -   5        $��1��5�      $��1��6   $��10,0,0,0q�6+   $��50��6=   $��50��6H   .@�5�      �� .��6   256   �� 5�      .��6   506   �� 5�      .��6   756   �� 5�      .��6   1006   �� 5�      .��6   1256   �� 5�      .��6   1506   �� 5�      .��6   1756   �� 5�      .��6   2006   �� 5�      .��6   2256   �� 5�      .��6   2506   5�      �� 5�      $��1��6   $��2��6   $��10,0,0,0q�6*   $
��Wrap=�6<   Set the Rectangle MinWidth:6m   �� 5�      -   5        $��3��5�      $��1��6   $��10,0,0,0q�6+   $��50��6=   $��50��6H   .@�5�      �� .��6   256   �� 5�      .��6   506   �� 5�      .��6   756   �� 5�      .��6   1006   �� 5�      .��6   1256   �� 5�      .��6   1506   �� 5�      .��6   1756   �� 5�      .��6   2006   �� 5�      .��6   2256   �� 5�      .��6   2506   5�      �� 5�      $��1��6   $��4��6   $��10,0,0,0q�6-   $
��Wrap=�6?   Set the Rectangle MaxWidth:6p   �� 5�      -   5        $��5��5�      $��1��6   $��10,0,0,0q�6+   $��50��6=   $��50��6H   .@�5�      �� .��6   256   �� 5�      .��6   506   �� 5�      .��6   756   �� 5�      .��6   1006   �� 5�      .��6   1256   �� 5�      .��6   1506   �� 5�      .��6   1756   �� 5�      .��6   2006   �� 5�      .��6   2256   �� 5�      .��6   2506   5�      5�      �� 5     -   5        $
��txt1��5     �� 5  
   -   5        $
��txt2��5     �� 5  
   -   5        $
��txt3��5     �� 5  
   -   5        $
��txt4��5     �� 5  
   -   5        $
��txt5��5     5     5     5	     5     5     