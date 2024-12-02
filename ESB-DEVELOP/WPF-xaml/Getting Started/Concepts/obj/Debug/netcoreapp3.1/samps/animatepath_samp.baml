   M S B A M L   `   `   `  ����  Concepts    AnimatePath.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Animate Path��5      .��5      �� $	��500��6   $	��700��6#   $	��400��63   .@�5	   
   ��    TabStyle#��[  6   $��Animate Path Sample��64    �� 
IsSelected$
 true��6Q   .��5
      �� .+�5      ��   HeaderStyle#��[ 6   Animate Path Sample6R   �� 5        MainContentStyle#��[ 6   *(This example moves a shape along a path.6l   �� 5      #��[ 6   qoThe preview window renders code from the Markup tab. The C# standalone code is provided for reference purposes.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   .��6`   .��51      ��<Canvas Height="400" Width="400" Margin="20">
 
  <Path Name="myPathShape"
    Fill="Blue" Stroke="Black" StrokeThickness="5">
    <Path.Data>
    
      <!-- Draw an Ellipse. -->
      <EllipseGeometry Center="200,200" RadiusX="25" RadiusY="50" />
    </Path.Data>
      
    <Path.Triggers>
      <EventTrigger RoutedEvent="Path.Loaded">
        <BeginStoryboard>
          <Storyboard>
            
            <!-- Animate the Center property of the EllipseGeometry. -->
            <PointAnimation Storyboard.TargetName="myPathShape"
              Storyboard.TargetProperty="(Path.Data).(EllipseGeometry.Center)"
              From="200,200" To="50,50" Duration="0:0:5" 
              AutoReverse="true" RepeatBehavior="Forever"/>              
          </Storyboard>
        </BeginStoryboard>
      </EventTrigger>
    </Path.Triggers>     
  </Path>
</Canvas>             
            52      53      54      55      �� 56   
   -   5        $��
xamlcsharp��56      #��[  6$   $��	XAML + C#��6F   .��57      ��  �� TabStripPlacement$ Right=�6   .@�58      �� -   5        $��xcsharpCheck��58        	TabStyle2#��[ 6*   $
��XAML��6M   �� 59      #��[ 6   $��C#��6;   5:      5;      �� 5=   
   -   5        $��xamlvb��5=      #��[  6    $��XAML + Visual Basic.NET��6B   .��5>      �� $ Right=�6   .@�5?      �� -   5        $��xvbCheck��5?      #��[ 6&   $
��XAML��6I   �� 5@      #��[ 6   $��VB.NET��6;   5A      5B      �� 5C   
   -   5        $��csharp��5C      #��[  6    $��C#��6B   .��5D      �� $��Visible=�6   .��5F      �� -	   5        $��csharpCheck��5F      �� 5G       preserve6B   #��[ 6   .��6W   ��

/*

This sample demonstrates how to animate the position of a Geometry using
a PointAnimation.

*/


using System;
using System.Windows;
using System.Windows.Navigation;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using System.Windows.Controls;

namespace Microsoft.Samples.Animation.AnimatePathShapeSample
{

    // Displays the sample.
    public class app : Application
    {
        

        protected override void OnStartup (StartupEventArgs e)
        {
            base.OnStartup(e);
            CreateAndShowMainWindow();
        }


        private void CreateAndShowMainWindow ()
        {
            // Create the application's main window.
            NavigationWindow myWindow = new NavigationWindow();
            
            // Display the sample
            Page myContent = new PathElementAnimationExample();
            myWindow.Navigate(myContent);
            MainWindow = myWindow;
            myWindow.Show();
        }
    }
    
    // Create the demonstration.
    public class PathElementAnimationExample : Page {
        
        public PathElementAnimationExample()
        {
            WindowTitle = "Path Shape Animation Example";
            
            Canvas myCanvas = new Canvas();
            myCanvas.Width = 400;
            myCanvas.Height = 400;
            myCanvas.Margin = new Thickness(20);
            
            // Create a System.Windows.Shapes.Path to contain
            // the geometry.
            System.Windows.Shapes.Path myPath =
                new System.Windows.Shapes.Path();
            myPath.Name = "myPathShape";
            this.RegisterName(myPath.Name, myPath);
            myPath.Fill = System.Windows.Media.Brushes.Blue;
            myPath.Stroke = System.Windows.Media.Brushes.Black;
            myPath.StrokeThickness = 5;
            
            // Create a Geometry.
            System.Windows.Media.EllipseGeometry myEllipseGeometry =
                new System.Windows.Media.EllipseGeometry();
            myEllipseGeometry.Center = new System.Windows.Point(200, 200);
            myEllipseGeometry.RadiusX = 25;
            myEllipseGeometry.RadiusY = 50;
            myPath.Data = myEllipseGeometry;
            myCanvas.Children.Add(myPath);
            this.Content = myCanvas;
            
            // Create a PointAnimation to animate the center of the Ellipse.
            PointAnimation myPointAnimation = new PointAnimation();
            myPointAnimation.From = new System.Windows.Point(200, 200);
            myPointAnimation.To = new System.Windows.Point(50, 50);
            myPointAnimation.Duration = new Duration(TimeSpan.FromMilliseconds(5000));
            myPointAnimation.AutoReverse = true;
            myPointAnimation.RepeatBehavior = RepeatBehavior.Forever;
            
            Storyboard.SetTargetName(myPointAnimation, "myPathShape");
            PropertyPath myPropertyPath = new PropertyPath( 
                    "(0).(1)",
                    new DependencyProperty[] { Path.DataProperty, EllipseGeometry.CenterProperty });
            
            Storyboard.SetTargetProperty(myPointAnimation, myPropertyPath);
            Storyboard myStoryboard = new Storyboard();
            myStoryboard.Children.Add(myPointAnimation);
            BeginStoryboard myBeginStoryboard = new BeginStoryboard();
            myBeginStoryboard.Storyboard = myStoryboard;

            
            EventTrigger myEventTrigger = new EventTrigger();
            myEventTrigger.RoutedEvent = Path.LoadedEvent;
            myEventTrigger.Actions.Add(myBeginStoryboard);
            myPath.Triggers.Add(myEventTrigger);
        }
    }

    // Starts the application.
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
            5�      5�      5�      5�      �� 5�   
   -
   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6>   �� 5�      -   5        $��
managedcpp��5�      #��[  6&   $��Managed C++��6H   �� 5�      #��[  6   $��Preview Sample��66   .��5�      �� .+�5�      �� $	��400��6	   $	��400��6   $��20q�6"   .+�5�      F� -   5        $��myPathShape��5�   	   
����  �
���   �$��5��5�       ��5�      @� 5�       @� Center$ 200,200&�6    @� RadiusX$ 25Q�6)    @� RadiusY$ 50Q�66    � Triggers 5�      :� 5�       :� RoutedEvent$ Path.Loaded��6   .[�5�   
   �� .��5�      �� .��5�      ,� 	 �� 
TargetName$	 myPathShape��6   
 �� TargetProperty$*
 $(Path.Data).(EllipseGeometry.Center)�5�       ,� From 200,2005�      	 ,� To	 50,506    g� Duration$ 0:0:5D�6)    g� AutoReverse$
 true��5�       g� RepeatBehavior$ Forever��6"   5�      5�      5�   	   5�      5�      5�      5�      5�   	   5�      