   M S B A M L   `   `   `  ����  Concepts    AnimateRotate.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Animate Rotation��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5	   
   ��    TabStyle#��[  6   $��Animate Rotation Sample��64    �� 
IsSelected$
 true��6U   .��5
      �� .+�5      ��   HeaderStyle#��[ 6   Animate Rotation Sample6V   �� 5        MainContentStyle#��[ 6   0.This example demonstrates rotation animations.6r   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6U   -   5        $��	xamlCheck��5        CodeSnippetParagraph#��[ 6'   �"�"
 <StackPanel>
     <Canvas Width="400" Height="550">
   
       <Rectangle Canvas.Top="100" Canvas.Left="100" Fill="Blue" Width="50" Height="50" Stroke="black"
          StrokeThickness="5" Opacity="0.25" />
       <Rectangle Canvas.Top="250" Canvas.Left="100" Fill="Blue" Width="50" Height="50" Stroke="black"
          StrokeThickness="5" Opacity="0.25" />
       <Rectangle Canvas.Top="400" Canvas.Left="100" Fill="Blue" Width="50" Height="50" Stroke="black"
          StrokeThickness="5" Opacity="0.25" /> 

       <Rectangle Name="myRotatedFromCenterRectangle"
          Canvas.Top="100" Canvas.Left="100" Fill="blue"
          Width="50" Height="50" Stroke="black"
          StrokeThickness="5">
          <Rectangle.RenderTransform>     
            <RotateTransform Angle="0" Center="25,25" />
          </Rectangle.RenderTransform>
       </Rectangle>
       <Rectangle Name="myRotatedFromLeftEdgeRectangle"
          Canvas.Top="250" Canvas.Left="100" Fill="blue"
          Width="50" Height="50" Stroke="black"
          StrokeThickness="5">
          <Rectangle.RenderTransform>
            <RotateTransform Angle="0" Center="0,0" />
          </Rectangle.RenderTransform>
       </Rectangle>
   
       <Rectangle Name="myRotatedFromAnimatedCenterRectangle"
          Canvas.Top="400" Canvas.Left="100" Fill="blue"
          Width="50" Height="50" Stroke="black"
          StrokeThickness="5">
       <Rectangle.RenderTransform>
           <RotateTransform Angle="0" Center="0,0" />
         </Rectangle.RenderTransform>
       </Rectangle>   
     </Canvas>
   
     <StackPanel Orientation="Horizontal">     
        <StackPanel.Triggers>     
           <EventTrigger SourceName="startButton" RoutedEvent="Button.Click">
              <BeginStoryboard Name="myBeginStoryboard">
                 <Storyboard Name="myStoryboard">
                    <DoubleAnimation Storyboard.TargetName="myRotatedFromCenterRectangle"
                       Storyboard.TargetProperty="(Rectangle.RenderTransform).(RotateTransform.Angle)"     
                       From="0" To="360" RepeatBehavior="Forever" Duration="0:0:4"/>
                    <DoubleAnimation Storyboard.TargetName="myRotatedFromLeftEdgeRectangle"
                       Storyboard.TargetProperty="(Rectangle.RenderTransform).(RotateTransform.Angle)"     
                       From="0" To="360" RepeatBehavior="Forever" Duration="0:0:4"/>
                    <DoubleAnimation Storyboard.TargetName="myRotatedFromAnimatedCenterRectangle" 
                       Storyboard.TargetProperty="(Rectangle.RenderTransform).(RotateTransform.Angle)"
                       From="0" To="360" RepeatBehavior="4x" Duration="0:0:4" />
                    <DoubleAnimation Storyboard.TargetName="myRotatedFromAnimatedCenterRectangle" 
                       Storyboard.TargetProperty="(Rectangle.RenderTransform).(RotateTransform.CenterX)"
                       From="0" To="50" Duration="0:0:16" />
                    <DoubleAnimation Storyboard.TargetName="myRotatedFromAnimatedCenterRectangle" 
                       Storyboard.TargetProperty="(Rectangle.RenderTransform).(RotateTransform.CenterY)"
                       From="0" To="50" Duration="0:0:16" />                                                        
                 </Storyboard>
              </BeginStoryboard>
          </EventTrigger>       
            
          <EventTrigger SourceName="pauseButton" RoutedEvent="Button.Click" >
             <PauseStoryboard BeginStoryboardName="myBeginStoryboard">
             </PauseStoryboard>
          </EventTrigger>    
           
          <EventTrigger RoutedEvent="Button.Click" SourceName="restartButton">
             <ResumeStoryboard BeginStoryboardName="myBeginStoryboard">
             </ResumeStoryboard>
          </EventTrigger>   
               
          <EventTrigger RoutedEvent="Button.Click" SourceName="stopButton">
             <StopStoryboard BeginStoryboardName="myBeginStoryboard">
             </StopStoryboard>
          </EventTrigger>                
               
        </StackPanel.Triggers>
        <Button Name="startButton">Start
        </Button>
        <Button Name="restartButton">Restart
        </Button>
        <Button Name="pauseButton">Pause   
        </Button>
        <Button Name="stopButton">Stop
        </Button>
      </StackPanel>
   </StackPanel>

          
          
          5o      5p      5q      �� 5r   
   -   5        $��
xamlcsharp��5r      #��[  6$   $��	XAML + C#��6F   .��5s      ��  �� TabStripPlacement$ Right=�6   .@�5t      �� -   5        $��xcsharpCheck��5t        	TabStyle2#��[ 6*   $
��XAML��6M   �� 5v      #��[ 6   $��C#��6;   5w      5x      �� 5z   
   -   5        $��xamlvb��5z      #��[  6    $��XAML + Visual Basic.NET��6B   .��5{      �� $ Right=�6   .@�5|      �� -   5        $��xvbCheck��5|      #��[ 6&   $
��XAML��6I   �� 5}      #��[ 6   $��VB.NET��6;   5~      5      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -	   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -
   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      �� .+�5�      �� .+�5�      �� $	��400��6   $	��550��6   .+�5�      �� 
 �� Top$	 100��6    �� Left$	 100��6"   
����  �$��50��6@   $��50��6K   
���   �$��5��5�   	    J� Opacity$
 0.25Q�6   �� 5�      $	 250��6   $	 100��6"   
����  �$��50��6@   $��50��6K   
���   �$��5��5�   	   $
 0.25Q�6   �� 5�      $	 400��6   $	 100��6"   
����  �$��50��6@   $��50��6K   
���   �$��5��5�   	   $
 0.25Q�6   �� 5�      -   5        $"��myRotatedFromCenterRectangle��5�      $	 100��5�      $	 100��6   
����  �$��50��5�      $��50��6   
���   �$��5��5�      z�5�      �� 5�       �� Angle$ 0Q�6    �� CenterX$ 25Q�6%   	 �� CenterY$	 25Q�62   5�      �� 5�      -   5        $$��myRotatedFromLeftEdgeRectangle��5�      $	 250��5�      $	 100��6   
����  �$��50��5�      $��50��6   
���   �$��5��5�      z�5�      �� 5�      $ 0Q�6   $ 0Q�6)   $	 0Q�65   5�      �� 5�      -   5        $*��$myRotatedFromAnimatedCenterRectangle��5�      $	 400��5�      $	 100��6    
����  �$��50��5�      $��50��6   
���   �$��5��5�      z�5�      �� 5�      $ 0Q�6#   $ 0Q�6-   $	 0Q�69   5�      5�      �� 5�      
 �� Orientation$
 
Horizontal=�6   .+�5�      �� -   5        $��startButton��5�      .��6%   	Restart6.   �� 5�      -   5        $��
stopButton��5�      .��6$   Stop6*    � Triggers 5�      :� 5�       :� RoutedEvent$ Button.Click��6    :� 
SourceName$ startButton��64   .[�5�      �� -   5         ��Name$ myBeginStoryboard��5�      .��5�      �� .��5�      W�  �� 
TargetName$" myRotatedFromCenterRectangle��6    �� TargetProperty$9 3(Rectangle.RenderTransform).(RotateTransform.Angle)�5�       W� From 05�      	 W� To 3606    g� RepeatBehavior$ Forever��6!    g� Duration$ 0:0:4D�6:   W� 5�      $$ myRotatedFromLeftEdgeRectangle��5�      $9 3(Rectangle.RenderTransform).(RotateTransform.Angle)�5�       05�       3606   $ Forever��6   $ 0:0:4D�68   W� 5�      $* $myRotatedFromAnimatedCenterRectangle��6   $9 3(Rectangle.RenderTransform).(RotateTransform.Angle)�5�   
    05�       3606   $ 4x��6   $ 0:0:4D�61   W� 5�      $* $myRotatedFromAnimatedCenterRectangle��6   $; 5(Rectangle.RenderTransform).(RotateTransform.CenterX)�5�   
    05�   
    506   $ 0:0:16D�6   W� 5�      $* $myRotatedFromAnimatedCenterRectangle��6   $; 5(Rectangle.RenderTransform).(RotateTransform.CenterY)�5�   
    05�   
    506   $ 0:0:16D�6   5�      5�      5�      :� 5�      $ Button.Click��6   $ 
stopButton��64   .[�5�      ��  �� BeginStoryboardName$ myBeginStoryboard��6   5�      5�   	   5�      5�      5�      5�   	   5�      