   M S B A M L   `   `   `  ����C  ?Concepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null     CompositeCollections.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Composite Collections��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $"��Composite Collections Sample��64    �� 
IsSelected$
 true��6Z   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Composite Collections Sample6[   �� 5        MainContentStyle#��[ 6   dbThis sample shows how to implement data binding using collections composed of mixed types of data.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6*   $
��XAML��6M   .��5      �� $��Visible=�6   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6F     CodeSnippetParagraph#��[ 6   .��6[   ��
<Window Background="Cornsilk"
  xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  xmlns:c="clr-namespace:CompositeCollections"
  x:Class="SDKSample.CompositeCollections"
  Title="CompositeCollections"
  Width = "320"
  Height = "430"
  >
  <Window.Resources>
    <c:GreekGods x:Key="GreekGodsData"/>

    <XmlDataProvider x:Key="GreekHeroesData" XPath="GreekHeroes/Hero">
      <GreekHeroes xmlns="">
        <Hero Name="Jason" />
        <Hero Name="Hercules" />
        <Hero Name="Bellerophon" />
        <Hero Name="Theseus" />
        <Hero Name="Odysseus" />
        <Hero Name="Perseus" />
      </GreekHeroes>
    </XmlDataProvider>
		
    <DataTemplate DataType="{x:Type c:GreekGod}">
      <TextBlock Text="{Binding Path=Name}" Foreground="Gold"/>
    </DataTemplate>
    <DataTemplate DataType="Hero">
      <TextBlock Text="{Binding XPath=@Name}" Foreground="Cyan"/>
    </DataTemplate>
	</Window.Resources>
	
  <StackPanel>
    <TextBlock FontSize="18" FontWeight="Bold" Margin="10"
      HorizontalAlignment="Center">Composite Collections Sample</TextBlock>
    <ListBox Name="lbGodsAndHeroes" Height="300" Width="200" Background="White">
      <ListBox.ItemsSource>
        <CompositeCollection>
          <CollectionContainer Collection="{Binding Source={StaticResource GreekGodsData}}" />
          <CollectionContainer Collection="{Binding Source={StaticResource GreekHeroesData}}" />
          <ListBoxItem Foreground="Red">Other Listbox Item 1</ListBoxItem>
          <ListBoxItem Foreground="Red">Other Listbox Item 2</ListBoxItem>
        </CompositeCollection>
      </ListBox.ItemsSource>
    </ListBox>
  </StackPanel>

</Window>
                
                
              5H      5I      5J      �� 5K      #��[ 6   $��C#��69   .��5L      �� $��Visible=�6   .��5N      ��  preserve6F   #��[ 6   .��6[   ��
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

	public class GreekGod
	{
    private string _name;

		public string Name
		{
      get
      {
        return _name;
      }

      set
      {
        _name = value;
      }
		}

    public GreekGod(string name)
    {
      Name = name;
    }
	}

	public class GreekGods : ObservableCollection<GreekGod>
	{
		public GreekGods()
		{
			Add(new GreekGod("Aphrodite"));
			Add(new GreekGod("Apollo"));
			Add(new GreekGod("Ares"));
			Add(new GreekGod("Artemis"));
			Add(new GreekGod("Athena"));
			Add(new GreekGod("Demeter"));
			Add(new GreekGod("Dionysus"));
			Add(new GreekGod("Hephaestus"));
			Add(new GreekGod("Hera"));
			Add(new GreekGod("Hermes"));
			Add(new GreekGod("Poseidon"));
			Add(new GreekGod("Zeus"));
		}
	}
}
                
                
              5�      5�      5�      5�      5�      �� 5�   
   -   5        $��xamlvb��5�      #��[  6    $��XAML + Visual Basic.NET��6B   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6&   $
��XAML��6I   �� 5�      #��[ 6   $��VB.NET��6;   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -	   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      ;"clr-namespace:CompositeCollectionsCompositeCollections  5�      �� 5�      0c"clr-namespace:CompositeCollections     5�      
�������$	��320��5�      $	��430��5�       � 	Resources 5�      $   CompositeCollections.GreekGods  GreekGodsData  GreekHeroesData � XPath �� DataType#   CompositeCollections.GreekGod �� Path �� XPath��%U  &	       &	      (�� N    5�      *, +)(�� �    5�      *Hero+)  5�      6   � 5�      $ GreekHeroes/Hero��6.   .��5�      ��<GreekHeroes xmlns="">
        <Hero Name="Jason" />
        <Hero Name="Hercules" />
        <Hero Name="Bellerophon" />
        <Hero Name="Theseus" />
        <Hero Name="Odysseus" />
        <Hero Name="Perseus" />
      </GreekHeroes>        5�      �� 5�      "  6   .R�5�      �� 
��� �����6   �� $
 Name�6-   5�      �� 5�      $
 Hero��6   .R�5�      �� 
����� ���6   �� $ @Name��6/   5�      5�      .+�5�      �� .+�5�      �� $��18(�6   $
��Bold"�6   $��10q�60   $��Center=�5�      Composite Collections Sample6B   �� 5�      -
   5        $��lbGodsAndHeroes��5�      $	��300��6%   $	��200��62   
���������5�      -  'System.Windows.Data.CompositeCollection  5�   
   �� 5�      	 �� 
Collection	 6    �� 
 �� Source#
 [ �� 5�      	 6    �� #
 [ �� 5�      
���  ��.��6)   Other Listbox Item 16?   �� 5�      
���  ��.��6)   Other Listbox Item 26?   5�      5�      5�      5�      5�      5�   	   5�      