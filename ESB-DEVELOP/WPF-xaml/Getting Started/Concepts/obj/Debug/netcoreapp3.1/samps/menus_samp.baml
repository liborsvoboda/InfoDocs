   M S B A M L   `   `   `  ����  Concepts    Menus.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Sample Title��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Menus Sample��64    �� 
IsSelected$
 True��6J   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Menus6D   �� 5        MainContentStyle#��[ 6   1/This example shows how to create Menu controls.6s   �� 5      #��[ 6   pnThe preview window renders code from the C#+Markup tab. The VB+markup code is provided for reference purposes.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6*   $
��XAML��6M   .��5      �� $��Visible=�6   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6F     CodeSnippetParagraph#��[ 6   .��6[   �#�#
                   
<Canvas
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="Menus.Pane1"
    Name="cv1" 
    >
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
  <TextBlock Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="0" FontSize="24">Menus</TextBlock>
  <TextBlock Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="1" FontSize="14" Grid.ColumnSpan="2">The following menu examples demonstrate:</TextBlock>  
  <DockPanel Grid.Column="0" Grid.Row="2">
    <Menu Background="Gray" Width="30"  Margin="10, 10, 5, 5" HorizontalAlignment="Left">
      <MenuItem Header="File">
        <MenuItem Header="New"/>
        <MenuItem Header="Open"/>
	    <MenuItem Mode="Separator"/>
        <MenuItem Header="submenu">
          <MenuItem Header="submenuitem1"/>
          <MenuItem Header="submenuitem2">          
            <MenuItem Header="submenuitem2.1"/>
          </MenuItem>
        </MenuItem>
      </MenuItem>
    </Menu>
  </DockPanel>
  <TextBlock Margin="5, 10, 5, 5" Grid.Column="1" Grid.Row="2" FontSize="12" VerticalAlignment="Center">Simple menu with submenu items.</TextBlock>  
  <DockPanel Grid.Column="0" Grid.Row="3">
    <Menu Background="Pink" Width="30" Margin="10, 10, 5, 5" HorizontalAlignment="Left">
      <MenuItem Header="Edit">
        <MenuItem Header="Cut"/>
        <MenuItem Header="Copy"/>
        <MenuItem Header="Paste"/>
	    <MenuItem Mode="Separator"/>
        <MenuItem Header="Menu item with ToolTip">
          <MenuItem.ToolTip>
            <ToolTip>
              Some information.
            </ToolTip>
          </MenuItem.ToolTip>
        </MenuItem>
      </MenuItem>
    </Menu>
  </DockPanel>

  <TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="3" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Menu item with ToolTip.</TextBlock> 
  <DockPanel Grid.Column="0" Grid.Row="4">
    <Menu Background="Red" Width="50" Height="25" Margin="10, 10, 5, 5" HorizontalAlignment="Left">
      <MenuItem>
        <MenuItem.Header>
          <TextBlock>
            <AccessText>P</AccessText>roject
          </TextBlock>
        </MenuItem.Header>
          <MenuItem>
            <MenuItem.Header>
              <TextBlock><AccessText>A</AccessText>dd</TextBlock>
            </MenuItem.Header>
          </MenuItem>
          <MenuItem>
            <MenuItem.Header>
              <TextBlock><AccessText>D</AccessText>elete</TextBlock>
            </MenuItem.Header>
          </MenuItem>
	    <MenuItem Mode="Separator"/>
        <MenuItem Header="Recent Files"/>
      </MenuItem>
     
    </Menu>
  </DockPanel>

  <TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="4" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Menu Item with AccessText. Hover over the menu and press the ALT key to see the AccessText underlined.</TextBlock>
  <DockPanel Grid.Column="0" Grid.Row="5">
    <Menu Background="LightGreen" Width="50"  Margin="10, 10, 5, 5" HorizontalAlignment="Left">
      <MenuItem Header="Animals">
        <MenuItem>
          <MenuItem.Header>
            <Image Source="\images\cat.png"/>
          </MenuItem.Header>
        </MenuItem>
        <MenuItem>
          <MenuItem.Header>
            <Image Source="\images\dog.png"/>
          </MenuItem.Header>
        </MenuItem>
        <MenuItem>
          <MenuItem.Header>
            <Image Source="\images\fish.png"/>
          </MenuItem.Header>
        </MenuItem>
      </MenuItem>
    </Menu>
  </DockPanel>
  <TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="5" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Image used as a menu item.</TextBlock> 
  <Button Margin="5, 10, 5, 5" Grid.Column="0" Grid.Row="6" Click="OnClick">Click me to create a menu with C# code.</Button>
  <TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="6" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Creating a menu with C#.</TextBlock>
  </Grid>
  <Canvas Name="cv2" Width="550" Height="50" Canvas.Top="280" Canvas.Left="10"></Canvas>
</Canvas>
            
                
            
                  
                  5�      5�      5�      �� 5�      #��[ 6   $��C#��69   .��5�      �� $��Visible=�6   .��5�      ��  preserve6I   #��[ 6   ��
//This is a list of commonly used namespaces for a pane.
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Data;
using System.Windows.Media;

namespace Menus
{
	/// <summary>
	/// Interaction logic for Pane1.xaml
	/// </summary>

	public partial class Pane1 : Canvas
	{
        System.Windows.Controls.Menu menu;
        System.Windows.Controls.MenuItem mi, mia, mib, mib1, mib1a;

        void OnClick(object sender, RoutedEventArgs e)
		{
		    menu = new Menu();
            menu.Background = Brushes.LightBlue;
			mi = new MenuItem();
			mi.Header = "File";
			menu.Items.Add(mi);
			mia = new MenuItem();
			mia.Header = "New";
			mi.Items.Add(mia);
			mib = new MenuItem();
			mib.Header = "Open";
			mi.Items.Add(mib);
			mib1 = new MenuItem();
			mib1.Header = "Recently Opened";
			mib.Items.Add(mib1);
			mib1a = new MenuItem();
			mib1a.Header = "Text.xaml";
			mib1.Items.Add(mib1a);
			cv2.Children.Add(menu);
		}

	}
}         
                
            5�      5�      5�      5�      5�      �� 5�   
   -   5        $��xamlvb��5�      #��[  6    $��XAML + Visual Basic.NET��6B   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6&   $
��XAML��6I   .��5�      �� $��Visible=�6   .��5�      ��  preserve6F   #��[ 6   .��6[   ��

<Canvas  
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="MenusVB.Pane1"
    Name="cv1"
    >
    <!--  The namespace + class name in the codebehind file and the x:Class attribute in the root of this document, must stay identical.  You can change them, but you must keep them in sync. -->
    
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
<TextBlock Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="0" FontSize="24">Menus</TextBlock>
<TextBlock Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="1" FontSize="14" Grid.ColumnSpan="2">The following menu examples demonstrate:</TextBlock>  
<DockPanel Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="2"> 
<Menu Background="Gray" Width="30" HorizontalAlignment="Left">
   <MenuItem Header="File">
          <MenuItem Header="New"/>
          <MenuItem Header="Open"/>
	  <MenuItem Mode="Separator"/>
          <MenuItem Header="submenu">
                <MenuItem Header="submenuitem1"/>
                <MenuItem Header="submenuitem2">          
                      <MenuItem Header="submenuitem2.1"/>
                </MenuItem>
         </MenuItem>
   </MenuItem>
</Menu></DockPanel>
<TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="2" FontSize="12" VerticalAlignment="Center">Simple menu with submenu items.</TextBlock>  
<DockPanel Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="3">
<Menu Background="Pink" Width="30" HorizontalAlignment="Left">
      <MenuItem Header="Edit">
          <MenuItem Header="Cut"/>
          <MenuItem Header="Copy"/>
          <MenuItem Header="Paste"/>
	  <MenuItem Mode="Separator"/>
      <MenuItem Header="Menu item with ToolTip">
          <MenuItem.ToolTip>
            <ToolTip>
            Some information.
            </ToolTip>
          </MenuItem.ToolTip>
      </MenuItem>
     </MenuItem>
     
</Menu></DockPanel>
<TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="3" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Menu item with ToolTip.</TextBlock> 
<DockPanel Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="4">
<Menu Background="Red" Width="50" Height="20" HorizontalAlignment="Left">
      <MenuItem>
        <MenuItem.Header>
        <TextBlock><AccessText>P</AccessText>roject</TextBlock>
        </MenuItem.Header>
          <MenuItem>
            <MenuItem.Header>
              <TextBlock><AccessText>A</AccessTexe>dd</TextBlock>
            </MenuItem.Header>
          </MenuItem>
          <MenuItem>
            <MenuItem.Header>
              <TextBlock><AccessText>D</AccessText>elete</TextBlock>
            </MenuItem.Header>
          </MenuItem>
	  <MenuItem Mode="Separator"/>
      <MenuItem Header="Recent Files"/>
     </MenuItem>
     
</Menu></DockPanel>

<TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="4" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Menu Item with AccessText. Hover over the menu and press the ALT key to see the AccessText underlined.</TextBlock>
  
<Button Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="6" Click="OnClick">Click me to create a menu with VisualBasic.Net.</Button>
<TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="6" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Creating a menu with VisualBasic.Net.</TextBlock>
</Grid>
<Canvas Name="cv2" Width="550" Height="50" Canvas.Top="280" Canvas.Left="10"></Canvas>
</Canvas>
  
              5/     52     53     �� 54     #��[ 6   $��VB.NET��69   .��55     �� $��Visible=�6   .��56     ��  preserve6F   #��[ 6   .��6[   ��
Imports System
Imports System.Windows
Imports System.Windows.Controls
Imports System.Windows.Controls.Primitives
Imports System.Windows.Documents
Imports System.Windows.Navigation
Imports System.Windows.Shapes
Imports System.Windows.Data
Imports System.Windows.Media


Namespace MenusVB

    '@ <summary>
    '@ Interaction logic for Pane1_xaml.xaml
    '@ </summary>
    Partial Class Pane1
        Sub OnClick(ByVal sender As Object, ByVal args As RoutedEventArgs)
           Dim mn As New Menu()
           mn.Background = Brushes.LightBlue

           Dim mi As New MenuItem()
           mi.Header = ("File")

           Dim mi1 As New MenuItem()
           mi1.Header = ("New...")

           Dim mi2 As New MenuItem()
           mi2.Header = ("Open...")

           Dim mi3 As New MenuItem()
           mi3.Header = ("Recently Opened")

           mn.Items.Add(mi)
           mi.Items.Add(mi1)
           mi.Items.Add(mi2)
           mi.Items.Add(mi3)

          cv2.Children.Add(mn)

        End Sub
    End Class

End Namespace                          
                          
                          
              5e     5f     5g     5h     5i     �� 5k  
   -   5        $��csharp��5k     #��[  6    $��C#��6B   �� 5m     -   5        $��vb��5m     #��[  6   $��Visual Basic.NET��6:   �� 5o     -	   5        $��
managedcpp��5o     #��[  6    $��Managed C++��6B   �� 5q     #��[  6   $��Preview Sample��60   .��5t     �� -
   5        $	��cv1��5t     .+�5v     � -   5        $
��grid��5v      � ShowGridLines$ False��6   
������� � ColumnDefinitions 5w     �� 5x     $	��300 �6#   �� 5y     $	��250 �6#    � RowDefinitions 5{     �� 5|     �� 5}     �� 5~     �� 5     �� 5�     �� 5�     �� 5�     �� 5�     �� 5�     �� 5�     �� 5�     �� 5�     �� 5�     .+�5�     �� $��10, 10, 5, 5q�6   $��0��60   $��0��6@   $��24(�6M   Menus6b   �� 5�     $��10, 10, 5, 5q�6   $��0��60   $��1��6@   $��14(�6M   $��2��6[   *(The following menu examples demonstrate:6�   ]� 5�     $��0��6   $��2��6*   .+�5�     o� 
�������$��30��6)   $��10, 10, 5, 5q�65   $
��Left=�6K   .@�5�     m� $
��File��6   .@�5�     m� $	��New��6   m� 5�     $
��Open��6   �� 5�     m� 5�     $��submenu��6   .@�5�     m� $��submenuitem1��6!   m� 5�     $��submenuitem2��6!   .@�5�     m� $��submenuitem2.1��6#   5�     5�     5�     5�     5�     �� 5�     $��5, 10, 5, 5q�6   $��1��6/   $��2��6?   $��12(�6L   $��Center=�6Z   !Simple menu with submenu items.6�   ]� 5�     $��0��6   $��3��6*   .+�5�     o� 
�������$��30��6)   $��10, 10, 5, 5q�64   $
��Left=�6J   .@�5�     m� $
��Edit��6   .@�5�     m� $	��Cut��6   m� 5�     $
��Copy��6   m� 5�     $��Paste��6   �� 5�     m� 5�     $��Menu item with ToolTip��6    � ToolTip 5�     _� 5�     .��6"   Some information.5�     5�     5�     5�     5�     �� 5�     $��10, 10, 5, 5q�6   $��1��60   $��3��6@   $��12(�6M   $��Center=�6[   $
��Wrap=�6v   Menu item with ToolTip.6�   ]� 5�     $��0��6   $��4��6*   .+�5�     o� 
���  ��$��50��6(   $��25��63   $��10, 10, 5, 5q�6?   $
��Left=�6U   .@�5�     m� ��5�     �� 5�     �� 5�     .��6%   P6(   roject5�     .@�5�     m� ��5�     �� 5�     �� 5�     .��6'   A6*   dd5�     5�     m� 5�     ��5�     �� 5�     �� 5�     .��6'   D6*   elete5�     5�     �� 5�     m� 5�     $��Recent Files��6   5�     5�     5�     �� 5�     $��10, 10, 5, 5q�6   $��1��60   $��4��6@   $��12(�6M   $��Center=�6[   $
��Wrap=�6v   hfMenu Item with AccessText. Hover over the menu and press the ALT key to see the AccessText underlined.6�   ]� 5�     $��0��6   $��5��6*   .+�5�     o� 
������$��50��6/   $��10, 10, 5, 5q�6;   $
��Left=�6Q   .@�5�     m� $��Animals��6   .@�5�     m� ��5�     �� 5�     $
��None=�6    ��60   �� 6>    �� 	UriSource$ \images\cat.png?�6J   6x   5�     m� 5�     ��5�     �� 5�     $
��None=�6"   ��62   �� 6@   $ \images\dog.png?�6L   6z   5�     m� 5�     ��5�     �� 5�     $
��None=�6    ��60   �� 6>   $ \images\fish.png?�6J   6y   5�     5�     5�     5�     �� 5�     $��10, 10, 5, 5q�6   $��1��60   $��5��6@   $��12(�6M   $��Center=�6[   $
��Wrap=�6v   Image used as a menu item.6�   �� 5�     -   5        $��5, 10, 5, 5q�5�     $��0��6,   $��6��6<   .��6Y   )'Click me to create a menu with C# code.6�   �� 5�     $��10, 10, 5, 5q�6   $��1��60   $��6��6@   $��12(�6M   $��Center=�6[   $
��Wrap=�6v   Creating a menu with C#.6�   5�     �� 5�     -   5        $	��cv2��5�     $	��550��6    $��50��6,   
	 �� Top$		 280��68   
 �� Left$
 10��6I   5�     5�     5�  	   5�     