   M S B A M L   `   `   `  ����  Concepts    BindDpToDp.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$5  /Bind Dependency Property to Dependency Property��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $<��6Bind Dependency Property to Dependency Property Sample��64    �� 
IsSelected$
 true��6t   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   86Bind Dependency Property to Dependency Property Sample6u   �� 5        MainContentStyle#��[ 6   xvThis sample shows how to implement data binding between dependency properties and how to bind to an attached property.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6*   $
��XAML��6M   .��5      �� $��Visible=�6   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6F     CodeSnippetParagraph#��[ 6   .��6[   ��

<Window
  xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  x:Class="SDKSample.Window1"
  Width="460"
  Height="200"
  Title="BindDPtoDP">

  <Window.Resources>
    <Style TargetType="{x:Type TextBlock}">
      <Setter Property="FontSize" Value="16"/>
      <Setter Property="FontWeight" Value="Bold"/>
    </Style>
  </Window.Resources>

  <DockPanel Background="White">

    <Button Click="btnChangeSource" Width="150" Height="30"
      DockPanel.Dock="Top">Change Source Property</Button>

    <TextBlock Name="Text1" DockPanel.Dock="Top" FontSize="12"
      Height="30" Foreground="Green">
      <TextBlock.Text>
        Click the Button to Change this Initial Text Value in this Source Element
      </TextBlock.Text>
    </TextBlock>

    <TextBox DockPanel.Dock="Top" Height="30" Foreground="Blue">
      <TextBox.Text>
        <Binding ElementName="Text1" Path="Text"/>
      </TextBox.Text>
    </TextBox>

    <Canvas DockPanel.Dock="Top" Left="0" Height="50" Width="240">
      <Canvas Name="Canvas1" Canvas.Top="10" Height="30" Width="70" Left="0" >
        <Canvas.Background>
          <Binding ElementName="Text1" Path="Foreground"/>
        </Canvas.Background>
      </Canvas>

      <Canvas Height="30" Width="70" Left="80"
        Canvas.Top="{Binding ElementName=Canvas1, Path=Top}"
        Background="{Binding ElementName=Canvas1, Path=Background}"/>

      <TextBlock Name="Text2" Canvas.Left="170"
        Canvas.Top="{Binding ElementName=Canvas1, Path=Top}"
        Foreground="Black">Text1</TextBlock>

      <TextBlock Canvas.Left="240"
        Canvas.Top="{Binding ElementName=Text2, Path=(Canvas.Top)}"
        Foreground="{Binding ElementName=Canvas1, Path=Background}">Text2</TextBlock>
    </Canvas>

  </DockPanel>

</Window>
                
                
              5R      5S      5T      �� 5U      #��[ 6   $��C#��69   .��5V      �� $��Visible=�6   .��5X      ��  preserve6F   #��[ 6   .��6[   ��


using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Data;
using System.Windows.Media;

namespace SDKSample
{
  /// <summary>
  /// Window1: This is the class that encapsulates the code
  /// "behind" the Window1.Xaml page.
  /// </summary>
  public partial class Window1 : Window
  {
    static int iCount = 0;

    void btnChangeSource(object sender, RoutedEventArgs e)
    {
      iCount++;
      if ((iCount % 2) == 0)
      {
        Text1.Foreground = Brushes.Green;
        Canvas.SetTop(Canvas1, 10);
      }
      else
      {
        Text1.Foreground = Brushes.Red;
        Canvas.SetTop(Canvas1, 20);
      }
      Text1.Text = string.Format("New Text. Count={0}", iCount);
    }
  }
}


              5�      5�      5�      5�      5�      �� 5�   
   -   5        $��xamlvb��5�      #��[  6    $��XAML + Visual Basic.NET��6B   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6&   $
��XAML��6I   �� 5�      #��[ 6   $��VB.NET��6;   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -	   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      ��  � 	Resources 5�       �� 
TargetType �� Property �� Value��%x   '��       �� 5�      " ��6   .�5�      ��  � ��$ 16(�6#   �� 5�       � ��$
 Bold"�6%   5�      5�      .+�5�      ]� 
�������.+�5�      �� -
   5        $	��150��5�   %   $��30��61   $	��Top=�5�      .��6   Change Source Property64   �� 5�      -   5        $��Text1��5�      $	��Top=�6   $��12(�62   $��30��5�      
��� � �$O��IClick the Button to Change this Initial Text Value in this Source Element��5�      5�      �� 5�      $	��Top=�6   $��30��6#   
����  �.��6A   ��5�      �� 5�   
    �� ElementName$ Text1��6   	 �� Path$
	 Text�6&   .��5�      5�      �� 5�      $	��Top=�6   
 �� Left$
 0��6"   $��50��6+   $	��240��67   .+�5�      �� -   5        $��Canvas1��5�      
 �� Top$ 10��6   $��30��6.   $��70��6:   $
 0��6E   ��5�   
   �� 5�      $ Text1��6   $	 
Foreground�6(   5�   	   �� 5�      $��30��6   $��70��6   $
 80��6&    5�   	   �� $ Canvas1��$		 Top���5�   	   �� $ Canvas1��$	 
Background��� 5�      -   5        $��Text2��5�      $	
 170��6   
���   � 5�   	   �� $ Canvas1��$		 Top�Text15�   #   �� 5�      $	
 240��6    5�   	   �� $ Text2��$	 (Canvas.Top)���5�   	   �� $ Canvas1��$	 
Background�Text26L   5�      5�      5�      5�      5�   	   5�      