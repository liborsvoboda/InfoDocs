   M S B A M L   `   `   `  ����  Concepts    ControlProperties.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Control Properties��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Control Properties Sample��64    �� 
IsSelected$
 true��6W   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Control Properties Sample6X   �� 5        MainContentStyle#��[ 6   OMThis example demonstrates how to retrieve and set control element properties.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6*   $
��XAML��6M   .��5      �� $��Visible=�6   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6F     CodeSnippetParagraph#��[ 6   .��6[   �
�

<StackPanel
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="ControlProps.Pane1"
    >

  <TextBlock FontSize = "16.0">Control Properties</TextBlock>

  <TabControl>
    <TabItem Header="Background" IsSelected="true">
      <Button Name="btn" Background="Red" Click="ChangeBackground">Background</Button>
    </TabItem>
    <TabItem Header="Foreground">
      <Button Name="btn1" Foreground="Black" Click="ChangeForeground">Foreground</Button>
    </TabItem>
    <TabItem Header="FontFamily">
      <Button Name="btn2" FontFamily="Arial" Click="ChangeFontFamily">FontFamily</Button>
    </TabItem>
    <TabItem Header="FontSize">
      <Button Name="btn3" FontSize="10.0" Click="ChangeFontSize">FontSize</Button>
    </TabItem>
    <TabItem Header="FontStyle">
      <Button Name="btn4" FontStyle="Normal" Click="ChangeFontStyle">FontStyle</Button>
    </TabItem>
    <TabItem Header="FontWeight">
      <Button Name="btn5" FontWeight="Normal" Click="ChangeFontWeight">FontWeight</Button>
    </TabItem>
    <TabItem Header="BorderBrush">
      <Button Name="btn6" BorderBrush="Red" Click="ChangeBorderBrush">BorderBrush</Button>
    </TabItem>

  </TabControl>

</StackPanel>
                
                
              5;      5<      5=      �� 5>      #��[ 6   $��C#��69   .��5?      �� $��Visible=�6   .��5A      ��  preserve6F   #��[ 6   .��6[   ��
//This is a list of commonly used namespaces for a pane.
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Data;
using System.Windows.Media;

namespace ControlProps
{
  /// <summary>
  /// Interaction logic for Pane1.xaml
  /// </summary>


  public partial class Pane1 : StackPanel
  {

    string str;
    FontFamily ffamily;
    Double fsize;

    // To use PaneLoaded put Loaded="PaneLoaded" in root element of .xaml file.
    // private void PaneLoaded(object sender, EventArgs e) {}
    // Sample event handler:  
    void ChangeBackground(object sender, RoutedEventArgs e)
    {
      if (btn.Background == Brushes.Red)
      {
        btn.Background = new LinearGradientBrush(Colors.LightBlue, Colors.SlateBlue, 90);
        btn.Content = "Background";
      }
      else
      {
        btn.Background = Brushes.Red;
        btn.Content = "Control background changes from red to a blue gradient.";
      }
    }
    void ChangeForeground(object sender, RoutedEventArgs e)
    {
      if (btn1.Foreground == Brushes.Green)
      {
        btn1.Foreground = Brushes.Black;
        btn1.Content = "Foreground";
      }
      else
      {
        btn1.Foreground = Brushes.Green;
        btn1.Content = "Control foreground(text) changes from black to green.";
      }
    }
    void ChangeFontFamily(object sender, RoutedEventArgs e)
    {
      ffamily = btn2.FontFamily;
      str = ffamily.ToString();
      if (str == ("Arial Black"))
      {
        btn2.FontFamily = new FontFamily("Arial");
        btn2.Content = "FontFamily";
      }
      else
      {
        btn2.FontFamily = new FontFamily("Arial Black");
        btn2.Content = "Control font family changes from Arial to Arial Black.";

      }
    }
    void ChangeFontSize(object sender, RoutedEventArgs e)
    {
      fsize = btn3.FontSize;
      if (fsize == 16.0)
      {
        btn3.FontSize = 10.0;
        btn3.Content = "FontSize";
      }
      else
      {
        btn3.FontSize = 16.0;
        btn3.Content = "Control font size changes from 10 to 16.";
      }
    }
    void ChangeFontStyle(object sender, RoutedEventArgs e)
    {
      if (btn4.FontStyle == FontStyles.Italic)
      {
        btn4.FontStyle = FontStyles.Normal;
        btn4.Content = "FontStyle";
      }
      else
      {
        btn4.FontStyle = FontStyles.Italic;
        btn4.Content = "Control font style changes from Normal to Italic.";
      }
    }
    void ChangeFontWeight(object sender, RoutedEventArgs e)
    {
      if (btn5.FontWeight == FontWeights.Bold)
      {
        btn5.FontWeight = FontWeights.Normal;
        btn5.Content = "FontWeight";
      }
      else
      {
        btn5.FontWeight = FontWeights.Bold;
        btn5.Content = "Control font weight changes from Normal to Bold.";
      }
    }
    void ChangeBorderBrush(object sender, RoutedEventArgs e)
    {
      str = ((btn6.BorderBrush).ToString());
      if (btn6.BorderBrush == Brushes.Red)
      {
        btn6.BorderBrush = Brushes.Black;
        btn6.Content = "BorderBrush";

      }
      else
      {
        btn6.BorderBrush = Brushes.Red;
        btn6.Content = "Control border brush changes from red to black.";
      }
    }


  }
}                
                
              5�      5�      5�      5�      5�      �� 5�   
   -   5        $��xamlvb��5�      #��[  6    $��XAML + Visual Basic.NET��6B   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6&   $
��XAML��6I   �� 5�      #��[ 6   $��VB.NET��6;   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -	   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      �� .+�5�      �� $
��16.0(�6   Control Properties66   �� 5�      .@�5�      �� $��
Background��6   $
 true��6"   .��65   �� -
   5        $	��btn��5�   <   
���  ��.��6q   
Background6}   5�      �� 5�      $��
Foreground��6   .��6#   �� -   5        $
��btn1��5�   *   
���   �.��6b   
Foreground6n   5�      �� 5�      $��
FontFamily��6   .��6#   �� -   5        $
��btn2��5�   *   $��Arial)�66   .��6b   
FontFamily6n   6w   �� 5�      $��FontSize��6   .��6!   �� -   5        $
��btn3��5�   (   $
��10.0(�64   .��6[   
FontSize6e   6n   �� 5�      $��	FontStyle��6   .��6"   �� -   5        $
��btn4��5�   )   $��Normal$�65   .��6`   	FontStyle6k   6t   �� 5�      $��
FontWeight��6   .��6#   �� -   5        $
��btn5��5�   *   $��Normal"�66   .��6c   
FontWeight6o   6x   �� 5�      $��BorderBrush��6   .��6$   �� -   5        $
��btn6��5�   +   
���  ��.��6c   BorderBrush6p   6y   5�      5�      5�      5�   	   5�      