   M S B A M L   `   `   `  ����  Concepts%    AnimatePropertyStoryboard.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$!  Animate Property Storyboard��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5	   
   ��    TabStyle#��[  6   $(��"Animate Property Storyboard Sample��64    �� 
IsSelected$
 true��6`   .��5
      �� .+�5      ��   HeaderStyle#��[ 6   $"Animate Property Storyboard Sample6a   �� 5        MainContentStyle#��[ 6   FDThis example uses a storyboard to animate the properties of buttons.6�   �� 5      #��[ 6   qoThe preview window renders code from the Markup tab. The C# standalone code is provided for reference purposes.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   .��6`   ��<!-- Animates properties by using storyboard animations. -->
<Border Background="White">
  <StackPanel Margin="30" HorizontalAlignment="Left" MinWidth="500">

    <TextBlock>Storyboard Animation Example</TextBlock>
      
      <!-- The width of this button is animated. -->
      <Button Name="myWidthAnimatedButton"
        Height="30" Width="200" HorizontalAlignment="Left">
        A Button    
        <Button.Triggers>
        
          <!-- Animates the width of the first button 
               from 200 to 300. -->         
          <EventTrigger RoutedEvent="Button.Click">
            <BeginStoryboard>
              <Storyboard>           
                <DoubleAnimation Storyboard.TargetName="myWidthAnimatedButton"
                  Storyboard.TargetProperty="(Button.Width)"
                  From="200" To="300" Duration="0:0:3" />
              </Storyboard>
            </BeginStoryboard>
          </EventTrigger>
        </Button.Triggers>
      </Button>

      <!-- The color of the brush used to paint this button is animated. -->
      <Button Name="myColorAnimatedButton"
        Height="30" Width="200" HorizontalAlignment="Left">Another Button
      <Button.Background>
        <SolidColorBrush  Color="Blue" />
      </Button.Background>
      <Button.Triggers>
        
        <!-- Animates the color of the brush used to paint 
             the second button from red to blue . -->             
        <EventTrigger RoutedEvent="Button.Click">   
       
          <BeginStoryboard>
            <Storyboard>
              <ColorAnimation 
                Storyboard.TargetName="myColorAnimatedButton"
                Storyboard.TargetProperty="(Button.Background).(SolidColorBrush.Color)"
                From="Red" To="Blue" Duration="0:0:7" />
            </Storyboard>
          </BeginStoryboard>
        </EventTrigger>
      </Button.Triggers>
    </Button>
  </StackPanel>
</Border>5I      5J      5K      5L      �� 5M   
   -   5        $��
xamlcsharp��5M      #��[  6$   $��	XAML + C#��6F   .��5N      ��  �� TabStripPlacement$ Right=�6   .@�5O      �� -   5        $��xcsharpCheck��5O        	TabStyle2#��[ 6*   $
��XAML��6M   �� 5P      #��[ 6   $��C#��6;   5Q      5R      �� 5T   
   -   5        $��xamlvb��5T      #��[  6    $��XAML + Visual Basic.NET��6B   .��5U      �� $ Right=�6   .@�5V      �� -   5        $��xvbCheck��5V      #��[ 6&   $
��XAML��6I   �� 5W      #��[ 6   $��VB.NET��6;   5X      5Y      �� 5Z   
   -   5        $��csharp��5Z      #��[  6    $��C#��6B   .��5[      �� $��Visible=�6   .��5]      �� -	   5        $��csharpCheck��5]      �� 5^       preserve6B   #��[ 6   .��6W   �,�,
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Animation;

namespace Microsoft.Samples.Animation.AnimatingWithStoryboards
{


    // Uses a storyboard to animate the properties
    // of two buttons.
    public class StoryboardExample : Page
    {

        public StoryboardExample()
        {
            this.WindowTitle = "Animate Properties using Storyboards";
            StackPanel myStackPanel = new StackPanel();
            myStackPanel.MinWidth = 500;
            myStackPanel.Margin = new Thickness(30);
            myStackPanel.HorizontalAlignment = HorizontalAlignment.Left;
            TextBlock myTextBlock = new TextBlock();
            myTextBlock.Text = "Storyboard Animation Example";
            myStackPanel.Children.Add(myTextBlock);
            
            //
            // Create the objects to animate.
            //
            
            // Create a button.
            Button myWidthAnimatedButton = new Button();
            myWidthAnimatedButton.Height = 30;
            myWidthAnimatedButton.Width = 200;
            myWidthAnimatedButton.HorizontalAlignment = HorizontalAlignment.Left;
            myWidthAnimatedButton.Content = "A Button";

            // Set the ID of the button so that it can be referred
            // to in the storyboard that's created later.
            // The ID doesn't have to match the variable name;
            // it can be any unique identifier.
            myWidthAnimatedButton.Name = "myWidthAnimatedButton";
            
            // Register the name with the page to which the button belongs.
            this.RegisterName(myWidthAnimatedButton.Name, myWidthAnimatedButton);
            
            // Create a DoubleAnimation to animate the width of the button.
            DoubleAnimation myDoubleAnimation = new DoubleAnimation();
            myDoubleAnimation.From = 200;
            myDoubleAnimation.To = 300;
            myDoubleAnimation.Duration = new Duration(TimeSpan.FromMilliseconds(3000));          
            
            Storyboard.SetTargetName(myDoubleAnimation, myWidthAnimatedButton.Name); 
            Storyboard.SetTargetProperty(myDoubleAnimation, new PropertyPath(Button.WidthProperty));
            
            // Create a storyboard to contain the animation.
            Storyboard myWidthAnimatedButtonStoryboard = new Storyboard();
            myWidthAnimatedButtonStoryboard.Children.Add(myDoubleAnimation);
            
            EventTrigger myWidthAnimatedButtonClickEventTrigger = new EventTrigger();
            myWidthAnimatedButtonClickEventTrigger.RoutedEvent = Button.ClickEvent;
            BeginStoryboard myBeginWidthAnimatedStoryboard = new BeginStoryboard();
            myBeginWidthAnimatedStoryboard.Storyboard = myWidthAnimatedButtonStoryboard;
            myWidthAnimatedButtonClickEventTrigger.Actions.Add(myBeginWidthAnimatedStoryboard);
            myWidthAnimatedButton.Triggers.Add(myWidthAnimatedButtonClickEventTrigger);
            
            myStackPanel.Children.Add(myWidthAnimatedButton);

            // Create a second button.
            Button myColorAnimatedButton = new Button();
            myColorAnimatedButton.Height = 30;
            myColorAnimatedButton.Width = 200;
            myColorAnimatedButton.HorizontalAlignment = HorizontalAlignment.Left;
            myColorAnimatedButton.Content = "Another Button";
            SolidColorBrush myBackgroundBrush = new SolidColorBrush();
            myBackgroundBrush.Color = Colors.Blue;
            myColorAnimatedButton.Background = myBackgroundBrush;

            // Set the button's name.
            myColorAnimatedButton.Name = "myColorAnimatedButton";
            
            // Register the name with the page to which the button belongs.
            this.RegisterName(myColorAnimatedButton.Name, myColorAnimatedButton);
            
            // Create a ColorAnimation to animate the button's background.
            ColorAnimation myColorAnimation = new ColorAnimation();
            myColorAnimation.From = Colors.Red;
            myColorAnimation.To = Colors.Blue;
            myColorAnimation.Duration = new Duration(TimeSpan.FromMilliseconds(7000));    
            
            Storyboard.SetTargetName(myColorAnimation, myColorAnimatedButton.Name);
            
            PropertyPath myPropertyPath = 
                new PropertyPath(
                    "(0).(1)",
                    new DependencyProperty[] {
                        Button.BackgroundProperty,
                        SolidColorBrush.ColorProperty });              
            
            Storyboard.SetTargetProperty(myColorAnimation, myPropertyPath);    

            // Create a storyboard to contain the animation.
            Storyboard myColorAnimatedButtonStoryboard = new Storyboard();
            myColorAnimatedButtonStoryboard.Children.Add(myColorAnimation);
            
            EventTrigger myColorAnimatedButtonClickEventTrigger = new EventTrigger();
            myColorAnimatedButtonClickEventTrigger.RoutedEvent = Button.ClickEvent;
            BeginStoryboard myBeginColorAnimatedStoryboard = new BeginStoryboard();
            myBeginColorAnimatedStoryboard.Storyboard = myColorAnimatedButtonStoryboard;

            myColorAnimatedButtonClickEventTrigger.Actions.Add(myBeginColorAnimatedStoryboard);
            myColorAnimatedButton.Triggers.Add(myColorAnimatedButtonClickEventTrigger);            
            
            myStackPanel.Children.Add(myColorAnimatedButton);
            this.Content = myStackPanel;

        }

    }
}    
5�      5�      5�      5�      �� 5�   
   -
   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6>   �� 5�      -   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      �� .+�5�      �� 
�������._�5�      �� $��30q�6   $
��Left=�6   $	��500��68   .+�5�      �� Storyboard Animation Example60   �� 5�      -   5        $��myWidthAnimatedButton��5�      $��30��5�   	   $	��200��6   $
��Left=�6!   .��6<   
A Button � Triggers 5�   
   :� 5�       :� RoutedEvent$ Button.Click��6   .[�5�      �� .��5�      �� .��5�      W�  �� 
TargetName$ myWidthAnimatedButton��6"    �� TargetProperty$ (Button.Width)�5�       W� From 2005�      		 W� To	 3006   
 g� Duration$
 0:0:3D�6'   5�      5�      5�      5�   	   �� 5      -   5        $��myColorAnimatedButton��5      $��30��5  	   $	��200��6   $
��Left=�6!   .��6<   Another Button��5  
   �� 5      �� Color$
 Blue��6    5  
   :� 5	     $ Button.Click��6   .[�5     �� .��5     �� .��5     �� $ myColorAnimatedButton��5     $1 +(Button.Background).(SolidColorBrush.Color)�5      �� From Red5     	 �� To Blue6   $
 0:0:7D�6(   5     5     5     5  	   5     5     5     5     5  	   5     