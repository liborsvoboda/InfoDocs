   M S B A M L   `   `   `  ����  Concepts    AnimateSize.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Animate Size��5      .��5
      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Animate Size Sample��64    �� 
IsSelected$
 true��6Q   .��5      �� .+�5      ��   HeaderStyle#��[ 6   Animate Size Sample6R   �� 5        MainContentStyle#��[ 6   ;9This example uses XAML to change the size of a rectangle.6}   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   .��6`   .��5M      ��
<Page xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  WindowTitle="Animating Size">   
  <Page.Resources>
 
    <!-- This ImageBrush is used to fill both rectangles. -->
    <ImageBrush x:Key="myImageBrush" Viewport="0,0 50,50" ViewportUnits="Absolute" 
      ImageSource="help.gif" TileMode="Tile"/>
  </Page.Resources>
      
  <StackPanel Orientation="Horizontal">        
    <StackPanel.Triggers>    
      <EventTrigger SourceName="animatedWidthRectangle" RoutedEvent="Page.Loaded">
        <BeginStoryboard Name="myBeginStoryboard">      
          <Storyboard Name="myStoryboard">
            <DoubleAnimation Storyboard.TargetName="animatedWidthRectangle"
              Storyboard.TargetProperty="(Button.Width)"
              To="600" Duration="0:0:10" AutoReverse="True"/>   
            <DoubleAnimation Storyboard.TargetName="animatedScaleTransformRectangle"
              Storyboard.TargetProperty="(Rectangle.RenderTransform).(ScaleTransform.ScaleX)"
              From="1.0" To="3.0" Duration="0:0:10" AutoReverse="True"/>                   
          </Storyboard>       
        </BeginStoryboard>
      </EventTrigger>   
    </StackPanel.Triggers>
    <Canvas Width="650" Height="400">
      <TextBlock Canvas.Top="5" Canvas.Left="20">Resized by animating the Width property.</TextBlock>
      <Rectangle Name="animatedWidthRectangle"
          Canvas.Top="20"
          Canvas.Left="20"
          Width="200"
          Height="150"
          Fill="{StaticResource myImageBrush}"
          Stroke="Red"
          StrokeThickness="5">
      </Rectangle>

      <TextBlock Canvas.Top="180" Canvas.Left="20">Resized by animating a scale transformation.</TextBlock>
      <Rectangle Name="animatedScaleTransformRectangle"
          Canvas.Left="20"
          Canvas.Top="200"
          Width="200"
          Height="150"
          Fill="{StaticResource myImageBrush}"
          Stroke="Black"
          StrokeThickness="3">     
          <Rectangle.RenderTransform>
            <ScaleTransform ScaleX="1" ScaleY="1"  />
          </Rectangle.RenderTransform>
      </Rectangle>
    </Canvas>
  </StackPanel>
</Page>           
            5N      5O      5P      5Q      �� 5R   
   -   5        $��
xamlcsharp��5R      #��[  6$   $��	XAML + C#��6F   .��5S      ��  �� TabStripPlacement$ Right=�6   .@�5T      �� -   5        $��xcsharpCheck��5T        	TabStyle2#��[ 6*   $
��XAML��6M   �� 5U      #��[ 6   $��C#��6;   5V      5W      �� 5Y   
   -   5        $��xamlvb��5Y      #��[  6    $��XAML + Visual Basic.NET��6B   .��5Z      �� $ Right=�6   .@�5[      �� -   5        $��xvbCheck��5[      #��[ 6&   $
��XAML��6I   �� 5\      #��[ 6   $��VB.NET��6;   5]      5^      �� 5_   
   -   5        $��csharp��5_      #��[  6    $��C#��6B   �� 5a      -	   5        $��vb��5a      #��[  6   $��Visual Basic.NET��6:   �� 5c      -
   5        $��
managedcpp��5c      #��[  6    $��Managed C++��6B   �� 5e      #��[  6   $��Preview Sample��60   .��5g      ��  � 	Resources 5h        MyImageBrush j� Viewport j� ViewportUnits j� TileMode �� ImageSource	 �� 	UriSource��%�   &	       �� 5k      $ 	0,0 50,50�6'   $ Absolute=�6<   $
 Tile=�6V    5l      �� 6#   $	 /images/help.gif?�6/   5m      5n      .+�5s      �� $	��650��6	   $	��400��6   .+�5u      �� 

 �� Top$
 5��6    �� Left$ 20��6   *(Resized by animating the Width property.6X   �� 5v      -   5        $��animatedWidthRectangle��5v      $
 20��5w      $ 20��5x      $	��200��5y      $	��150��5z      #��[ 5{      
���  ��$��5��5}      �� 5      $	
 180��6   $ 20��6!   .,Resized by animating a scale transformation.6`   �� 5�      -   5        $%��animatedScaleTransformRectangle��5�      $ 20��5�      $	
 200��5�      $	��200��5�      $	��150��5�      #��[ 5�      
���   �$��3��5�      z�5�      �� 5�       �� ScaleX$ 1Q�6    �� ScaleY$ 1Q�6%   5�       � Triggers 5�      :� 5�       :� RoutedEvent$ Canvas.Loaded��6   .[�5�   
   �� -   5         ��Name$ myBeginStoryboard��5�      .��5�      �� .��5�      I�  g� RepeatBehavior$ Forever��6   .��5�      W�  �� 
TargetName$ animatedWidthRectangle��6    �� TargetProperty$ (Rectangle.Width)�5�      	 W� To 6005�       g� Duration$ 0:0:10D�6    g� AutoReverse$
 true��6&   W� 5�      $% animatedScaleTransformRectangle��6   $9 3(Rectangle.RenderTransform).(ScaleTransform.ScaleX)�5�       W� From 1.05�       3.06   $
 True��6#   $ 0:0:10D�66   5�      5�      5�   	   5�      5�      5�      5�      5�   	   5�      