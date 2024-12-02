   M S B A M L   `   `   `  ����  Concepts    ListBoxStyle.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Sample Title��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5      ��    TabStyle#��[  6   $��List Box Sample��6<    �� 
IsSelected$
 true��6U   .��5      �� .+�5	      ��   HeaderStyle#��[ 6$   List Box Styles6Z   �� 5        MainContentStyle#��[ 6$   A?This example demonstrates ListBox controls with styles applied.6�   5      5      �� 5      -   5        $
��xaml��5      #��[  6&   $
��XAML��6H   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6.   $
��XAML��6Q   .��5      �� $��Visible=�6#   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6L     CodeSnippetParagraph#��[ 6   .��6a   �'�'
                      
<Canvas>
  <Canvas.Resources>
    <Style x:Key="Simple" TargetType="{x:Type ListBox}">
      <Setter Property = "SelectionMode" Value="Single"/>
      <Setter Property = "Background" Value="Red"/>
    </Style>

    <Style x:Key="SimpleListBoxItem" TargetType="{x:Type ListBoxItem}">
      <Setter Property = "FontSize" Value="14"/>
      <Setter Property = "Background" Value="Pink"/>
      <Setter Property = "Foreground" Value="Purple"/>
    </Style>

    <Style x:Key="Triggers" TargetType="{x:Type ListBoxItem}">
      <Style.Triggers>
        <Trigger Property="ListBoxItem.IsMouseOver" Value="true">
          <Setter Property = "Foreground" Value="Red"/>
          <Setter Property = "Background" Value="LightBlue"/>
        </Trigger>
      </Style.Triggers>
    </Style>
  </Canvas.Resources>


  <Grid Name="grid" ShowGridLines ="false" Background ="White" >
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
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="0" FontSize="24">List Boxes</TextBlock>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="1" FontSize="14" Grid.ColumnSpan="2">The following list box examples are created using styles:</TextBlock>

    <DockPanel Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="2">
      <TextBox Name="tb" Width="140" Height="30"></TextBox>

      <ListBox Style="{StaticResource Simple}" Width="100" Height="55" SelectionChanged="PrintText">

        <ListBoxItem>Item 1</ListBoxItem>
        <ListBoxItem>Item 2</ListBoxItem>
        <ListBoxItem>Item 3</ListBoxItem>
        <ListBoxItem>Item 4</ListBoxItem>
        <ListBoxItem>Item 5</ListBoxItem>
        <ListBoxItem>Item 6</ListBoxItem>
        <ListBoxItem>Item 7</ListBoxItem>
        <ListBoxItem>Item 8</ListBoxItem>
        <ListBoxItem>Item 9</ListBoxItem>
        <ListBoxItem>Item 10</ListBoxItem>
      </ListBox>
    </DockPanel>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="2" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Style sets the list box to only allow one item to be selected at a time and changes the background color.</TextBlock>

    <DockPanel Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="3">
      <ListBox Width="260" Height="55" HorizontalAlignment="Left">

        <ListBoxItem Style="{StaticResource SimpleListBoxItem}">Item 1</ListBoxItem>
        <ListBoxItem Style="{StaticResource SimpleListBoxItem}">Item 2</ListBoxItem>
        <ListBoxItem Style="{StaticResource SimpleListBoxItem}">Item 3</ListBoxItem>
        <ListBoxItem Style="{StaticResource SimpleListBoxItem}">Item 4</ListBoxItem>
        <ListBoxItem Style="{StaticResource SimpleListBoxItem}">Item 5</ListBoxItem>
        <ListBoxItem Style="{StaticResource SimpleListBoxItem}">Item 6</ListBoxItem>
        <ListBoxItem Style="{StaticResource SimpleListBoxItem}">Item 7</ListBoxItem>
        <ListBoxItem Style="{StaticResource SimpleListBoxItem}">Item 8</ListBoxItem>
        <ListBoxItem Style="{StaticResource SimpleListBoxItem}">Item 9</ListBoxItem>
        <ListBoxItem Style="{StaticResource SimpleListBoxItem}">Item 10</ListBoxItem>
      </ListBox>
    </DockPanel>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="3" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Style changes the background, foreground, and font size of the list box items.</TextBlock>

    <DockPanel Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="4">
      <ListBox Width="260" Height="55" HorizontalAlignment="Left">

        <ListBoxItem Style="{StaticResource Triggers}">Item 1</ListBoxItem>
        <ListBoxItem Style="{StaticResource Triggers}">Item 2</ListBoxItem>
        <ListBoxItem Style="{StaticResource Triggers}">Item 3</ListBoxItem>
        <ListBoxItem Style="{StaticResource Triggers}">Item 4</ListBoxItem>
        <ListBoxItem Style="{StaticResource Triggers}">Item 5</ListBoxItem>
        <ListBoxItem Style="{StaticResource Triggers}">Item 6</ListBoxItem>
        <ListBoxItem Style="{StaticResource Triggers}">Item 7</ListBoxItem>
        <ListBoxItem Style="{StaticResource Triggers}">Item 8</ListBoxItem>
        <ListBoxItem Style="{StaticResource Triggers}">Item 9</ListBoxItem>
        <ListBoxItem Style="{StaticResource Triggers}">Item 10</ListBoxItem>
      </ListBox>
    </DockPanel>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="4" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Style changes the background and foreground colors of the list box items in response to a mouse over event.</TextBlock>

  </Grid>
</Canvas>
             
            5~      5      5�      �� 5�      #��[ 6   $��C#��6=   .��5�      �� $��Visible=�6#   .��5�      ��  preserve6H   #��[ 6   .��6]   ��

using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Data;

namespace ListBoxEvent_wcp
{
	/// Interaction logic for Pane1.xaml

	public partial class Pane1 : Canvas
	{
		void PrintText(object sender, RoutedEventArgs args)
		{
			ListBoxItem li = ((sender as ListBox).SelectedItem as ListBoxItem);

			tb.Text = "   You selected " + li.Content.ToString() + ".";
		}
	}
}
5�      5�      5�      5�      5�      �� 5�      -   5        $��xamlvb��5�      #��[  6!   $��XAML + Visual Basic.NET��6C   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6*   $
��XAML��6M   �� 5�      #��[ 6   $��VB.NET��6=   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -	   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      ��  � 	Resources 5�       
 Simple �� 
TargetType �� Property �� Value  SimpleListBoxItem  Triggers �� Triggers	 P� Property
 P� Value��%�  &	       &	 �     &	     �� 5�      " ��63   .�5�   "   ��  �@��SelectionMode$ Single=�6D   �� 5�   "    � ��
 �  ��6A   5�      �� 5�      " ��6>   .�5�   "   ��  � ��$ 14(�6?   �� 5�   "    � ��
 �����6A   �� 5�   "    � ��
 �� ��6A   5�      �� 5�      " ��65    5�   "   P� 5�   &   	 �@J�IsMouseOver$

 true��6Q   . �5�   *   ��  � ��
 �  ��6I   �� 5�   *    � ��
 ��ح�6I   5�   '   5�      5�      .+�5�      � -
   5        $
��grid��5�       � ShowGridLines$ false��6+   
������� � ColumnDefinitions 5�      �� 5�      $	��300 �6/   �� 5�      $	��250 �6/    � RowDefinitions 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      .+�5�      �� $��10, 10, 3, 3q�6(   $��0��6>   $��0��6N   $��24(�6[   
List Boxes6u   �� 5�      $��10, 10, 3, 3q�6(   $��0��6>   $��1��6N   $��14(�6[   $��2��6i   ;9The following list box examples are created using styles:6�   ]� 5�      $��10, 10, 3, 3q�6(   $��0��6>   $��2��6N   .+�5�   "   �� -   5        $��tb��5�   *   $	��140��64   $��30��6@   �� 5�   "   -   5        #��[ 5�   *   $	��100��6J   $��55��6V   .@�5�   &   �� .��62   Item 16:   �� 5�   &   .��62   Item 26:   �� 5�   &   .��62   Item 36:   �� 5�   &   .��62   Item 46:   �� 5�   &   .��62   Item 56:   �� 5�   &   .��62   Item 66:   �� 5�   &   .��62   Item 76:   �� 5�   &   .��62   Item 86:   �� 5�   &   .��62   Item 96:   �� 5�   &   .��62   	Item 106;   5�   #   5�      �� 5�      $��10, 10, 3, 3q�6(   $��1��6>   $��2��6N   $��12(�6[   $��Center=�6i   $
��Wrap=�6�   kiStyle sets the list box to only allow one item to be selected at a time and changes the background color.6  ]� 5�      $��10, 10, 3, 3q�6(   $��0��6>   $��3��6N   .+�5�   "   �� $	��260��6*   $��55��66   $
��Left=�6B   .@�5�   &   �� #��[ 62   .��6]   Item 16e   �� 5�   &   #��[ 62   .��6]   Item 26e   �� 5�   &   #��[ 62   .��6]   Item 36e   �� 5�   &   #��[ 62   .��6]   Item 46e   �� 5�   &   #��[ 62   .��6]   Item 56e   �� 5�   &   #��[ 62   .��6]   Item 66e   �� 5�   &   #��[ 62   .��6]   Item 76e   �� 5�   &   #��[ 62   .��6]   Item 86e   �� 5�   &   #��[ 62   .��6]   Item 96e   �� 5   &   #��[ 62   .��6]   	Item 106f   5  #   5     �� 5     $��10, 10, 3, 3q�6(   $��1��6>   $��3��6N   $��12(�6[   $��Center=�6i   $
��Wrap=�6�   PNStyle changes the background, foreground, and font size of the list box items.6�   ]� 5     $��10, 10, 3, 3q�6(   $��0��6>   $��4��6N   .+�5  "   �� $	��260��6*   $��55��66   $
��Left=�6B   .@�5  &   �� #��[ 62   .��6T   Item 16\   �� 5	  &   #��[ 62   .��6T   Item 26\   �� 5
  &   #��[ 62   .��6T   Item 36\   �� 5  &   #��[ 62   .��6T   Item 46\   �� 5  &   #��[ 62   .��6T   Item 56\   �� 5  &   #��[ 62   .��6T   Item 66\   �� 5  &   #��[ 62   .��6T   Item 76\   �� 5  &   #��[ 62   .��6T   Item 86\   �� 5  &   #��[ 62   .��6T   Item 96\   �� 5  &   #��[ 62   .��6T   	Item 106]   5  #   5     �� 5     $��10, 10, 3, 3q�6(   $��1��6>   $��4��6N   $��12(�6[   $��Center=�6i   $
��Wrap=�6�   mkStyle changes the background and foreground colors of the list box items in response to a mouse over event.6  5     5     5     5     5     