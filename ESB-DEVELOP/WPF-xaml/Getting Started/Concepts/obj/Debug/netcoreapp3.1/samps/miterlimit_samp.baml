   M S B A M L   `   `   `  ����  Concepts    MiterLimit.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Miter Limit��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Miter Limit Sample��64    �� 
IsSelected$
 true��6P   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Miter Limit Sample6Q   �� 5        MainContentStyle#��[ 6   PNThis example demonstrates different limits to the miter of an angle in a line.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5   
   �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   .��6W   ��
<!-- This example shows how to use the StrokeMiterLimit
   property of Shape elements. -->
<Page>
  <Page.Resources>
    <DrawingBrush x:Key="MyGrayGridBrushResource" Viewport="0,0,10,10" ViewportUnits="Absolute" TileMode="Tile"
      Opacity="0.5">
      <DrawingBrush.Drawing>
        <DrawingGroup>
          <DrawingGroup.Children>
            <GeometryDrawing Brush="White">
              <GeometryDrawing.Geometry>
                <RectangleGeometry Rect="0,0,1,1" />
              </GeometryDrawing.Geometry>
            </GeometryDrawing>
          <GeometryDrawing Geometry="M0,0 L1,0 1,0.1, 0,0.1Z" Brush="#CCCCCC" />
        <GeometryDrawing Geometry="M0,0 L0,1 0.1,1, 0.1,0Z" Brush="#CCCCCC" />
      </DrawingGroup.Children>
    </DrawingGroup>
  </DrawingBrush.Drawing>
</DrawingBrush>


</Page.Resources>
  <StackPanel>
    <Border Background="#CCCCFF">
      <TextBlock Margin="10" HorizontalAlignment="Left">
        Miter Limits
      </TextBlock>
    </Border>

    <Canvas Margin="20" Height="400" Width="500"
      HorizontalAlignment="Left">

      <!-- A default miter limit of 10.  -->
      <Polyline
       Points="0,10 50,10 20,35"
       Stroke="#9999CC"
       StrokeThickness="20"
       StrokeMiterLimit="10"
       Canvas.Top="30"
       Canvas.Left="100" />


      <!-- The corner is cut off (beveled) because the miter limit
      is set to 1.-->
      <Polyline
       Points="0,10 50,10 20,35"
       Stroke="#9999CC"
       StrokeThickness="20"
       StrokeMiterLimit="2"
       Canvas.Top="30"
       Canvas.Left="250"/>

      <!-- The corner is cut off (beveled) because the miter limit
         is set to 1.-->
      <Polyline
       Points="0,10 50,10 20,35"
       Stroke="#9999CC"
       StrokeThickness="20"
       StrokeMiterLimit="1"
       Canvas.Top="30"
       Canvas.Left="400" />

      <!-- Labels the examples. -->
      <TextBlock>Miter Limit:</TextBlock>
      <TextBlock Canvas.Left="100">10 (Default)</TextBlock>
      <TextBlock Canvas.Left="250">2</TextBlock>
      <TextBlock Canvas.Left="400">1</TextBlock>


      <!-- Shows a diagram of the miter for a stroke. -->

      <Border HorizontalAlignment="Left" BorderBrush="Black" BorderThickness="1"
       Background="{StaticResource MyGrayGridBrushResource}"
       Canvas.Top="150" Canvas.Left="100">
        <Border.RenderTransform>
          <ScaleTransform ScaleX="3" ScaleY="3" />
        </Border.RenderTransform>
        <Canvas  Width="100" Height="100" Background="Transparent">

          <Polyline
           Points="0,10 50,10 20,35"
           Stroke="#9999CC"
           StrokeThickness="20"
           Canvas.Top="30" />


          <Path
           Data="M0,10 L50,10 20,35"
           Stroke="White"
           StrokeThickness="1"
           Canvas.Top="30" />

          <Path
           Data="M22,20 77,0.4"
           Stroke="Purple"
           StrokeDashArray="2,1"
           StrokeThickness="1"
           Canvas.Top="30" />

          <Path
           Data="M20,20 L20,0"
           Stroke="Blue"
           StrokeThickness="1"
           StrokeDashArray="2,1"
           Canvas.Top="30"/>

         </Canvas>
       </Border>


       <TextBlock Canvas.Left="115" Canvas.Top="220" FontSize="14pt"
                  Foreground="Blue" >
         Stroke
       </TextBlock>

       <TextBlock Canvas.Left="250" Canvas.Top="240" FontSize="14pt"
                  Foreground="Purple" >
         Miter
       </TextBlock>

    </Canvas>
  </StackPanel>
</Page>
            
            
            5�      5�      5�      5�      �� 5�   
   -   5        $��
xamlcsharp��5�      #��[  6$   $��	XAML + C#��6F   .��5�      ��  �� TabStripPlacement$ Right=�6   .@�5�      �� -   5        $��xcsharpCheck��5�        	TabStyle2#��[ 6*   $
��XAML��6M   �� 5�      #��[ 6   $��C#��6;   5�      5�      �� 5�   
   -   5        $��xamlvb��5�      #��[  6    $��XAML + Visual Basic.NET��6B   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6&   $
��XAML��6I   �� 5�      #��[ 6   $��VB.NET��6;   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -	   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -
   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      �� $	��600��6    � 	Resources 5�        MyGrayGridBrushResource j� Viewport j� ViewportUnits j� TileMode �� Opacity	 L� Drawing
 � Brush � Geometry �� Rect��%�  &	       L� 5�      $ 	0,0,10,10�6=   $ Absolute=�6R   $
 Tile=�6k   $	 0.5Q�5�      	 5�      I� 5�      ��5�      � 

 ����� 5�      �� 5�      $ 0,0,1,1�6.   5�      � 5�      + ��        �@B     �@B �� �    �� 	
 �#CCCCCC6K   � 5�      + ��        �    @B Ѡ� @B Ѡ�     	
 �#CCCCCC6K   5�      5�      5�      .+�5�      �� .+�5�      �� ���#CCCCFF._�5�      �� $��10q�6   $
��Left=�6(   Miter Limits5�      5�      �� 5�      $��20q�6   $	��400��6#   $	��500��60   $
��Left=�5�      .+�5�      �  � Points# �   ��� ������  -1����#9999CC$��20��5�       �� StrokeMiterLimit$ 10Q�5�      
 �� Top$ 30��5�       �� Left$	 100��5�      � 5�      # �   ��� ������  -1����#9999CC$��20��5�      $ 2Q�5�      $ 30��5�      $	 250��5�      � 5�      # �   ��� ������  -1����#9999CC$��20��5�      $ 1Q�5�      $ 30��5�      $	 400��5�      �� 5�      Miter Limit:6*   �� 5�      $	 100��6   10 (Default)6<   �� 5�      $	 250��6   261   �� 5�      $	 400��6   161   �� 5�      $
��Left=�6   
���   �$��1q�6H   #��[ 5�      $	 150��5�      $	 100��6$   z�5�      �� 5�       �� ScaleX$ 3Q�6%    �� ScaleY$ 3Q�60   ._�5�      �� $	��100��6   $	��100��6(   
������ .+�5�      � # �   ��� ������  -1����#9999CC$��20��5�      $ 30��5      F� 5     "����    ��� р����� � -1�	
�������$��1��5     $ 30��5     F� 5	     ���Ѐ�O -1�@�� 	
���� �� �� StrokeDashArray$	 2,1R�5     $��1��5     $ 30��5     F� 5     ���� -1 -1� -1    	
����  �$��1��5     $	 2,1R�5     $ 30��5     5     5     �� 5     $	 115��6   $	 220��6.   $
��14pt(�6?   
����  �Stroke5     �� 5      $	 250��6   $	 240��6.   $
��14pt(�6?   
���� ��Miter5#     5%     5&     5'     5(     5)  	   5*     