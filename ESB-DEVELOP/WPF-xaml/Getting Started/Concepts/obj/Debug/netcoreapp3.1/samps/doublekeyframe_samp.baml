   M S B A M L   `   `   `  ����  Concepts    DoubleKeyframe.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5        $��myRootElement��5        N� Title$  Double Keyframe��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5	   
   ��    TabStyle#��[  6   $��Double Keyframe Sample��64    �� 
IsSelected$
 true��6T   .��5
      �� .+�5      ��   HeaderStyle#��[ 6   Double Keyframe Sample6U   �� 5        MainContentStyle#��[ 6   CAThis example demonstrates keyframe animation using double values.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve69     CodeSnippetParagraph#��[ 6   .��6W   ��
<!-- Demonstrates the DoubleAnimationUsingKeyFrames class. -->
<Page  xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  x:Class="keyframes_markup.DoubleAnimationUsingKeyFramesExample"
  Name="myRootElement"
  WindowTitle="DoubleAnimationUsingKeyFrames Example">

  <StackPanel Orientation="Vertical" HorizontalAlignment="Center">


    <Button Name="myAnimatedButton" Margin="200" Width="120" RenderTransformOrigin="0.5,0.5">Click Me
    
      <Button.RenderTransform>
        <RotateTransform Angle="0" />
      </Button.RenderTransform>
      <Button.Triggers>
        <EventTrigger RoutedEvent="Button.Click">
          <BeginStoryboard>
            <Storyboard>
            <!-- Animates the angle of a RotateTransform. -->
              <DoubleAnimationUsingKeyFrames
                Storyboard.TargetName="myAnimatedButton"
                Storyboard.TargetProperty="(Button.RenderTransform).(RotateTransform.Angle)"
                Duration="0:0:10" FillBehavior="Stop">
                <DoubleAnimationUsingKeyFrames.KeyFrames>

                  <LinearDoubleKeyFrame Value="300" KeyTime="0:0:3" />
                  <DiscreteDoubleKeyFrame Value="225" KeyTime="0:0:3.5" />
                  <DiscreteDoubleKeyFrame Value="180" KeyTime="0:0:4" />
                  <DiscreteDoubleKeyFrame Value="90" KeyTime="0:0:4.5" />
                  <SplineDoubleKeyFrame Value="-180" KeyTime="0:0:10" KeySpline="0.25,0.5 0.75,1" />
                                
                </DoubleAnimationUsingKeyFrames.KeyFrames>
              </DoubleAnimationUsingKeyFrames>           
            </Storyboard>
          </BeginStoryboard>
        </EventTrigger>
      </Button.Triggers> 
    </Button>
  </StackPanel>
</Page>5A      6   6#   5C      �� 5E   
   -   5        $��
xamlcsharp��5E      #��[  6$   $��	XAML + C#��6F   .��5F      ��  �� TabStripPlacement$ Right=�6   .@�5G      �� -   5        $��xcsharpCheck��5G        	TabStyle2#��[ 6*   $
��XAML��6M   �� 5H      #��[ 6   $��C#��6;   5I      5J      �� 5L   
   -   5        $��xamlvb��5L      #��[  6    $��XAML + Visual Basic.NET��6B   .��5M      �� $ Right=�6   .@�5N      �� -   5        $��xvbCheck��5N      #��[ 6&   $
��XAML��6I   �� 5O      #��[ 6   $��VB.NET��6;   5P      5Q      �� 5S   
   -   5        $��csharp��5S      #��[  6    $��C#��6B   �� 5U      -	   5        $��vb��5U      #��[  6   $��Visual Basic.NET��6:   �� 5W      -
   5        $��
managedcpp��5W      #��[  6    $��Managed C++��6B   �� 5Y      #��[  6   $��Preview Sample��60   .��5\      �� .+�5]      ��  �� Orientation$ Vertical=�6   $��Center=�6%   .+�5`      �� -   5        $��myAnimatedButton��5`      $	��200q�6%   $	��120��62    J� RenderTransformOrigin$ 0.5,0.5&�6>   .��6^   
Click Mez�5b      �� 5c   
    �� Angle$ 0Q�6    � Triggers 5e      :� 5f   
    :� RoutedEvent$ Button.Click��6   .[�5g      �� .��5h      �� .��5j      U� 	 �� 
TargetName$	 myAnimatedButton��5k      
 �� TargetProperty$6
 0(Button.RenderTransform).(RotateTransform.Angle)�5l       g� Duration$ 0:0:10D�5m       g� FillBehavior$
 Stop=�6#   \�5p      ��  O� Value$	 300Q�6)    O� KeyTime$ 0:0:3��65   n� 5q      $	 225Q�6+   $ 0:0:3.5��67   n� 5r      $	 180Q�6+   $ 0:0:4��67   n� 5s      $ 90Q�6+   $ 0:0:4.5��66   �� 5t      $
 -180Q�6)   $ 0:0:10��66    �� 	KeySpline$ 0.25,0.5 0.75,1��6G   5w      5x      5y      5z      5|      5}      5~      5      5�   	   5�      