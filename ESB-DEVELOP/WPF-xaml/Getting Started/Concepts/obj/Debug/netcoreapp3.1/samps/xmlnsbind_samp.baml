   M S B A M L   `   `   `  ����  Concepts    XMLNamespaceBind.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  XML Namespace Bind��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��XML Namespace Bind Sample��64    �� 
IsSelected$
 true��6W   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   XML Namespace Bind Sample6X   �� 5        MainContentStyle#��[ 6   trThis sample shows how to bind to data in Extensible Markup Language (XML) data sources while using XML namespaces.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   .��6W   ��

<StackPanel xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  HorizontalAlignment="Left"
  VerticalAlignment="Top"
  >

  <StackPanel.Resources>
    <XmlDataNamespaceManager x:Key="NS">
      <XmlNamespace Prefix="y" Uri="http://test" />
    </XmlDataNamespaceManager>

    <XmlDataProvider x:Key="BookData" XPath="/y:Books" XmlNamespaceManager="{StaticResource NS}">
      <Books xmlns="http://test">
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
          <Binding XPath="y:Title"/>
        </TextBlock.Text>
      </TextBlock>
    </DataTemplate>
  </StackPanel.Resources>

  <TextBlock FontSize="18" FontWeight="Bold" Margin="10"
    HorizontalAlignment="Center">XML Namespace Binding Sample</TextBlock>
  <ListBox
    HorizontalAlignment="Center"
    Width="400"
    Height="200"
    Background="Honeydew"
    Binding.XmlNamespaceManager="{StaticResource NS}"
    ItemsSource="{Binding Source={StaticResource BookData}, XPath=y:Book, Mode=TwoWay}"
    ItemTemplate="{StaticResource BookDataTemplate}"/>
</StackPanel>
            
            5N      5O      5P      5Q      �� 5R   
   -   5        $��
xamlcsharp��5R      #��[  6$   $��	XAML + C#��6F   .��5S      ��  �� TabStripPlacement$ Right=�6   .@�5T      �� -   5        $��xcsharpCheck��5T        	TabStyle2#��[ 6*   $
��XAML��6M   �� 5U      #��[ 6   $��C#��6;   5V      5W      �� 5Y   
   -   5        $��xamlvb��5Y      #��[  6    $��XAML + Visual Basic.NET��6B   .��5Z      �� $ Right=�6   .@�5[      �� -   5        $��xvbCheck��5[      #��[ 6&   $
��XAML��6I   �� 5\      #��[ 6   $��VB.NET��6;   5]      5^      �� 5`   
   -   5        $��csharp��5`      #��[  6    $��C#��6B   �� 5b      -	   5        $��vb��5b      #��[  6   $��Visual Basic.NET��6:   �� 5d      -
   5        $��
managedcpp��5d      #��[  6    $��Managed C++��6B   �� 5f      #��[  6   $��Preview Sample��60   .��5h      �� $
��Left=�5i      $	��Top=�5j       � 	Resources 5m      7  1System.Windows.Data.XmlNamespaceMappingCollection  Ns 
� Prefix
 
� Uri  BookData � XPath � XmlNamespaceManager  BookDataTemplate	 �� XPath��%�  &	       &	 I     7  &	 9      5n      
� 5o      $ y��6   $ http://test?�6'   5p      � 5s      $ /y:Books��6'   8   .��5t      ��<Books xmlns="http://test">
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
        </Books>        5�      �� 5�      .R�5�      �� $��10(�6   
���  ����5�   
   �� 5�      $	 y:Title��6   5�   	   5�      5�      .+�5�      �� $��18(�6   $
��Bold"�6   $��10q�6.   $��Center=�5�      XML Namespace Binding Sample6@   �� 5�      $��Center=�5�      $	��400��5�      $	��200��5�      
�������
 �� XmlNamespaceManager#
 [ 5�      #��[ 5�      ��5�      ��  �� Source# [ $	 y:Book�� �� Mode$ TwoWay=�5�      5�      5�      5�   	   5�      