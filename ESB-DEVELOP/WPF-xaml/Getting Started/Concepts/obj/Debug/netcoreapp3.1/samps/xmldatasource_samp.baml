   M S B A M L   `   `   `  ����  Concepts    XMLDataProvider.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  XML Data Source��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��XML Data Source Sample��64    �� 
IsSelected$
 true��6T   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   XML Data Source Sample6U   �� 5        MainContentStyle#��[ 6   WUThis sample shows how to define XML data sources and how to bind to the data in them.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   .��6W   ��
<StackPanel
  xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  Background="Cornsilk"
  >

  <StackPanel.Resources>
    <XmlDataProvider x:Key="BookData" XPath="/Books">
      <Books xmlns="">
        <Book ISBN="0-7356-0562-9" Stock="in">
          <Title>XML in Action</Title>
          <Summary>XML Web Technology</Summary>
        </Book>
        <Book ISBN="0-7356-1370-2" Stock="in">
          <Title>Programming Microsoft Windows With C#</Title>
          <Summary>C# Programming using the .NET Framework</Summary>
        </Book>
        <Book ISBN="0-7356-1288-9" Stock="out">
          <Title>Inside C#</Title>
          <Summary>C# Language Programming</Summary>
        </Book>
        <Book ISBN="0-7356-1377-X" Stock="in">
          <Title>Introducing Microsoft .NET</Title>
          <Summary>Overview of .NET Technology</Summary>
        </Book>
        <Book ISBN="0-7356-1448-2" Stock="out">
          <Title>Microsoft C# Language Specifications</Title>
          <Summary>The C# language definition</Summary>
        </Book>
      </Books>
    </XmlDataProvider>

    <DataTemplate x:Key="BookDataTemplate">
  		<TextBlock FontSize="10" Foreground="Red">
  			<TextBlock.Text>
  				<Binding XPath="Title"/>
  			</TextBlock.Text>
  		</TextBlock>
    </DataTemplate>
  </StackPanel.Resources>

  <TextBlock FontSize="18" FontWeight="Bold" Margin="10"
    HorizontalAlignment="Center">XML Data Source Sample</TextBlock>
  <ListBox
    Width="400" Height="300" Background="Honeydew"
    ItemsSource="{Binding Source={StaticResource BookData}, XPath=Book}"
    ItemTemplate="{StaticResource BookDataTemplate}"/>

</StackPanel>

            5F      5G      5H      5I      �� 5J   
   -   5        $��
xamlcsharp��5J      #��[  6$   $��	XAML + C#��6F   .��5K      ��  �� TabStripPlacement$ Right=�6   .@�5L      �� -   5        $��xcsharpCheck��5L        	TabStyle2#��[ 6*   $
��XAML��6M   �� 5M      #��[ 6   $��C#��6;   5N      5O      �� 5Q   
   -   5        $��xamlvb��5Q      #��[  6    $��XAML + Visual Basic.NET��6B   .��5R      �� $ Right=�6   .@�5S      �� -   5        $��xvbCheck��5S      #��[ 6&   $
��XAML��6I   �� 5T      #��[ 6   $��VB.NET��6;   5U      5V      �� 5X   
   -   5        $��csharp��5X      #��[  6    $��C#��6B   �� 5Z      -	   5        $��vb��5Z      #��[  6   $��Visual Basic.NET��6:   �� 5\      -
   5        $��
managedcpp��5\      #��[  6    $��Managed C++��6B   �� 5^      #��[  6   $��Preview Sample��60   .��5`      �� 
������� � 	Resources 5d        BookData � XPath  BookDataTemplate �� XPath��%>  &	       &	 �    � 5e      $ /Books��6'   .��5f      ��<Books xmlns="">
        <Book ISBN="0-7356-0562-9" Stock="in">
          <Title>XML in Action</Title>
          <Summary>XML Web Technology</Summary>
        </Book>
        <Book ISBN="0-7356-1370-2" Stock="in">
          <Title>Programming Microsoft Windows With C#</Title>
          <Summary>C# Programming using the .NET Framework</Summary>
        </Book>
        <Book ISBN="0-7356-1288-9" Stock="out">
          <Title>Inside C#</Title>
          <Summary>C# Language Programming</Summary>
        </Book>
        <Book ISBN="0-7356-1377-X" Stock="in">
          <Title>Introducing Microsoft .NET</Title>
          <Summary>Overview of .NET Technology</Summary>
        </Book>
        <Book ISBN="0-7356-1448-2" Stock="out">
          <Title>Microsoft C# Language Specifications</Title>
          <Summary>The C# language definition</Summary>
        </Book>
      </Books>        5~      �� 5�      .R�5�      �� $��10(�6   
���  ����5�      �� 5�      $ Title��6   5�      5�      5�      .+�5�      �� $��18(�6   $
��Bold"�6   $��10q�6.   $��Center=�5�      XML Data Source Sample6:   �� 5�      $	��400��5�      $	��300��6   
�������#��[ 5�      ��5�      ��  �� Source# [ $
 Book��5�      5�      5�      5�   	   5�      