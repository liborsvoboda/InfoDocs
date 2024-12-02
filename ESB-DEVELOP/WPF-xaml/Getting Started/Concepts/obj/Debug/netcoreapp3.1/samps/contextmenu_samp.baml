   M S B A M L   `   `   `  ����  Concepts    mysamp_Samp.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Sample Title��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Context Menu Sample��64    �� 
IsSelected$
 True��6Q   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Context Menu6K   �� 5        MainContentStyle#��[ 6   <:This example describes how to create ContextMenu controls.6~   �� 5      #��[ 6   pnThe preview window renders code from the C#+Markup tab. The VB+markup code is provided for reference purposes.6�   5      5      �� 5      -   5        $
��xaml��5      #��[  6'   $
��XAML��6I   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6.   $
��XAML��6Q   .��5      �� $��Visible=�6   .��5       �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6V     CodeSnippetParagraph#��[ 6(   .��6k   �)�)
<Canvas
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="ContextMenus.Pane1"
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
    <TextBlock Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="0" FontSize="24">Context Menus</TextBlock>
    <TextBlock Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="1" FontSize="14" Grid.ColumnSpan="2">The following context menu examples demonstrate:</TextBlock>
    <DockPanel Grid.Column="0" Grid.Row="2">
      <Button Height="30">
          Button with Context Menu
        <Button.ContextMenu>
          <ContextMenu>
            <MenuItem Header="File"/>
            <MenuItem Header="Save"/>
            <MenuItem Header="SaveAs"/>
            <MenuItem Header="Recent Files">
              <MenuItem Header="ReadMe.txt"/>
              <MenuItem Header="Schedule.xls"/>
            </MenuItem>
          </ContextMenu>
        </Button.ContextMenu>
      </Button>
    </DockPanel>
    <TextBlock Margin="5, 10, 5, 5" Grid.Column="1" Grid.Row="2" FontSize="12" VerticalAlignment="Center">Simple context menu with submenu items.</TextBlock>

    <DockPanel Grid.Column="0" Grid.Row="3">
      <Button Height="30">
            With ToolTip
        <Button.ContextMenu>
          <ContextMenu>
            <MenuItem Header="Edit">
              <MenuItem Header="Cut"/>
              <MenuItem Header="Copy"/>
              <MenuItem Header="Paste"/>
              <MenuItem Mode="Separator"/>
              <MenuItem Header="Context Menu item with ToolTip">
                <MenuItem.ToolTip>
                  <ToolTip>
                    Some information.
                  </ToolTip>
                </MenuItem.ToolTip>
              </MenuItem>
            </MenuItem>
          </ContextMenu>
        </Button.ContextMenu>
      </Button>
    </DockPanel>
    <TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="3" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Context menu item with tooltip.</TextBlock>

    <DockPanel Grid.Column="0" Grid.Row="4">
      <Button Height="30">
        Choose a Pet
        <Button.ContextMenu>
          <ContextMenu>
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
          </ContextMenu>
        </Button.ContextMenu>
      </Button>
    </DockPanel>

    <TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="4" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Image used as a context menu item.</TextBlock>

    <DockPanel Grid.Column="0" Grid.Row="5">
      <Button Height="30">
        Context Menu with AccessText
        <Button.ContextMenu>
          <ContextMenu>
            <MenuItem>
              <MenuItem.Header>
                <TextBlock>
                  <AccessText>P</AccessText>roject
                </TextBlock>
              </MenuItem.Header>
              <MenuItem>
                <MenuItem.Header>
                  <TextBlock>
                    <AccessText>A</AccessText>dd
                  </TextBlock>
                </MenuItem.Header>
              </MenuItem>
              <MenuItem>
                <MenuItem.Header>
                  <TextBlock>
                    <AccessText>D</AccessText>elete
                  </TextBlock>
                </MenuItem.Header>
              </MenuItem>
              <MenuItem Mode="Separator"/>
              <MenuItem Header="Recent Files"/>
            </MenuItem>
          </ContextMenu>
        </Button.ContextMenu>
      </Button>
    </DockPanel>
    <TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="5" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">ContextMenu Item with AccessText. Hover over the menu and press the ALT key to see the AccessText underlined.</TextBlock>

    <Button Height="30" Margin="5, 10, 5, 5" Grid.Column="0" Grid.Row="6" Click="OnClick">Click me to create a context menu with C# code.</Button>
    <TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="6" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Creating a context menu with C#.</TextBlock>
  </Grid>
  <Canvas Name="cv2" Width="550" Height="50" Canvas.Top="280" Canvas.Left="10"></Canvas>
</Canvas>

                
            5�      5�      5�      �� 5�      #��[ 6   $��C#��6=   .��5�      �� $��Visible=�6   .��5�       ��  preserve6V   #��[ 6(   .��6k   �	�	
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Data;
using System.Windows.Media;

namespace ContextMenus
{
  /// <summary>
  /// Interaction logic for Pane1.xaml
  /// </summary>

  public partial class Pane1 : Canvas
  {
    System.Windows.Controls.ContextMenu contextmenu;
    System.Windows.Controls.MenuItem mi, mia, mib, mib1, mib1a;
    System.Windows.Controls.Button btn;

    void OnClick(object sender, RoutedEventArgs e)
    {
      btn = new Button();
      btn.Content = "Create with C#";
      contextmenu = new ContextMenu();
      btn.ContextMenu = contextmenu;
      mi = new MenuItem();
      mi.Header = "File";
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
      contextmenu.Items.Add(mi);
      cv2.Children.Add(btn);
    }

  }
}         
                
            5�      5�      5�      5�      5�      �� 5�      -   5        $��xamlvb��5�      #��[  6!   $��XAML + Visual Basic.NET��6C   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6*   $
��XAML��6M   .��5�      �� $��Visible=�6   .��5�      ��  preserve6K   #��[ 6   .��6`   � �
 
<Canvas  
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="ContextMenusVB.Pane1"
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
<TextBlock Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="0" FontSize="24">Context Menus</TextBlock>
<TextBlock Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="1" FontSize="14" Grid.ColumnSpan="2">The following context menu examples demonstrate:</TextBlock>  
<DockPanel Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="2">
<Button Height="30">Button with ContextMenu
<Button.ContextMenu> 
<ContextMenu>
   <MenuItem Header="File"/>
   <MenuItem Header="Save"/>
   <MenuItem Header="SaveAs"/>
   <MenuItem Header="Recent Files">
        <MenuItem Header="ReadMe.txt"/>
        <MenuItem Header="Schedule.xls"/>          
   </MenuItem>
</ContextMenu>
</Button.ContextMenu>
</Button>
</DockPanel>
<TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="2" FontSize="12" VerticalAlignment="Center">Simple context menu with submenu items.</TextBlock>  

<DockPanel Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="3">
<Button Height="30">With ToolTip
<Button.ContextMenu>
<ContextMenu>
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
</ContextMenu>
</Button.ContextMenu>
</Button>
</DockPanel>
<TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="3" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Context menu item with tooltip.</TextBlock> 

<DockPanel Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="4">
<Button Height="30">With AccessText
<Button.ContextMenu>
<ContextMenu>
      <MenuItem>
        <MenuItem.Header>
        <TextBlock><AccessText>P</AccessText>roject</TextBlock>
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
</ContextMenu>
</Button.ContextMenu>
</Button>
</DockPanel>
<TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="4" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Context menu Item with AccessText. Hover over the menu and press the ALT key to see the AccessText underlined.</TextBlock>
  
<Button Height="30" Margin="10, 10, 5, 5" Grid.Column="0" Grid.Row="6" Click="OnClick">Click me to create a context menu with VisualBasic.Net.</Button>
<TextBlock Margin="10, 10, 5, 5" Grid.Column="1" Grid.Row="6" FontSize="12" VerticalAlignment="Center" TextWrapping="Wrap">Creating a context menu with VisualBasic.Net.</TextBlock>
</Grid>
<Canvas Name="cv2" Width="550" Height="50" Canvas.Top="280" Canvas.Left="10"></Canvas>
</Canvas>


                                                  
                                                  
                   5U     5W     5X     �� 5Y     #��[ 6   $��VB.NET��6=   .��5Z     �� $��Visible=�6   .��5\  '   ��  preserve6]   #��[ 6/   .��6r   ��
Imports System
Imports System.Windows
Imports System.Windows.Controls
Imports System.Windows.Controls.Primitives
Imports System.Windows.Documents
Imports System.Windows.Navigation
Imports System.Windows.Shapes
Imports System.Windows.Data
Imports System.Windows.Media


Namespace ContextMenusVB

    '@ <summary>
    '@ Interaction logic for Pane1_xaml.xaml
    '@ </summary>
    Partial Class Pane1
        Sub OnClick(ByVal sender As Object, ByVal args As RoutedEventArgs)
           Dim btn As New Button()
           Dim contextmenu As New ContextMenu()
           Dim mi As New MenuItem()
           Dim mia As New MenuItem()

           btn.Background = Brushes.Red
           btn.Height = 30
           btn.Content = "Created with VB"
 
           mi.Header = ("Item 1")
           contextmenu.Items.Add(mi)
           mia.Header = ("Item 2")
           contextmenu.Items.Add(mia)

           btn.ContextMenu = (contextmenu)
           cv2.Children.Add(btn)

        End Sub
    End Class

End Namespace                  
                  
                                     5�  (   5�     5�     5�     5�     �� 5�  
   -   5        $��csharp��5�     #��[  6    $��C#��6B   �� 5�     -   5        $��vb��5�     #��[  6   $��Visual Basic.NET��6:   �� 5�     -	   5        $��
managedcpp��5�     #��[  6    $��Managed C++��6B   �� 5�     #��[  6   $��Preview Sample��60   .��5�     �� .+�5�     � -
   5        $
��grid��5�      � ShowGridLines$ False��6   
������� � ColumnDefinitions 5�     �� 5�  
   $	��300 �6   �� 5�  
   $	��250 �6    � RowDefinitions 5�     �� 5�  
   �� 5�  
   �� 5�  
   �� 5�  
   �� 5�  
   �� 5�  
   �� 5�  
   �� 5�  
   �� 5�  
   �� 5�  
   �� 5�  
   �� 5�  
   �� 5�  
   .+�5�  
   �� $��10, 10, 5, 5q�6   $��0��6*   $��0��6:   $��24(�6G   Context Menus6d   �� 5�  
   $��10, 10, 5, 5q�6   $��0��6*   $��1��6:   $��14(�6G   $��2��6U   20The following context menu examples demonstrate:6�   ]� 5�  
   $��0��6   $��2��6$   .+�5�     �� $��30��6   .��6!   Button with Context Menu � ContextMenu 5�     �� 5�     .@�5�     m� $
��File��6#   m� 5�     $
��Save��6#   m� 5�     $��SaveAs��6#   m� 5�     $��Recent Files��6#   .@�5�     m� $��
ReadMe.txt��6'   m� 5�     $��Schedule.xls��6'   5�     5�     5�     5�     �� 5�  
   $��5, 10, 5, 5q�6   $��1��6)   $��2��69   $��12(�6F   $��Center=�6T   )'Simple context menu with submenu items.6�   ]� 5�  
   $��0��6   $��3��6$   .+�5�     �� $��30��6   .��6!   With ToolTip 5�     �� 5�     .@�5�     m� $
��Edit��6#   .@�5�     m� $	��Cut��6'   m� 5�     $
��Copy��6'   m� 5�     $��Paste��6'   �� 5�     m� 5�     $$��Context Menu item with ToolTip��6'    � ToolTip 5�  "   _� 5�  &   .��6.   Some information.5�  '   5�     5�     5�     5�     5�     �� 5�  
   $��10, 10, 5, 5q�6   $��1��6*   $��3��6:   $��12(�6G   $��Center=�6U   $
��Wrap=�6p   !Context menu item with tooltip.6�   ]� 5�  
   $��0��6   $��4��6$   .+�5�     �� $��30��6   .��6!   Choose a Pet 5�     �� 5�     .@�5�     m� $��Animals��6#   .@�5�     m� ��5�  "   �� 5�  &   $
��None=�6,   ��6<   �� 6J   	 �� 	UriSource$	 \images\cat.png?�6V   6�   5�     m� 5�     ��5�  "   �� 5�  &   $
��None=�6,   ��6<   �� 6J   $	 \images\dog.png?�6V   6�   5�     m� 5�     ��5�  "   �� 5�  &   $
��None=�6,   ��6<   �� 6J   $	 \images\fish.png?�6V   6�   5�     5�     5�     5�     5�     �� 5�  
   $��10, 10, 5, 5q�6   $��1��6*   $��4��6:   $��12(�6G   $��Center=�6U   $
��Wrap=�6p   $"Image used as a context menu item.6�   ]� 5�  
   $��0��6   $��5��6$   .+�5�     �� $��30��6   .��6!   Context Menu with AccessText 5�     �� 5�     .@�5�     m� ��5�     �� 5�  "   �� 5�  &   .��61   P64   roject5�  #   .@�5�     m� ��5�  "   �� 5   &   �� 5  *   .��65   A68   dd5  '   5     m� 5     ��5  "   �� 5  &   �� 5  *   .��65   D68   elete5	  '   5     �� 5     m� 5     $��Recent Files��6'   5     5     5     5     �� 5  
   $��10, 10, 5, 5q�6   $��1��6*   $��5��6:   $��12(�6G   $��Center=�6U   $
��Wrap=�6p   omContextMenu Item with AccessText. Hover over the menu and press the ALT key to see the AccessText underlined.6�   �� 5  
   -   5        $��30��5     $��5, 10, 5, 5q�6   $��0��62   $��6��6B   .��6_   1/Click me to create a context menu with C# code.6�   �� 5  
   $��10, 10, 5, 5q�6   $��1��6*   $��6��6:   $��12(�6G   $��Center=�6U   $
��Wrap=�6p   " Creating a context menu with C#.6�   5     �� 5     -   5        $	��cv2��5     $	��550��6   $��50��6$   

 �� Top$	
 280��60    �� Left$ 10��6A   5     5     5     5     