   M S B A M L   `   `   `  ����  Concepts    KeyframeString.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5        $��myRootElement��5        N� Title$  Keyframe String��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5	   
   ��    TabStyle#��[  6   $��Keyframe String Sample��64    �� 
IsSelected$
 true��6T   .��5
      �� .+�5      ��   HeaderStyle#��[ 6   Keyframe String Sample6U   �� 5        MainContentStyle#��[ 6   FDThis example demonstrates a string that is animated using keyframes.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� $��Visible=�6   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6U   -   5        $��	xamlCheck��5        CodeSnippetParagraph#��[ 6'   ��
<Page xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  x:Class="keyframes_markup.StringAnimationUsingKeyFramesExample"
  Name="myRootElement"
  WindowTitle="StringAnimationUsingKeyFrames Example">

  <StackPanel HorizontalAlignment="Center">
    <Button Name="myAnimatedButton" Margin="200"
      FontSize="16pt" FontFamily="Verdana">Some Text
      <Button.Triggers>
        <EventTrigger RoutedEvent="Button.Click">
          <BeginStoryboard>
            <Storyboard>
              <StringAnimationUsingKeyFrames 
                Storyboard.TargetName="myAnimatedButton" Storyboard.TargetProperty="(Button.Content)"
                Duration="0:0:8" FillBehavior="HoldEnd">
                <DiscreteStringKeyFrame Value="" KeyTime="0:0:0" />
                <DiscreteStringKeyFrame Value="A" KeyTime="0:0:1" />
                <DiscreteStringKeyFrame Value="An" KeyTime="0:0:1.5" />
                <DiscreteStringKeyFrame Value="Ani" KeyTime="0:0:2" />
                <DiscreteStringKeyFrame Value="Anim" KeyTime="0:0:2.5" />
                <DiscreteStringKeyFrame Value="Anima" KeyTime="0:0:3" />
                <DiscreteStringKeyFrame Value="Animat" KeyTime="0:0:3.5" />
                <DiscreteStringKeyFrame Value="Animate" KeyTime="0:0:4" />
                <DiscreteStringKeyFrame Value="Animated" KeyTime="0:0:4.5" />
                <DiscreteStringKeyFrame Value="Animated " KeyTime="0:0:5" />
                <DiscreteStringKeyFrame Value="Animated T" KeyTime="0:0:5.5" />
                <DiscreteStringKeyFrame Value="Animated Te" KeyTime="0:0:6" />
                <DiscreteStringKeyFrame Value="Animated Tex" KeyTime="0:0:6.5" />
                <DiscreteStringKeyFrame Value="Animated Text" KeyTime="0:0:7" />
              </StringAnimationUsingKeyFrames>              
            </Storyboard>
          </BeginStoryboard>
        </EventTrigger> 
      </Button.Triggers>
    </Button>
  </StackPanel>
</Page>          
          5<      5=      5>      �� 5@   
   -   5        $��
xamlcsharp��5@      #��[  6$   $��	XAML + C#��6F   .��5A      ��  �� TabStripPlacement$ Right=�6   .@�5B      �� -   5        $��xcsharpCheck��5B        	TabStyle2#��[ 6*   $
��XAML��6M   �� 5C      #��[ 6   $��C#��6;   5D      5E      �� 5G   
   -   5        $��xamlvb��5G      #��[  6    $��XAML + Visual Basic.NET��6B   .��5H      �� $ Right=�6   .@�5I      �� -   5        $��xvbCheck��5I      #��[ 6&   $
��XAML��6I   �� 5J      #��[ 6   $��VB.NET��6;   5K      5L      �� 5N   
   -   5        $��csharp��5N      #��[  6    $��C#��6B   �� 5P      -	   5        $��vb��5P      #��[  6   $��Visual Basic.NET��6:   �� 5R      -
   5        $��
managedcpp��5R      #��[  6    $��Managed C++��6B   �� 5T      #��[  6   $��Preview Sample��60   .��5W      �� .+�5X      �� $��Center=�6   .+�5]      �� -   5        $��myAnimatedButton��5]      $	��200q�6%   $
��16pt(�5^      $��Verdana)�6   .��6,   	Some Text � Triggers 5_      :� 5`   
    :� RoutedEvent$ Button.Click��6   .[�5a      �� .��5b      �� .��5c      ��  �� 
TargetName$ myAnimatedButton��5d       �� TargetProperty$ (Button.Content)�6:    g� Duration$ 0:0:8D�5e      	 g� FillBehavior$	 HoldEnd=�6"   .�5f      a� 
 �� Value$
  ��6)    �� KeyTime$ 0:0:0��62   a� 5g      $
 A��6)   $ 0:0:1��63   a� 5h      $
 An��6)   $ 0:0:1.5��64   a� 5i      $	
 Ani��6)   $ 0:0:2��65   a� 5j      $

 Anim��6)   $ 0:0:2.5��66   a� 5k      $
 Anima��6)   $ 0:0:3��67   a� 5l      $
 Animat��6)   $ 0:0:3.5��68   a� 5m      $
 Animate��6)   $ 0:0:4��69   a� 5n      $
 Animated��6)   $ 0:0:4.5��6:   a� 5o      $
 	Animated ��6)   $ 0:0:5��6;   a� 5p      $
 
Animated T��6)   $ 0:0:5.5��6<   a� 5q      $
 Animated Te��6)   $ 0:0:6��6=   a� 5r      $
 Animated Tex��6)   $ 0:0:6.5��6>   a� 5s      $
 Animated Text��6)   $ 0:0:7��6?   5t      5u      5v      5w      5y      5      5�      5�      5�   	   5�      