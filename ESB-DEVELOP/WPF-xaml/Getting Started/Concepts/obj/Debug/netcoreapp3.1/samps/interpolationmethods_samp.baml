   M S B A M L   `   `   `  ����  Concepts     InterpolationMethods.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5        $��myRootElement��5        N� Title$  Interpolation Methods��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5	   
   ��    TabStyle#��[  6   $"��Interpolation Methods Sample��64    �� 
IsSelected$
 true��6Z   .��5
      �� .+�5      ��   HeaderStyle#��[ 6   Interpolation Methods Sample6[   �� 5        MainContentStyle#��[ 6   ^\This example demonstrates different methods of moving between two keyframes in an animation.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6U   -   5        $��	xamlCheck��5        CodeSnippetParagraph#��[ 6'   �:�:
<StackPanel Orientation="Vertical" HorizontalAlignment="Stretch" Margin="20">
    <Canvas Width="600" Height="300">
    
      <!-- Mark the key frame points for illustrative purposes. -->
      <Rectangle
        Style="{StaticResource MyMarkerRectangleStyle}"
        Canvas.Left="10" Canvas.Top="50" />
      <TextBlock Canvas.Left="10">Starting Value</TextBlock>
      
      <Rectangle
        Style="{StaticResource MyMarkerRectangleStyle}"
        Canvas.Left="500" Canvas.Top="50" />
        
      <TextBlock Canvas.Left="500">1. Value = 500 <LineBreak /> KeyTime = 0:0:7</TextBlock>
      <Rectangle Style="{StaticResource MyMarkerRectangleStyle}"
        Canvas.Left="200" Canvas.Top="50"/>
      <TextBlock Canvas.Left="200">2. Value = 200 <LineBreak /> KeyTime = 0:0:10</TextBlock>
      <Rectangle Style="{StaticResource MyMarkerRectangleStyle}"
        Canvas.Left="350" Canvas.Top="50" />
      <TextBlock Canvas.Left="350">3. Value = 350 <LineBreak /> KeyTime = 0:0:15</TextBlock>


      <!-- This rectangle is animated using a key frame animation
           with linear interpolation. -->
      <Rectangle Name="linearKeyFrameRectangle"
        Canvas.Top="50"
        Canvas.Left="10"
        Height="50"
        Width="50"
        Stroke="Black"
        StrokeThickness="5">
        <Rectangle.Fill>
          <SolidColorBrush Color="Blue" Opacity="0.4" />
        </Rectangle.Fill>    
      </Rectangle>

      <!-- This rectangle is animated using a key frame animation
           with splined interpolation. -->
      <Rectangle Name="splineKeyFrameRectangle"
        Canvas.Top="110"
        Canvas.Left="10"
        Height="50"
        Width="50"
        Stroke="Black"
        StrokeThickness="5">
        <Rectangle.Fill>
          <SolidColorBrush Color="Purple" Opacity="0.4" />
          </Rectangle.Fill>
      </Rectangle>

      <!-- This rectangle is animated using a key frame animation
           with discrete interpolation. -->
      <Rectangle Name="discreteKeyFrameRectangle"
        Canvas.Top="170"
        Canvas.Left="10"
        Height="50"
        Width="50"
        Stroke="Black"
        StrokeThickness="5">
        <Rectangle.Fill>
          <SolidColorBrush Color="Lime" Opacity="0.4" />
        </Rectangle.Fill>
      </Rectangle>

      <!-- This rectangle is animated using a key frame animation
           with a combination of interpolation methods. -->
      <Rectangle Name="combinationKeyFrameRectangle"
        Canvas.Top="230"
        Canvas.Left="10"
        Height="50"
        Width="50"
        Stroke="Black"
        StrokeThickness="5">
        <Rectangle.Fill>
          <SolidColorBrush Color="Orange" Opacity="0.4" />
        </Rectangle.Fill>
      </Rectangle>
      
      
      
      
    </Canvas>
    


    <!-- These buttons are used to restart, pause, resume, and stop the animations. -->
    <StackPanel Orientation="Horizontal" HorizontalAlignment="Center">
      <StackPanel.Triggers>
        <EventTrigger SourceName="restartButton"
          RoutedEvent="Button.Click">
          <BeginStoryboard Name="myBeginStoryboard">
            <Storyboard>
              <!-- Animates the position of a Rectangle from a base value of 10
                  to 500, 200, and then 350 using linear interpolation. -->
              <DoubleAnimationUsingKeyFrames 
                Storyboard.TargetName="linearKeyFrameRectangle" Storyboard.TargetProperty="(Canvas.Left)"
                Duration="0:0:15" FillBehavior="HoldEnd">
                <DoubleAnimationUsingKeyFrames.KeyFrames>
                  <LinearDoubleKeyFrame Value="500" KeyTime="0:0:7" />
                  <LinearDoubleKeyFrame Value="200" KeyTime="0:0:10" />
                  <LinearDoubleKeyFrame Value="350" KeyTime="0:0:15" />
                </DoubleAnimationUsingKeyFrames.KeyFrames>
              </DoubleAnimationUsingKeyFrames>
    
              <!-- Animates the position of a Rectangle from a base value of 10
                   to 500, 200, and then 350 using splined interpolation. -->
              <DoubleAnimationUsingKeyFrames Storyboard.TargetName="splineKeyFrameRectangle" Storyboard.TargetProperty="(Canvas.Left)" 
                Duration="0:0:15" FillBehavior="HoldEnd">
                <DoubleAnimationUsingKeyFrames.KeyFrames>
                  <SplineDoubleKeyFrame Value="500" KeyTime="0:0:7" KeySpline="0.25,0.5 0.75,1" /><!--IB: was 7.5-->
                  <SplineDoubleKeyFrame Value="200" KeyTime="0:0:10"  KeySpline="0.25,0.5 0.75,1" />
                  <SplineDoubleKeyFrame Value="350" KeyTime="0:0:15"  KeySpline="0.25,0.5 0.75,1" />
                </DoubleAnimationUsingKeyFrames.KeyFrames>
              </DoubleAnimationUsingKeyFrames>
    
              <!-- Animates the position of a Rectangle from a base value of 10
                   to 500, 200, and then 350 using discrete interpolation. -->
              <DoubleAnimationUsingKeyFrames Storyboard.TargetName="discreteKeyFrameRectangle" Storyboard.TargetProperty="(Canvas.Left)" Duration="0:0:15" FillBehavior="HoldEnd">
                <DoubleAnimationUsingKeyFrames.KeyFrames>
                  <DiscreteDoubleKeyFrame Value="500" KeyTime="0:0:7" />
                  <DiscreteDoubleKeyFrame Value="200" KeyTime="0:0:10" />
                  <DiscreteDoubleKeyFrame Value="350" KeyTime="0:0:15" />
                </DoubleAnimationUsingKeyFrames.KeyFrames>
              </DoubleAnimationUsingKeyFrames>

              <!-- Animates the position of a Rectangle from a base value of 10
                   to 500, 200, and then 350 using a variety of interpolation methods. -->
              <DoubleAnimationUsingKeyFrames 
                Storyboard.TargetName="combinationKeyFrameRectangle" 
                Storyboard.TargetProperty="(Canvas.Left)" Duration="0:0:15" FillBehavior="HoldEnd">
                <DoubleAnimationUsingKeyFrames.KeyFrames>
                  <DiscreteDoubleKeyFrame Value="500" KeyTime="0:0:7" />
                  <LinearDoubleKeyFrame Value="200" KeyTime="0:0:10" />
                  <SplineDoubleKeyFrame Value="350" KeyTime="0:0:15"  KeySpline="0.25,0.5 0.75,1" />
                </DoubleAnimationUsingKeyFrames.KeyFrames>
              </DoubleAnimationUsingKeyFrames>    

            </Storyboard>                             
          </BeginStoryboard>
        </EventTrigger>
                  
        <EventTrigger 
          SourceName="pauseButton"
          RoutedEvent="Button.Click">
          <PauseStoryboard BeginStoryboardName="myBeginStoryboard"  />
        </EventTrigger>   
        <EventTrigger 
          SourceName="resumeButton"
          RoutedEvent="Button.Click">
          <ResumeStoryboard BeginStoryboardName="myBeginStoryboard"  />
        </EventTrigger>    
        <EventTrigger 
          SourceName="skipToEndButton"
          RoutedEvent="Button.Click">
          <SkipStoryboardToFill BeginStoryboardName="myBeginStoryboard"  />
        </EventTrigger>         
        <EventTrigger 
          SourceName="stopButton"
          RoutedEvent="Button.Click">
          <StopStoryboard BeginStoryboardName="myBeginStoryboard"  />
        </EventTrigger>           
      </StackPanel.Triggers>
      
      <Button Name="restartButton">Restart</Button>
      <Button Name="pauseButton">Pause</Button>
      <Button Name="resumeButton">Resume</Button>
      <Button Name="skipToEndButton">Skip To End</Button>
      <Button Name="stopButton">Stop</Button>
    </StackPanel>
</StackPanel>          
          
          5�      5�      5�      �� 5�   
   -   5        $��
xamlcsharp��5�      #��[  6$   $��	XAML + C#��6F   .��5�      ��  �� TabStripPlacement$ Right=�6   .@�5�      �� -   5        $��xcsharpCheck��5�        	TabStyle2#��[ 6*   $
��XAML��6M   �� 5�      #��[ 6   $��C#��6;   5�      5�      �� 5�   
   -   5        $��xamlvb��5�      #��[  6    $��XAML + Visual Basic.NET��6B   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6&   $
��XAML��6I   �� 5�      #��[ 6   $��VB.NET��6;   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -	   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -
   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      ��  � 	Resources 5�        MyMarkerRectangleStyle �� Property �� Value �� Color �� Opacity��%�   &	       �� 5�      .�5�      ��  � ��$	 230��6+   �� 5�       � ��$ 50��6*   �� 5�       � �� 5�   
   �� 5�      $
 Gray��6   $
 0.25Q�6)   5�   	   5�      5�      .+�5�      �� 	 �� Orientation$	 Vertical=�6   $��Stretch=�6%   $��20q�6C   .+�5�      �� $	��600��6   $	��300��6   .+�5�      �� #��[ 5�   	   
 �� Left$
 10��5�   	   
 �� Top$ 50��6   �� 5�      $
 10��6   Starting Value63   �� 5�      #��[ 5�   	   $	
 500��5�   	   $ 50��6   �� 5�      $	
 500��6   1. Value = 500�� 64   KeyTime = 0:0:76R   �� 5�      #��[ 6   $	
 200��5�   	   $ 50��6   �� 5�      $	
 200��6   2. Value = 200�� 64   KeyTime = 0:0:106S   �� 5�      #��[ 6   $	
 350��5�   	   $ 50��6   �� 5�      $	
 350��6   3. Value = 350�� 64   KeyTime = 0:0:156S   �� 5�      -   5        $��linearKeyFrameRectangle��5�      $ 50��5   	   $
 10��5  	   $��50��5  	   $��50��5  	   
���   �$��5��5  	   ��5  
   �� 5     $
 Blue��6   $	 0.4Q�6)   5	  	   �� 5     -   5        $��splineKeyFrameRectangle��5     $	 110��5  	   $
 10��5  	   $��50��5  	   $��50��5  	   
���   �$��5��5  	   ��5  
   �� 5     $ Purple��6   $	 0.4Q�6+   5  	   �� 5     -   5        $��discreteKeyFrameRectangle��5     $	 170��5  	   $
 10��5  	   $��50��5  	   $��50��5  	   
���   �$��5��5!  	   ��5"  
   �� 5#     $
 Lime��6   $	 0.4Q�6)   5%  	   �� 5)     -   5        $"��combinationKeyFrameRectangle��5)     $	 230��5*  	   $
 10��5+  	   $��50��5,  	   $��50��5-  	   
���   �$��5��5/  	   ��50  
   �� 51     $ Orange��6   $	 0.4Q�6+   53  	   58     �� 5=     $	 
Horizontal=�6   $��Center=�6*    � Triggers 5>     :� 5?  
    :� 
SourceName$ restartButton��6    :� RoutedEvent$ Button.Click��5@     .[�5A     �� -   5         ��Name$ myBeginStoryboard��5A     .��5B     �� .��5E     U�  �� 
TargetName$ linearKeyFrameRectangle��5F      �� TargetProperty$ (Canvas.Left)�6A    g� Duration$ 0:0:15D�5G      g� FillBehavior$ HoldEnd=�6#   \�5I     ��  O� Value$	 500Q�6)    O� KeyTime$ 0:0:7��65   �� 5J     $	 200Q�6)   $ 0:0:10��65   �� 5K     $	 350Q�6)   $ 0:0:15��65   5M     U� 5Q     $ splineKeyFrameRectangle��6.   $ (Canvas.Left)�6^   $ 0:0:15D�5R     $ HoldEnd=�6#   \�5T     �� $	 500Q�6)   $ 0:0:7��65    �� 	KeySpline$ 0.25,0.5 0.75,1��6E   �� 5U     $	 200Q�6)   $ 0:0:10��65   $ 0.25,0.5 0.75,1��6G   �� 5V     $	 350Q�6)   $ 0:0:15��65   $ 0.25,0.5 0.75,1��6G   5X     U� 5\     $ discreteKeyFrameRectangle��5]     $ (Canvas.Left)�5^     $ 0:0:15D�6;   $ HoldEnd=�6M   \�5`     n� $	 500Q�6+   $ 0:0:7��67   n� 5a     $	 200Q�6+   $ 0:0:10��67   n� 5b     $	 350Q�6+   $ 0:0:15��67   5d     U� 5h     $" combinationKeyFrameRectangle��5i     $ (Canvas.Left)�5j     $ 0:0:15D�6;   $ HoldEnd=�6M   \�5l     n� $	 500Q�6+   $ 0:0:7��67   �� 5m     $	 200Q�6)   $ 0:0:10��65   �� 5n     $	 350Q�6)   $ 0:0:15��65   $ 0.25,0.5 0.75,1��6G   5p     5s     5t     5u     :� 5w  
   $ pauseButton��5x     $ Button.Click��5y     .[�5z     ?�  �� BeginStoryboardName$ myBeginStoryboard��6   5{     :� 5|  
   $ resumeButton��5}     $ Button.Click��5~     .[�5     �� $ myBeginStoryboard��6   5�     :� 5�  
   $ skipToEndButton��5�     $ Button.Click��5�     .[�5�     �� $ myBeginStoryboard��6!   5�     :� 5�  
   $ 
stopButton��5�     $ Button.Click��5�     .[�5�     �� $ myBeginStoryboard��6   5�     .+�5�     �� -   5        $��restartButton��5�     .��6$   	Restart6-   �� 5�     -   5        $��pauseButton��5�     .��6"   Pause6)   �� 5�     -   5        $��resumeButton��5�     .��6#   Resume6+   �� 5�     -   5        $��skipToEndButton��5�     .��6&   Skip To End63   �� 5�     -   5        $��
stopButton��5�     .��6!   Stop6'   5�     5�     5�     5�     5�  	   5�     