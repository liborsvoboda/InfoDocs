   M S B A M L   `   `   `  ����  Concepts    myDocumentViewer.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Document Viewer��5      .��5      �� $	��400��5   	   $	��500��6   $	��700��6(   .@�5	   
   �� $#��FlowDocumentPageViewer Sample��5
       �� 
IsSelected$
 true��64      TabStyle#��[  5      .��5      �� .+�5      ��   HeaderStyle#��[ 6   FlowDocumentPageViewer Sample6`   �� 5        MainContentStyle#��[ 6   ljThis example demonstrates how to implement a Flow Document hosted within a FlowDocumentPageViewer control.6�   5      5      �� 5   
   -   5        $
��xaml��5      $
��XAML��6   #��[  5      .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve63     CodeSnippetParagraph#��[ .��6a   �I�I
<FlowDocumentPageViewer>  
<FlowDocument xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml">

    <Paragraph Style="{StaticResource HeaderStyle}">Canvas Overview</Paragraph>
    <Paragraph><Rectangle Fill="Black" Height="1" Width="500" HorizontalAlignment="Left" /><LineBreak/></Paragraph>
    
    <Paragraph Style="{StaticResource DisStyle}">[This topic is pre-release documentation and is subject to change in future releases. Blank topics are included as placeholders.]<LineBreak/></Paragraph>
<Paragraph Style="{StaticResource MainContentStyle}">The Canvas element is used to position content according to absolute x- and y-coordinates. Canvas provides ultimate flexibility for positioning and arranging elements on the screen. Elements can be drawn in a unique location, or in the event that elements occupy the same coordinates, the order in which they appear in markup determines the order in which elements are drawn.</Paragraph>

<Paragraph Style="{StaticResource MainContentStyle}">This topic contains the following sections.</Paragraph>

<List>

<ListItem><Paragraph Style="{StaticResource MainContentStyle}">What Can I Do with the Canvas?</Paragraph></ListItem>
<ListItem><Paragraph Style="{StaticResource MainContentStyle}">Adding a Border to a Canvas Element</Paragraph></ListItem>
<ListItem><Paragraph Style="{StaticResource MainContentStyle}">Order of Elements in a Canvas</Paragraph></ListItem>
<ListItem><Paragraph Style="{StaticResource MainContentStyle}">Creating a Canvas in "XAML"</Paragraph></ListItem>
<ListItem><Paragraph Style="{StaticResource MainContentStyle}">Creating a Canvas in Code</Paragraph></ListItem>

</List>
    
    <Paragraph Style="{StaticResource SubHeaderStyle}">What Can I Do with the Canvas?</Paragraph>
    <Paragraph Style="{StaticResource MainContentStyle}">Canvas provides the most flexible layout support of any Panel element. Height and Width properties are used to define the area of the canvas, and elements inside are assigned absolute coordinates relative to the upper left corner of the parent Canvas. This allows you to position and arrange elements precisely where you want them on the screen.</Paragraph>

<Paragraph Style="{StaticResource SubHeaderStyle}">Adding a Border to a Canvas Element</Paragraph>
<Paragraph Style="{StaticResource MainContentStyle}">In order for a Canvas element to have a border, it must be encapsulated within a Border element.</Paragraph>

<Paragraph Style="{StaticResource MainContentStyle}">The following code example shows how to display Hello World within a Canvas with a border and background.</Paragraph>
<Paragraph Style="{StaticResource CodeSnippetParagraph}" xml:space="preserve">
<Page xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation">
    <Border 
       BorderThickness="2"
       BorderBrush="Black"
       Background="LightGray"
       HorizontalAlignment="Left" 
       VerticalAlignment="Top"
       Width="100"
       Height="100">
        <Canvas>
            <TextBlock Canvas.Top="10" Canvas.Left="20">Hello World!</TextBlock>
        </Canvas>
    </Border>
</Page>
</Paragraph>
<Paragraph Style="{StaticResource SubHeaderStyle}">Order of Elements in a Canvas</Paragraph>
<Paragraph Style="{StaticResource MainContentStyle}">The order of child elements (z-index) in a Canvas is determined by their order in "Extensible Application Markup Language" ("XAML") or code. As a consequence, layered order can be achieved when elements share the same coordinates. Canvas and Grid are the only layout controls that supports sharing of space in this manner.</Paragraph>

<Paragraph Style="{StaticResource MainContentStyle}">The following example demonstrates how to achieve layered order of elements within a Canvas. Notice that each Rectangle element is drawn in the order it appears in "XAML".</Paragraph>

<Paragraph Style="{StaticResource CodeSnippetParagraph}" xml:space="preserve">
<Page xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation">
    <Canvas Width="500" Height="500">
        <Rectangle Width="100" Height="100" Canvas.Top="100" Canvas.Left="100" Fill="blue"/>
        <Rectangle Width="100" Height="100" Canvas.Top="150" Canvas.Left="150" Fill="yellow"/>
        <Rectangle Width="100" Height="100" Canvas.Top="200" Canvas.Left="200" Fill="green"/>

        <!-- Reverse the order to illustrate z-index layering -->

        <Rectangle Width="100" Height="100" Canvas.Top="300" Canvas.Left="200" Fill="green"/>
        <Rectangle Width="100" Height="100" Canvas.Top="350" Canvas.Left="150" Fill="yellow"/>
        <Rectangle Width="100" Height="100" Canvas.Top="400" Canvas.Left="100" Fill="blue"/>
    </Canvas>
</Page>
</Paragraph>
<Paragraph Style="{StaticResource SubHeaderStyle}">Creating a Canvas in "XAML"</Paragraph>
<Paragraph Style="{StaticResource MainContentStyle}">A Canvas can be instantiated simply by using "XAML".</Paragraph>

<Paragraph Style="{StaticResource MainContentStyle}">The following markup example demonstrates how to use Canvas to absolutely position content. This markup produces three 100-pixel squares. The first square is red, and its top-left (x, y) position is specified as (0, 0). The second square is green, and its top-left position is (100, 100), just below and to the right of the first square. The third square is blue, and its top-left position is (50, 50), thus encompassing the lower-right quadrant of the first square and the upper-left quadrant of the second. Because the third square is laid out last, it appears to be on top of the other two squares—that is, the overlapping portions assume the color of the third box.</Paragraph>

<Paragraph Style="{StaticResource CodeSnippetParagraph}" xml:space="preserve">
<Page xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation">
    <Canvas Height="600" Width="800">
        <Canvas Height="100" Width="100"  Top="0" Left="0">
            <Rectangle Width="100" Height="100" Fill="red"/>   
        </Canvas>
        <Canvas Height="100" Width="100" Top="100" Left="100">
            <Rectangle Width="100" Height="100" Fill="green"/>  
        </Canvas>
        <Canvas Height="100" Width="100" Top="50" Left="50">
            <Rectangle Width="100" Height="100" Fill="blue"/>  
        </Canvas>    
    </Canvas>
</Page>
</Paragraph>
<Paragraph Style="{StaticResource noteParagraph}"><Bold>Note:</Bold> The Canvas element does not automatically produce scrollbars, even if its assigned width and height are greater than the available screen space. To render scrollbars, wrap the project in its entirety within a ScrollViewer element.</Paragraph>
<Paragraph Style="{StaticResource SubHeaderStyle}">Creating a Canvas in Code</Paragraph>
<Paragraph Style="{StaticResource MainContentStyle}">The following code example shows how to instantiate and use a Canvas using C#. Two TextBlock elements are absolutely positioned using the SetTop and SetLeft methods of the Canvas. The Canvas is assigned a Background color of LightSteelBlue.</Paragraph>

<Paragraph Style="{StaticResource CodeSnippetParagraph}" xml:space="preserve">
[C#]using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Threading;

namespace Canvas_Demo
{
    public class app : System.Windows.Application
    {
        System.Windows.Controls.TextBlock txt1;
        System.Windows.Controls.Canvas canvas;
        System.Windows.Controls.TextBlock txt2;
        System.Windows.Window mainWindow;

        protected override void OnStartingUp (StartingUpCancelEventArgs e)
        {
            base.OnStartingUp(e);
            CreateAndShowMainWindow();
        }

        private void CreateAndShowMainWindow()
        {
            // Create the application's main window
            mainWindow = new System.Windows.Window();

            // Create a canvas sized to fill the window
            canvas = new Canvas();
            canvas.Background = System.Windows.Media.Brushes.LightSteelBlue;

            // Add a "Hello World!" text element to the Canvas
            txt1 = new System.Windows.Controls.TextBlock();
            txt1.FontSize = 14;
            txt1.Text = "Hello World!";
            System.Windows.Controls.Canvas.SetTop(txt1, 100);
            System.Windows.Controls.Canvas.SetLeft(txt1, 10);
            canvas.Children.Add(txt1);

            // Add a second text element to show how absolute positioning works in a Canvas
            txt2 = new System.Windows.Controls.TextBlock();
            txt2.FontSize = 22;
            txt2.Text = "Isn't absolute positioning handy?";
            System.Windows.Controls.Canvas.SetTop(txt2, 200);
            System.Windows.Controls.Canvas.SetLeft(txt2, 75);
            canvas.Children.Add(txt2);
            
            mainWindow.Content= canvas;
            mainWindow.Show();
        }
    }

    internal sealed class EntryClass
    {
        [System.STAThread()]
        private static void Main ()
        {
            app app = new app ();
            app.Run ();
        }
    }
}
</Paragraph>

<Paragraph Style="{StaticResource MainContentStyle}">Send comments about this topic to Microsoft. © Microsoft Corporation. All rights reserved.</Paragraph>
    

</FlowDocument>
</FlowDocumentPageViewer>            
            5�      5�      5�      5�      �� 5�   
   -   5        $��
xamlcsharp��5�      $��	XAML + C#��6   #��[  5�      .��5�      ��  �� TabStripPlacement$ Right=�6   .@�5�      �� -   5        $��xcsharpCheck��5�      $
��XAML��6)     	TabStyle2#��[ 5�      �� 5�      $��C#��6   #��[ 6&   5�      5�      �� 5�   
   -   5        $��xamlvb��5�      $��XAML + Visual Basic.NET��6   #��[  5�      .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      $
��XAML��6%   #��[ 5�      �� 5�      $��VB.NET��6   #��[ 6*   5�      5�      �� 5�   
   -   5        $��csharp��5�      $��C#��6   #��[  5�      �� 5�   
   -	   5        $��vb��5�      $��Visual Basic.NET��6   #��[  5�      �� 5�   
   -
   5        $��
managedcpp��5�      $��Managed C++��6   #��[  5�      �� 5�   
   $��Preview Sample��6   #��[  6*   .��5�      .� .��5�      /� .T�5�      J� #��[ 6    .*�6E   Canvas Overview6V   J� 5�      .*�6    .*�5�      �� $	��500��5�      $��1��6)   $
��Left=�64   
���   �6O   �� 6_   6m   J� 5�        DisStyle#��[ 6    .*�6B   .*�5�   �   ��[This topic is pre-release documentation and is subject to change in future releases. Blank topics are included as placeholders.]�� 6�   J� 5�      #��[ 6    .*�6J   ��The Canvas element is used to position content according to absolute x- and y-coordinates. Canvas provides ultimate flexibility for positioning and arranging elements on the screen. Elements can be drawn in a unique location, or in the event that elements occupy the same coordinates, the order in which they appear in markup determines the order in which elements are drawn.6�  J� 5�      #��[ 6    .*�6J   -+This topic contains the following sections.6w   �� 5�      .<�5�      �� .9�5�      J� #��[ 6(   .*�6R    What Can I Do with the Canvas?6r   5�      �� 5�      .9�5�      J� #��[ 6(   .*�6R   %#Adding a Border to a Canvas Element6w   5�      �� 5�      .9�5�      J� #��[ 6(   .*�6R   Order of Elements in a Canvas6q   5�      �� 5�      .9�5�      J� #��[ 6(   .*�6R   Creating a Canvas in "XAML"6o   5�      �� 5�      .9�5�      J� #��[ 6(   .*�6R   Creating a Canvas in Code6m   5�      5      J� 5       SubHeaderStyle#��[ 6    .*�6H    What Can I Do with the Canvas?6h   J� 5     #��[ 6    .*�6J   ��Canvas provides the most flexible layout support of any Panel element. Height and Width properties are used to define the area of the canvas, and elements inside are assigned absolute coordinates relative to the upper left corner of the parent Canvas. This allows you to position and arrange elements precisely where you want them on the screen.6�  J� 5     #��[ 6    .*�6H   %#Adding a Border to a Canvas Element6m   J� 5     #��[ 6    .*�6J   b`In order for a Canvas element to have a border, it must be encapsulated within a Border element.6�   J� 5     #��[ 6    .*�6J   kiThe following code example shows how to display Hello World within a Canvas with a border and background.6�   J� 5	      preserve65   #��[ .*�6c   ��
<Page xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation">
    <Border 
       BorderThickness="2"
       BorderBrush="Black"
       Background="LightGray"
       HorizontalAlignment="Left" 
       VerticalAlignment="Top"
       Width="100"
       Height="100">
        <Canvas>
            <TextBlock Canvas.Top="10" Canvas.Left="20">Hello World!</TextBlock>
        </Canvas>
    </Border>
</Page>
5     J� 5     #��[ 6    .*�6H   Order of Elements in a Canvas6g   J� 5     #��[ 6    .*�6J   ��The order of child elements (z-index) in a Canvas is determined by their order in "Extensible Application Markup Language" ("XAML") or code. As a consequence, layered order can be achieved when elements share the same coordinates. Canvas and Grid are the only layout controls that supports sharing of space in this manner.6�  J� 5     #��[ 6    .*�6J   ��The following example demonstrates how to achieve layered order of elements within a Canvas. Notice that each Rectangle element is drawn in the order it appears in "XAML".6�   J� 5      preserve65   #��[ .*�6c   ��
<Page xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation">
    <Canvas Width="500" Height="500">
        <Rectangle Width="100" Height="100" Canvas.Top="100" Canvas.Left="100" Fill="blue"/>
        <Rectangle Width="100" Height="100" Canvas.Top="150" Canvas.Left="150" Fill="yellow"/>
        <Rectangle Width="100" Height="100" Canvas.Top="200" Canvas.Left="200" Fill="green"/>

        <!-- Reverse the order to illustrate z-index layering -->

        <Rectangle Width="100" Height="100" Canvas.Top="300" Canvas.Left="200" Fill="green"/>
        <Rectangle Width="100" Height="100" Canvas.Top="350" Canvas.Left="150" Fill="yellow"/>
        <Rectangle Width="100" Height="100" Canvas.Top="400" Canvas.Left="100" Fill="blue"/>
    </Canvas>
</Page>
5,     J� 5-     #��[ 6    .*�6H   Creating a Canvas in "XAML"6e   J� 5.     #��[ 6    .*�6J   64A Canvas can be instantiated simply by using "XAML".6�   J� 50     #��[ 6    .*�6J   ��The following markup example demonstrates how to use Canvas to absolutely position content. This markup produces three 100-pixel squares. The first square is red, and its top-left (x, y) position is specified as (0, 0). The second square is green, and its top-left position is (100, 100), just below and to the right of the first square. The third square is blue, and its top-left position is (50, 50), thus encompassing the lower-right quadrant of the first square and the upper-left quadrant of the second. Because the third square is laid out last, it appears to be on top of the other two squares—that is, the overlapping portions assume the color of the third box.6�  J� 52      preserve65   #��[ .*�6c   ��
<Page xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation">
    <Canvas Height="600" Width="800">
        <Canvas Height="100" Width="100"  Top="0" Left="0">
            <Rectangle Width="100" Height="100" Fill="red"/>   
        </Canvas>
        <Canvas Height="100" Width="100" Top="100" Left="100">
            <Rectangle Width="100" Height="100" Fill="green"/>  
        </Canvas>
        <Canvas Height="100" Width="100" Top="50" Left="50">
            <Rectangle Width="100" Height="100" Fill="blue"/>  
        </Canvas>    
    </Canvas>
</Page>
5@     J� 5A       NoteParagraph#��[ 6    .*�6H   �� .�6M   Note:6T   �� The Canvas element does not automatically produce scrollbars, even if its assigned width and height are greater than the available screen space. To render scrollbars, wrap the project in its entirety within a ScrollViewer element.5B    J� 5C     #��[ 6    .*�6H   Creating a Canvas in Code6c   J� 5D     #��[ 6    .*�6J   ��The following code example shows how to instantiate and use a Canvas using C#. Two TextBlock elements are absolutely positioned using the SetTop and SetLeft methods of the Canvas. The Canvas is assigned a Background color of LightSteelBlue.6<  J� 5F      preserve65   #��[ .*�6c   ��
[C#]using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Threading;

namespace Canvas_Demo
{
    public class app : System.Windows.Application
    {
        System.Windows.Controls.TextBlock txt1;
        System.Windows.Controls.Canvas canvas;
        System.Windows.Controls.TextBlock txt2;
        System.Windows.Window mainWindow;

        protected override void OnStartingUp (StartingUpCancelEventArgs e)
        {
            base.OnStartingUp(e);
            CreateAndShowMainWindow();
        }

        private void CreateAndShowMainWindow()
        {
            // Create the application's main window
            mainWindow = new System.Windows.Window();

            // Create a canvas sized to fill the window
            canvas = new Canvas();
            canvas.Background = System.Windows.Media.Brushes.LightSteelBlue;

            // Add a "Hello World!" text element to the Canvas
            txt1 = new System.Windows.Controls.TextBlock();
            txt1.FontSize = 14;
            txt1.Text = "Hello World!";
            System.Windows.Controls.Canvas.SetTop(txt1, 100);
            System.Windows.Controls.Canvas.SetLeft(txt1, 10);
            canvas.Children.Add(txt1);

            // Add a second text element to show how absolute positioning works in a Canvas
            txt2 = new System.Windows.Controls.TextBlock();
            txt2.FontSize = 22;
            txt2.Text = "Isn't absolute positioning handy?";
            System.Windows.Controls.Canvas.SetTop(txt2, 200);
            System.Windows.Controls.Canvas.SetLeft(txt2, 75);
            canvas.Children.Add(txt2);
            
            mainWindow.Content= canvas;
            mainWindow.Show();
        }
    }

    internal sealed class EntryClass
    {
        [System.STAThread()]
        private static void Main ()
        {
            app app = new app ();
            app.Run ();
        }
    }
}
5�     J� 5�     #��[ 6    .*�6J   ][Send comments about this topic to Microsoft. © Microsoft Corporation. All rights reserved.6�   5�     5�     5�     5�     5�     