   M S B A M L   `   `   `  ����  Concepts    myToolTip.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Tool Tip��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Tool Tip Sample��64    �� 
IsSelected$
 true��6M   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Tool Tip Sample6N   �� 5        MainContentStyle#��[ 6   -+This example shows how to create a ToolTip.6o   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6*   $
��XAML��6M   .��5      �� $��Visible=�6   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6F     CodeSnippetParagraph#��[ 6   .��6[   ��
              
<StackPanel  
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="ToolTipSimple_wcp.Pane1"
    >
  <!--  The namespace + class name in the codebehind file and the x:Class attribute in the root of this document, must stay identical.  You can change them, but you must keep them in sync. -->
  <Grid ShowGridLines ="false" Background ="White" >
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
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="0" FontSize="24">ToolTips</TextBlock>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="1" FontSize="14" Grid.ColumnSpan="2">The following tooltip examples demonstrate:</TextBlock>
    <DockPanel Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="2">
      <TextBox HorizontalAlignment="Left">
        TextBox with ToolTip
        <TextBox.ToolTip>
          <ToolTip>
            <TextBlock>useful information goes here</TextBlock>
          </ToolTip>
        </TextBox.ToolTip>
      </TextBox>
    </DockPanel>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="2" FontSize="12" VerticalAlignment="Center">Tooltip attached to a text box control.</TextBlock>

    <DockPanel Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="3">
      <TextBox HorizontalAlignment="Left">
        ToolTip with non-text content
        <TextBox.ToolTip>
          <ToolTip>
            <DockPanel>
              <Image Source="data\flower.jpg"/>
              <TextBlock>useful information goes here</TextBlock>
            </DockPanel>
          </ToolTip>
        </TextBox.ToolTip>
      </TextBox>
    </DockPanel>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="3" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Tooltip with non-text content. The content is a dock panel which contains an image and some text.</TextBlock>

    <DockPanel Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="4">
      <TextBox HorizontalAlignment="Left" ToolTipService.InitialShowDelay="1500">
        ToolTip with delay
        <TextBox.ToolTip>
          <ToolTip>
            <Image Source="data\flower.jpg"/>
          </ToolTip>
        </TextBox.ToolTip>
      </TextBox>
    </DockPanel>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="4" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Tooltip that uses the ToolTipService to delay showing the tooltip.</TextBlock>

    <Button Name="btn" Margin="10, 10, 3, 3" Grid.Column="0" Grid.Row="5" Click="OnClick">Hover over me to create a tooltip with C# code.</Button>
    <TextBlock Margin="10, 10, 3, 3" Grid.Column="1" Grid.Row="5" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Creating a tooltip with C#.</TextBlock>
  </Grid>
  <Canvas Name="cv2" Width="550" Height="50" Canvas.Top="290" Canvas.Left="10"></Canvas>

</StackPanel>

              5b      5c      5d      �� 5e      #��[ 6   $��C#��69   .��5f      �� $��Visible=�6   .��5g      ��  preserve6F   #��[ 6   .��6[   ��
//This is a list of commonly used namespaces for a pane.
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Data;

namespace ToolTipSimple_wcp
{
  /// <summary>
  /// Interaction logic for Pane1.xaml
  /// </summary>

  public partial class Pane1 : StackPanel
  {
    void OnClick(object sender, RoutedEventArgs e)
    {
      ToolTip tt = new ToolTip();
      tt.Content = "Created with C#";
      btn.ToolTip = tt;
    }
  }
}                
                
              5�      5�      5�      5�      5�      �� 5�   
   -   5        $��xamlvb��5�      #��[  6    $��XAML + Visual Basic.NET��6B   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6&   $
��XAML��6I   �� 5�      #��[ 6   $��VB.NET��6;   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -	   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      �� .+�5�      �  � ShowGridLines$ false��6   
������� � ColumnDefinitions 5�      �� 5�      $	��300 �6   �� 5�      $	��250 �6    � RowDefinitions 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      .+�5�      �� $��10, 10, 3, 3q�6   $��0��6"   $��0��62   $��24(�6?   
ToolTips6W   �� 5�      $��10, 10, 3, 3q�6   $��0��6"   $��1��62   $��14(�6?   $��2��6M   -+The following tooltip examples demonstrate:6�   ]� 5�      $��10, 10, 3, 3q�6   $��0��6"   $��2��62   .+�5�      �� $
��Left=�6
   .��6%   TextBox with ToolTip � ToolTip 5�      _� 5�      .��6   �� useful information goes here64   6@   .��5�      5�      5�      �� 5�      $��10, 10, 3, 3q�6   $��1��6"   $��2��62   $��12(�6?   $��Center=�6M   )'Tooltip attached to a text box control.6�   ]� 5�      $��10, 10, 3, 3q�6   $��0��6"   $��3��62   .+�5�      �� $
��Left=�6
   .��6%   ToolTip with non-text content 5�      _� 5�      .��6   ]� .+�6   �� $
��None=�6   ��6-   �� 6;    �� 	UriSource$ \images\flower.jpg?�6G   6x   �� 6   useful information goes here6�   6�   6�   .��5�      5�      5�      �� 5�      $��10, 10, 3, 3q�6   $��1��6"   $��3��62   $��12(�6?   $��Center=�6M   $
��Wrap=�6h   caTooltip with non-text content. The content is a dock panel which contains an image and some text.6�   ]� 5�      $��10, 10, 3, 3q�6   $��0��6"   $��4��62   .+�5�      �� $
��Left=�6
   	 ^� InitialShowDelay$
	 1500��6%   .��6L   ToolTip with delay 5�      _� 5�      .��6   �� $
��None=�6   ��6"   �� 60   $ \images\flower.jpg?�6<   6m   6u   .��5�      5�      5�      �� 5�      $��10, 10, 3, 3q�6   $��1��6"   $��4��62   $��12(�6?   $��Center=�6M   $
��Wrap=�6h   DBTooltip that uses the ToolTipService to delay showing the tooltip.6�   �� 5�      -
   5        $	��btn��5�   	   $��10, 10, 3, 3q�6   $��0��6*   $��5��6:   .��6W   1/Hover over me to create a tooltip with C# code.6�   �� 5�      $��10, 10, 3, 3q�6   $��1��6"   $��5��62   $��12(�6?   $��Center=�6M   $
��Wrap=�6h   Creating a tooltip with C#.6�   5�      �� 5�      -   5        $	��cv2��5�   	   $	��550��6   $��50��6    

 �� Top$	
 290��6,    �� Left$ 10��6=   5�      5�      5�   	   5�      