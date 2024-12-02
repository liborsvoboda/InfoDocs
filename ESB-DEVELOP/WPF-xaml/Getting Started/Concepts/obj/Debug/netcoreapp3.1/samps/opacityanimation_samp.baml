   M S B A M L   `   `   `  ����  Concepts    OpacityAnimation.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Opacity Animation��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Opacity Animation Sample��64    �� 
IsSelected$
 true��6V   .��5	      �� .+�5
      ��   HeaderStyle#��[ 6   Opacity Animation Sample6W   �� 5        MainContentStyle#��[ 6   ><This example demonstrates animation of the opacity property.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   .��6`   .��5f      ��
<Page xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  WindowTitle="Opacity Animation Example">
  <StackPanel Margin="20,0,0,0" Background="{StaticResource myGridBrushResource}">


    <TextBlock Margin="0,30,0,0" FontWeight="Bold">Animating the Opacity of Elements</TextBlock>
    <TextBlock Margin="0,10,0,0">A Button</TextBlock>

    <!-- The opacity property of this Button element is animated. -->

    <Button Name="opacityAnimatedButton"
      HorizontalAlignment="Left" VerticalAlignment="Top">
      A Button
    </Button>

    <TextBlock Margin="0,10,0,0">An Image</TextBlock>

    <!-- The opacity property of this Image element is animated. -->

    <Image Name="opacityAnimatedImage"
      Source="sampleImages\berries.jpg" Stretch="None"
      HorizontalAlignment="Left" VerticalAlignment="Top" />

    <TextBlock Margin="0,30,0,0" FontWeight="Bold">Animating the Opacity of a Brush</TextBlock>

    <!-- The opacity of the brush used to fill this Button element
         is animated. -->

    <Button Name="opacityAnimatedBrushButton" Background="Orange"
      HorizontalAlignment="Left" VerticalAlignment="Top">
      A Button
    </Button>


    <TextBlock Margin="0,30,0,0" FontWeight="Bold"> Animating the Opacity of a Color within a Brush</TextBlock>

    <!-- The opacity of one of the colors that comprise the gradient
         used to fill this Rectangle element is animated. -->

    <Rectangle Name="opacityAnimatedColorRectangle"
      Width="120" Height="50"  Stroke="Black" StrokeThickness="1"
      HorizontalAlignment="Left" VerticalAlignment="Top">
      <Rectangle.Fill>
        <LinearGradientBrush>
           <LinearGradientBrush.GradientStops>
             <GradientStop Offset="0.0" Color="MediumBlue" />
             <GradientStop Offset="0.75" Color="BlueViolet" />
           </LinearGradientBrush.GradientStops>
        </LinearGradientBrush>
      </Rectangle.Fill>
    </Rectangle>


  </StackPanel>
  <Page.Triggers>
    <EventTrigger RoutedEvent="Page.Loaded">
      <BeginStoryboard Name="myBeginStoryboard">
        <Storyboard Name="myStoryboard">
          <DoubleAnimation Storyboard.TargetName="opacityAnimatedButton"
            Storyboard.TargetProperty="(Button.Opacity)" From="1" To="0"
            Duration="0:0:5" AutoReverse="True" RepeatBehavior="Forever" />
          <DoubleAnimation Storyboard.TargetName="opacityAnimatedImage"
            Storyboard.TargetProperty="(Image.Opacity)" From="1" To="0"
            Duration="0:0:5" AutoReverse="True" RepeatBehavior="Forever" />
          <DoubleAnimation Storyboard.TargetName="opacityAnimatedBrushButton"
            Storyboard.TargetProperty="(Button.Background).(SolidColorBrush.Opacity)" From="1" To="0"
            Duration="0:0:5" AutoReverse="True" RepeatBehavior="Forever" />
          <DoubleAnimation Storyboard.TargetName="opacityAnimatedBrushButton"
            Storyboard.TargetProperty="(Button.Background).(SolidColorBrush.Opacity)" From="1" To="0"
            Duration="0:0:5" AutoReverse="True" RepeatBehavior="Forever" />
          <ColorAnimation  Storyboard.TargetName="opacityAnimatedColorRectangle"
            Storyboard.TargetProperty="(Rectangle.Fill).(LinearGradientBrush.GradientStops)[1].(GradientStop.Color)"
            Duration="0:0:5" AutoReverse="True" RepeatBehavior="Forever">
            <ColorAnimation.By>
             <Color ScA="-1.0" ScR="0.0" ScG="0.0" ScB="0.0" />
            </ColorAnimation.By>
          </ColorAnimation>
        </Storyboard>
      </BeginStoryboard>
    </EventTrigger>
  </Page.Triggers>
</Page>
                      5g      5h      5i      5j      �� 5k   
   -   5        $��
xamlcsharp��5k      #��[  6$   $��	XAML + C#��6F   .��5l      ��  �� TabStripPlacement$ Right=�6   .@�5m      �� -   5        $��xcsharpCheck��5m        	TabStyle2#��[ 6*   $
��XAML��6M   �� 5n      #��[ 6   $��C#��6;   5o      5p      �� 5r   
   -   5        $��xamlvb��5r      #��[  6    $��XAML + Visual Basic.NET��6B   .��5s      �� $ Right=�6   .@�5t      �� -   5        $��xvbCheck��5t      #��[ 6&   $
��XAML��6I   �� 5u      #��[ 6   $��VB.NET��6;   5v      5w      �� 5y   
   -   5        $��csharp��5y      #��[  6    $��C#��6B   �� 5{      -	   5        $��vb��5{      #��[  6   $��Visual Basic.NET��6:   �� 5}      -
   5        $��
managedcpp��5}      #��[  6    $��Managed C++��6B   �� 5      #��[  6   $��Preview Sample��60   .��5�      �� $	��600��6	    � 	Resources 5�        MyGridBrushResource1 j� Viewport j� ViewportUnits j� TileMode L� Drawing	 � Brush
 � Geometry �� Rect��%s  &	       L� 5�      $ 	0,0,10,10�60   $ Absolute=�5�      $
 Tile=�6     5�      I� 5�   
   ��5�      � 
	 �����
 5�      �� 5�      $ 0 0 1 1�6$   5�      � 5�      	 �	#66CCCCCC
 5�      � 5�      .��5�      �� $ 0 0 0.5 0.5�6&   �� 5�      $ 0.5 0.5 0.5 0.5�6&   5�      5�      5�      5�      5�      .+�5�      �� $��20q�6   #��[ 6   .+�5�      �� $��0,30,0,0q�6   $
��Bold"�6"   #!Animating the Opacity of Elements6W   �� 5�      $��0,10,0,0q�6   
A Button6,   �� 5�      -   5        $��opacityAnimatedButton��5�      $
��Left=�5�      $	��Top=�6"   .��6:   
A Button5�      �� 5�      $��0,10,0,0q�6   
An Image6,   �� 5�      -   5        $��opacityAnimatedImage��5�   V   $
��Left=�6   $	��Top=�6/   $
��None=�6G   ��6s   �� 6�    �� 	UriSource$ \images\berries.jpg?�6�   6�   �� 5�      $��0,30,0,0q�6   $
��Bold"�6"   " Animating the Opacity of a Brush6V   �� 5�      -   5        $ ��opacityAnimatedBrushButton��5�      
��� ���$
��Left=�5�      $	��Top=�6"   .��6:   
A Button5�      �� 5�   
   $��0,30,0,0q�6   $
��Bold"�6&   1/Animating the Opacity of a Color within a Brush6i   �� 5�      -   5        $#��opacityAnimatedColorRectangle��5�      $	��120��5�      $��50��6   
���   �$��1��6/   $
��Left=�5�      $	��Top=�6"   ��5�      �� 5�   
   ��5�      �  � Offset$	 0.0Q�6    � Color$ 
MediumBlue��6)   � 5�      $
 0.75Q�6   $ 
BlueViolet��6*   5�      5�       � Triggers 5�      :� 5�       :� RoutedEvent$ StackPanel.Loaded��6   .[�5�   
   �� .��5�      �� .��5�   
   W�  �� 
TargetName$ opacityAnimatedButton��6    �� TargetProperty$ (Button.Opacity)�5�   	    W� From 15�   	   	 W� To 06    g� Duration$ 0:0:5D�6    g� AutoReverse$
 True��6*    g� RepeatBehavior$ Forever��6=   W� 5�   
   $ opacityAnimatedImage��6   $ (Image.Opacity)�5�   	    15�   	    06   $ 0:0:5D�6   $
 True��6*   $ Forever��6=   W� 5�   
   $  opacityAnimatedBrushButton��6   $3 -(Button.Background).(SolidColorBrush.Opacity)�5�   	    15�   	    06   $ 0:0:5D�6   $
 True��6*   $ Forever��6=   �� 5�   
   $# opacityAnimatedColorRectangle��6   $R L(Rectangle.Fill).(LinearGradientBrush.GradientStops)[1].(GradientStop.Color)�5�   	   $ 0:0:5D�5�      $
 True��6   $ Forever��6/   	 �� By 5�      �� 5�      
 �� ScA$
 -1.0��6   
 �� ScR$	 0.0��6   
 �� ScG$	 0.0��6)   
 �� ScB$	 0.0��63   5�      5�      5�      5�   	   5�      5�      5�      5�   	   5�      