   M S B A M L   `   `   `  ����  Concepts    AnimateHeight.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� WindowTitle$  Animate Height��5      .��5	      �� $	��500��6   $	��700��6   $	��400��6-   .@�5
   
   ��    TabStyle#��[  6   $��Animate Height Sample��64    �� 
IsSelected$
 true��6S   .��5      �� .+�5      ��   HeaderStyle#��[ 6   Animate Height Sample6T   �� 5        MainContentStyle#��[ 6   NLThis example uses markup to animate the height property of a gradient brush.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   .��6W   .��5   
   .��5=      ��
<!-- default.xaml
*
* This Sample shows a Rectangle Element with Gradient Fill and an Animated Height
*
-->
  <DockPanel>

    <!-- Create a Rectangle -->

    <Rectangle Width="200" Height="200" Name="myRectangle">

      <!-- Set the Rectangle's Fill Property with a LinearGradientBrush -->
      <Rectangle.Fill>
        <LinearGradientBrush StartPoint="0,0" SpreadMethod="Pad" EndPoint="0,1" MappingMode="RelativeToBoundingBox">
          <LinearGradientBrush.GradientStops>
            <GradientStopCollection>
             <GradientStop Offset="0" Color="red" />
             <GradientStop Offset="0.5" Color="green" />
             <GradientStop Offset="0.9074074" Color="blue" />
            </GradientStopCollection>
          </LinearGradientBrush.GradientStops>
        </LinearGradientBrush>
      </Rectangle.Fill>
    </Rectangle>
      
    <DockPanel.Triggers>
     <EventTrigger RoutedEvent="Page.Loaded"> 
       <BeginStoryboard Name="myBeginStoryboard">
         <Storyboard Name="myStoryboard">
           <DoubleAnimation Storyboard.TargetName="myRectangle" Storyboard.TargetProperty="(Rectangle.Height)" 
            From="0" To="100" 
            RepeatBehavior="0:0:50" BeginTime="0:0:0.5" />
           <DoubleAnimation Storyboard.TargetName="myRectangle" Storyboard.TargetProperty="(Rectangle.Height)"
            From="0" To="100" AutoReverse="true" RepeatBehavior="0:0:50" BeginTime="0:0:0.5" Duration="0:0:2"/>
         </Storyboard>
       </BeginStoryboard>
     </EventTrigger>
    </DockPanel.Triggers>
  </DockPanel>            
            5>      5?      5@      5A      �� 5B   
   -   5        $��
xamlcsharp��5B      #��[  6$   $��	XAML + C#��6F   .��5C      ��  �� TabStripPlacement$ Right=�6   .@�5D      �� -   5        $��xcsharpCheck��5D        	TabStyle2#��[ 6*   $
��XAML��6M   �� 5E      #��[ 6   $��C#��6;   5F      5G      �� 5I   
   -   5        $��xamlvb��5I      #��[  6    $��XAML + Visual Basic.NET��6B   .��5J      �� $ Right=�6   .@�5K      �� -   5        $��xvbCheck��5K      #��[ 6&   $
��XAML��6I   �� 5L      #��[ 6   $��VB.NET��6;   5M      5N      �� 5O   
   -   5        $��csharp��5O      #��[  6    $��C#��6B   �� 5Q      -	   5        $��vb��5Q      #��[  6   $��Visual Basic.NET��6:   �� 5S      -
   5        $��
managedcpp��5S      #��[  6    $��Managed C++��6B   �� 5U      #��[  6   $��Preview Sample��60   .��5[      �� .+�5\      ]� .+�5`      �� -   5        $��myRectangle��5`   )   $	��200��6   $	��200��6   ��5c      �� 5d   
    �� 
StartPoint$	 0,0&�6    � SpreadMethod$	 Pad=�6/    �� EndPoint$	 0,1&�6B    � MappingMode$ RelativeToBoundingBox=�6Q   ��5f      � � 5g       � Offset$ 0Q�6   	 � Color$		 red��6'   � 5h      $	 0.5Q�6   $	 green��6)   � 5i      $ 	0.9074074Q�6   $
	 blue��6/   5j      5l      5n      
 � Triggers
 5p      :� 5q       :� RoutedEvent$ Page.Loaded��6   .[�5r   	   �� -   5         ��Name$ myBeginStoryboard��5r      .��5s      �� -   5         g�Name$ myStoryboard��5s      .��5t      W�  �� 
TargetName$ myRectangle��6    �� TargetProperty$ (Rectangle.Height)�6A    W� From 05u      	 W� To 1006    g� RepeatBehavior$ 0:0:50��5v       g� 	BeginTime 0:0:0.56%   W� 5w      $ myRectangle��6   $ (Rectangle.Height)�6A    05x       1006    g� AutoReverse$
 true��6   $ 0:0:50��62    0:0:0.56J    g� Duration$ 0:0:2D�6^   5y      5z   
   5{      5}      5~      5      5�   	   5�      