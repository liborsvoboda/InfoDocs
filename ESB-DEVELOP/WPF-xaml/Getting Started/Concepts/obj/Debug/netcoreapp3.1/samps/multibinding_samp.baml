   M S B A M L   `   `   `  ����C  ?Concepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null    myMultiBinding.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  MultiBinding��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��MultiBinding Sample��64    �� 
IsSelected$
 true��6Q   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   MultiBinding Sample6R   �� 5        MainContentStyle#��[ 6   64This example demonstrates different button controls.6x   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6*   $
��XAML��6M   .��5      �� $��Visible=�6   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6F     CodeSnippetParagraph#��[ 6   .��6[   ��

<Window Background="Cornsilk"
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    xmlns:c="clr-namespace:myMultiBinding"
    x:Class="myMultiBinding.Window1"
    Width="400"
    Height="280"
	>
	
	<Window.Resources>
    <c:NameList x:Key="NameListData"/>
    <c:NameConverter x:Key="NameConverter"/>

		<DataTemplate x:Key="NameItemTemplate">
			<TextBlock>
				<TextBlock.Text>
					<MultiBinding Converter="{StaticResource NameConverter}">
						<Binding Path="firstName"/>
						<Binding Path="lastName"/>
					</MultiBinding>
				</TextBlock.Text>
			</TextBlock>
		</DataTemplate>
	</Window.Resources>
	
	<StackPanel>
    <TextBlock FontSize="18" FontWeight="Bold" Margin="10"
      HorizontalAlignment="Center">MultiBinding Sample</TextBlock>
		<ListBox Width="300" Background="Honeydew"
		  ItemsSource="{Binding Source={StaticResource NameListData}}"
		  ItemTemplate="{StaticResource NameItemTemplate}"
		  IsSynchronizedWithCurrentItem="True"/>
    <TextBlock Margin="10" HorizontalAlignment="Center">Normal Format</TextBlock>
		<TextBlock Name="tbName1" Width="120" Background="White" HorizontalAlignment="Center"
		  DataContext="{StaticResource NameListData}">
			<TextBlock.Text>
				<MultiBinding Converter="{StaticResource NameConverter}"
				  ConverterParameter="FormatNormal">
					<Binding Path="firstName"/>
					<Binding Path="lastName"/>
				</MultiBinding>
			</TextBlock.Text>
		</TextBlock>
    <TextBlock Margin="10" HorizontalAlignment="Center">Last Name First Format</TextBlock>
		<TextBlock Name="tbName2" Width="120" Background="White" HorizontalAlignment="Center"
		  DataContext="{StaticResource NameListData}">
			<TextBlock.Text>
				<MultiBinding Converter="{StaticResource NameConverter}"
				  ConverterParameter="FormatLastFirst">
					<Binding Path="firstName"/>
					<Binding Path="lastName"/>
				</MultiBinding>
			</TextBlock.Text>
		</TextBlock>
	</StackPanel>
	
</Window>
                
                
              5R      5S      5T      �� 5U      #��[ 6   $��C#��67   .��5V      �� $��Visible=�6   .��5W      ��  preserve6F   #��[ 6   .��6[   ��
                
using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Data;
using System.Globalization;

namespace myMultiBinding
{
  public partial class Window1 : Window
  {
    public Window1()
    {
      InitializeComponent();
      tbName1.Text = "Click Name in Listbox";
      tbName2.Text = "";
    }
  }

  public class NameConverter : IMultiValueConverter
  {
    public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
    {
      string name;

      switch ((string)parameter)
      {
        case "FormatLastFirst":
          name = values[1] + ", " + values[0];
          break;
        case "FormatNormal":
        default:
          name = values[0] + " " + values[1];
          break;
      }

      return name;
    }

    public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
    {
      string[] splitValues = ((string)value).Split(' ');
      return splitValues;
    }
  }

  public class PersonName
  {
    private string _firstName;
    private string _lastName;

    public PersonName(string first, string last)
    {
      this._firstName = first;
      this._lastName = last;
    }

    public string firstName
    {
      get { return _firstName; }
      set { _firstName = value; }
    }

    public string lastName
    {
      get { return _lastName; }
      set { _lastName = value; }
    }
  }

  public class NameList : ObservableCollection<PersonName>
  {
    public NameList() : base()
    {
      Add(new PersonName("Willa", "Cather"));
      Add(new PersonName("Isak", "Dinesen"));
      Add(new PersonName("Victor", "Hugo"));
      Add(new PersonName("Jules", "Verne"));
    }
  }
}


              5�      5�      5�      5�      5�      �� 5�   
   -   5        $��xamlvb��5�      #��[  6    $��XAML + Visual Basic.NET��6B   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6&   $
��XAML��6I   �� 5�      #��[ 6   $��VB.NET��6;   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -	   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      /clr-namespace:myMultiBindingmyMultiBinding  5�      �� 5�      *cclr-namespace:myMultiBinding     5�      
�������$	��400��5�      $	��280��5�       � 	Resources 5�         myMultiBinding.NameList  NameListData"   myMultiBinding.NameConverter  NameConverter  NameItemTemplate `� 	Converter �� Path��%�   &	       &	      &	 &     7    5�      6     5�      6   �� 5�      .R�5�      �� ��5�      `� 5�      8   .1�5�      �� $ 	firstName�6   �� 5�      $ lastName�6   5�      5�      5�      5�      .+�5�      �� .+�5�      �� $��18(�6   $
��Bold"�6   $��10q�60   $��Center=�5�      MultiBinding Sample69   �� 5�      $	��300��6   
�������#��[ 5�      $ �� IsSynchronizedWithCurrentItem$
 TrueY�5�      ��5�      ��  �� Source# [ 5�      �� 5�      $��10q�6   $��Center=�6   Normal Format6H   �� 5�      -
   5        $��tbName1��5�      $	��120��6   
�������$��Center=�6<   	 � DataContext#	 [ 5�      ��5�      `� 5�      # [ 6   
 `� ConverterParameter$
 FormatNormal��5�      .1�5�      �� $ 	FirstName�6   �� 5�      $ LastName�6   5�      5�      �� 5�      $��10q�6   $��Center=�6   Last Name First Format6Q   �� 5�      -   5        $��tbName2��5�      $	��120��6   
�������$��Center=�6<   #	 [ 5�      ��5�      `� 5�      # [ 6   $
 FormatLastFirst��5�      .1�5�      �� $ 	FirstName�6   �� 5�      $ LastName�6   5�      5�      5�      5�      5�      5�   	   5�      