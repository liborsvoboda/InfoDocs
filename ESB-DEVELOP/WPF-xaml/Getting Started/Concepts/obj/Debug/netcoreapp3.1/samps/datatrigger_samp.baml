   M S B A M L   `   `   `  ����C  ?Concepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null    SDKSample.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Data Trigger��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Data Trigger Sample��64    �� 
IsSelected$
 true��6Q   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Data Trigger Sample6R   �� 5        MainContentStyle#��[ 6   a_This sample shows how to implement data binding and use both single and multiple data triggers.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6*   $
��XAML��6M   .��5      �� $��Visible=�6   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6F     CodeSnippetParagraph#��[ 6   .��6[   ��

<Window Background="Cornsilk"
  xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  xmlns:c="clr-namespace:SDKSample"
  x:Class="SDKSample.Window1"
  Title="DataTrigger"
  Width = "320"
  Height = "300"
  >
  <Window.Resources>
    <c:Places x:Key="PlacesData"/>

    <Style TargetType="{x:Type ListBoxItem}">
      <Style.Triggers>
        <DataTrigger Binding="{Binding Path=State}" Value="WA">
          <Setter Property="Foreground" Value="Red" />
        </DataTrigger>
        <MultiDataTrigger>
          <MultiDataTrigger.Conditions>
            <Condition Binding="{Binding Path=Name}" Value="Portland" />
            <Condition Binding="{Binding Path=State}" Value="OR" />
          </MultiDataTrigger.Conditions>
          <MultiDataTrigger.Setters>
            <Setter Property="Background" Value="Cyan" />
          </MultiDataTrigger.Setters>
        </MultiDataTrigger>
      </Style.Triggers>
    </Style>

    <DataTemplate DataType="{x:Type c:Place}">
      <Canvas Width="160" Height="20">
        <TextBlock FontSize="10"
    		  Width="130" Canvas.Left="0" Text="{Binding Path=Name}"/>
        <TextBlock FontSize="10"
          Width="30" Canvas.Left="130" Text="{Binding Path=State}"/>
      </Canvas>
    </DataTemplate>
  </Window.Resources>

  <StackPanel>
    <TextBlock FontSize="18" Margin="5" FontWeight="Bold"
      HorizontalAlignment="Center">
      Data Trigger Sample
    </TextBlock>
    <ListBox Width="180" HorizontalAlignment="Center" Background="Honeydew"
      ItemsSource="{Binding Source={StaticResource PlacesData}}"/>
  </StackPanel>

</Window>
                
                
              5L      5M      5N      �� 5O      #��[ 6   $��C#��69   .��5P      �� $��Visible=�6   .��5R      ��  preserve6F   #��[ 6   .��6[   �
�

using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Data;

namespace SDKSample
{
  public partial class Window1 : Window
  {
    public Window1()
    {
      InitializeComponent();
    }
  }

  public class Place
  {
    private string _name;

    private string _state;

    public string Name
    {
      get { return _name; }
      set { _name = value; }
    }

    public string State
    {
      get { return _state; }
      set { _state = value; }
    }

    public Place(string name, string state)
    {
      this._name = name;
      this._state = state;
    }
  }

  public class Places : ObservableCollection<Place>
  {
    public Places()
    {
      Add(new Place("Bellevue", "WA"));
      Add(new Place("Gold Beach", "OR"));
      Add(new Place("Kirkland", "WA"));
      Add(new Place("Los Angeles", "CA"));
      Add(new Place("Portland", "ME"));
      Add(new Place("Portland", "OR"));
      Add(new Place("Redmond", "WA"));
      Add(new Place("San Diego", "CA"));
      Add(new Place("San Francisco", "CA"));
      Add(new Place("San Jose", "CA"));
      Add(new Place("Seattle", "WA"));
    }
  }
}               
                
              5�      5�      5�      5�      5�      �� 5�   
   -   5        $��xamlvb��5�      #��[  6    $��XAML + Visual Basic.NET��6B   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6&   $
��XAML��6I   �� 5�      #��[ 6   $��VB.NET��6;   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -	   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      %clr-namespace:SDKSample	SDKSample  6   �� 6   %cclr-namespace:SDKSample     6   
������� � 	Resources 5�         SDKSample.Places  
PlacesData �� 
TargetType �� Triggers �� Binding �� Path	 �� Value
 �� Property �� Value ^� 
Conditions �� Binding �� Value �� DataType   SDKSample.Place �� Left��%�  &	       '��      (�� k    5�      *, +)  5�      6   �� 5�      " ��6    5�      �� 5�       6    �� $ State�	 WA6?   .a�5�      �� 
 � ��
 �  ��63   5�      ^� 5�       5�      �� 5�       6"   �� $
 Name� Portland6@   �� 5�       6"   �� $ State� OR6A   0�5�      �� 5�      
 � ��
 ��� �65   5�      5�      �� 5�      "  6   .R�5�      �� $	��160��6   $��20��6%   .+�5�      �� $��10(�6   $	��130��5�      $ 0��6!   ��61   �� $
 Name��� 5�      $��10(�6   $��30��5�      $	 130��6    ��62   �� $ State�5�      5�      5�      .+�5�      �� .+�5�      �� $��18(�6   $��5q�6(   $
��Bold"�63   $��Center=�5�      Data Trigger Sample5�      �� 5�      $	��180��6   $��Center=�6$   
���������5�      ��  �� Source# [ 5�      5�      5�      5�   	   5�      