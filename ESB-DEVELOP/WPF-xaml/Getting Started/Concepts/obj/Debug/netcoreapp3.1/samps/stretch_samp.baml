   M S B A M L   `   `   `  ����  Concepts    myStretch.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Stretch Title��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Stretch Sample��64    �� 
IsSelected$
 true��6L   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Stretch Sample6M   �� 5        MainContentStyle#��[ 6   53This example demonstrates different stretch values.6w   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5   
   �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   .��6W   �#�#
<!-- This example shows how to draw Line elements. -->
<Canvas
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="Microsoft.Samples.Graphics.StretchExample"
    Title="Stretch Example" >
  <Canvas.Resources>
      <Style x:Key="MyGridBorderStyle">
        <Setter Property="Border.Background" Value="{StaticResource MyGridBrushResource}"/>
        <Setter Property="Border.HorizontalAlignment" Value="Center"/>
        <Setter Property="Border.VerticalAlignment" Value="Top"/>
        <Setter Property="Border.BorderBrush" Value="Black"/>
        <Setter Property="Border.BorderThickness" Value="1"/>
      </Style>
          <DrawingBrush x:Key="MyGridBrushResource" Viewport="0,0,10,10" ViewportUnits="Absolute" TileMode="Tile">
        <DrawingBrush.Drawing>
          <DrawingGroup>
            <DrawingGroup.Children>
              <GeometryDrawing Brush="White">
                <GeometryDrawing.Geometry>
                  <RectangleGeometry Rect="0,0,1,1" />
                </GeometryDrawing.Geometry>
              </GeometryDrawing>
              <GeometryDrawing Geometry="M0,0 L1,0 1,0.1, 0,0.1Z" Brush="#CCCCFF" />
              <GeometryDrawing Geometry="M0,0 L0,1 0.1,1, 0.1,0Z" Brush="#CCCCFF" />
            </DrawingGroup.Children>
          </DrawingGroup>
        </DrawingBrush.Drawing>
      </DrawingBrush>   
    
  </Canvas.Resources>
    <Grid>
      <Grid.ColumnDefinitions>
        <ColumnDefinition />
        <ColumnDefinition Width="20"/>
        <ColumnDefinition />
      </Grid.ColumnDefinitions>
      <Grid.RowDefinitions>
        <RowDefinition Height="Auto" />
        <RowDefinition Height="Auto" />
        <RowDefinition Height="Auto" />
        <RowDefinition Height="40" />
        <RowDefinition Height="Auto" />
        <RowDefinition Height="Auto" />
      <\Grid.RowDefinitions>
        <Border Grid.Row="0" Grid.Column="0"  Background="#CCCCFF"  >
            <TextBlock Margin="10" HorizontalAlignment="Left" >
                StretchExample
            </TextBlock>
        </Border>
        <TextBlock Grid.Row="1" Grid.Column="0">Stretch="None"</TextBlock>
        <Border Grid.Row="2" Grid.Column="0" Style="{StaticResource MyGridBorderStyle}" HorizontalAlignment="Left">
            <Canvas Height="200" Width="200">
                <Border Height="100" Width="50" Canvas.Top="50" Canvas.Left="70"   
                        BorderBrush="Black" BorderThickness="1" >
                    <Polygon Height="100" Width="50" Points="0,0 10,10 0,10" Fill="Blue" Stretch="None"/>
                </Border>
            </Canvas>
        </Border>

        <TextBlock Grid.Row="1" Grid.Column="2">Stretch="Fill"</TextBlock>
        <Border Grid.Row="2" Grid.Column="2" Style="{StaticResource MyGridBorderStyle}" HorizontalAlignment="Left">
                <Canvas Height="200" Width="200">
                  <Border Height="100" Width="50" Canvas.Top="50" Canvas.Left="70"   
                          BorderBrush="Black" BorderThickness="1" >
                    <Polygon Height="100" Width="50" Points="0,0 10,10 0,10" Fill="Blue" Stretch="Fill"/>
                  </Border>
              </Canvas>
          </Border>


          <TextBlock Grid.Row="4" Grid.Column="0">Stretch="Uniform"</TextBlock>
          <Border Grid.Row="5" Grid.Column="0" Style="{StaticResource MyGridBorderStyle}" HorizontalAlignment="Left">
              <Canvas Height="200" Width="200">
                 <Border Height="100" Width="50" Canvas.Top="50" Canvas.Left="70"   
                         BorderBrush="Black" BorderThickness="1" >
                    <Polygon Height="100" Width="50" Points="0,0 10,10 0,10" Fill="Blue" Stretch="Uniform"/>
                 </Border>
                </Canvas>
        </Border>


        <TextBlock Grid.Row="4" Grid.Column="2">Stretch="UniformToFill"</TextBlock>           
        <Border Grid.Row="5" Grid.Column="2" Style="{StaticResource MyGridBorderStyle}" HorizontalAlignment="Left">
                <Canvas Height="200" Width="200">
                  <Border Height="100" Width="50" Canvas.Top="50" Canvas.Left="70"   
                          BorderBrush="Black" BorderThickness="1" >
                    <Polygon Height="100" Width="50" Points="0,0 10,10 0,10" Fill="Blue" Stretch="UniformToFill"/>
                   </Border>
                </Canvas>
        </Border>
    </Grid>
</Canvas>
            
            5r      5s      5t      5u      �� 5v   
   -   5        $��
xamlcsharp��5v      #��[  6$   $��	XAML + C#��6F   .��5w      ��  �� TabStripPlacement$ Right=�6   .@�5x      �� -   5        $��xcsharpCheck��5x        	TabStyle2#��[ 6*   $
��XAML��6M   �� 5y      #��[ 6   $��C#��6;   5z      5{      �� 5}   
   -   5        $��xamlvb��5}      #��[  6    $��XAML + Visual Basic.NET��6B   .��5~      �� $ Right=�6   .@�5      �� -   5        $��xvbCheck��5      #��[ 6&   $
��XAML��6I   �� 5�      #��[ 6   $��VB.NET��6;   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -	   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -
   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      �� $	��600��6	    � 	Resources 5�        MyGridBorderStyle �� Property  MyGridBrushResource �� Value j� Viewport j� ViewportUnits	 j� TileMode
 L� Drawing � Brush � Geometry �� Rect��%L  &	       7  &	 �     �� 5�      .�5�   
   ��  � ��8   6.   �� 5�   
    � ��$ Center=�67   �� 5�   
    � ��$	 Top=�65   �� 5�   
    � ��
 �   �6/   �� 5�   
    � ��$ 1q�63   5�   	   L� 5�      $ 	0,0,10,10�65   $ Absolute=�6J   $
	 Tile=�6c   
 5�   
   I� 5�      ��5�      � 
 ����� 5�      �� 5�      $ 0,0,1,1�6&   5�      � 5�      + ��        �@B     �@B �� �    �� 	 �#CCCCFF6C   � 5�      + ��        �    @B Ѡ� @B Ѡ�     	 �#CCCCFF6C   5�      5�   	   5�      .+�5�      �  � ColumnDefinitions 5�      �� 5�   
   �� 5�   
   $��20 �6   �� 5�   
    � RowDefinitions 5�      �� 5�   
   $
��Auto �6   �� 5�   
   $
��Auto �6   �� 5�   
   $
��Auto �6   �� 5�   
   $��40 �6   �� 5�   
   $
��Auto �6   �� 5�   
   $
��Auto �6   .+�5�   
   �� $��0��6   $��0��6   ���#CCCCFF._�5�      �� $��10q�6   $
��Left=�6$   StretchExample5�      5�      �� 5�   
   $��1��6   $��0��6!   Stretch="None"6A   �� 5�   
   $��2��6   $��0��6   #��[ 6.   $
��Left=�6Y   ._�5�      �� $	��200��6   $	��200��6"   .+�5�      �� $	��100��6   $��50��6&   
 �� Top$ 50��61    �� Left$ 70��6A   
���   �$��1q�5�   -   ._�5�      � $	��100��6   $��50��6+    � Points �   ��� ��� ��� 
����  � �� Stretch$
 None=�6Z   5�      5�      5�      �� 5�   
   $��1��6   $��2��6!   Stretch="Fill"6A   �� 5�   
   $��2��6   $��2��6   #��[ 6.   $
��Left=�6Y   ._�5�      �� $	��200��6   $	��200��6&   .+�5�      �� $	��100��6   $��50��6(   $ 50��63   $ 70��6C   
���   �$��1q�5�   /   ._�5�      � $	��100��6   $��50��6+    �   ��� ��� ��� 
����  �$
 Fill=�6Z   5�      5�      5�      �� 5�      $��4��6   $��0��6#   Stretch="Uniform"6F   �� 5�      $��5��6   $��0��6    #��[ 60   $
��Left=�6[   ._�5�      �� $	��200��6   $	��200��6$   .+�5�      �� $	��100��6   $��50��6'   $ 50��62   $ 70��6B   
���   �$��1q�5�   .   ._�5�      � $	��100��6   $��50��6+    �   ��� ��� ��� 
����  �$ Uniform=�6Z   5�      5�      5�      �� 5�   
   $��4��6   $��2��6!   Stretch="UniformToFill"6J   �� 5�   
   $��5��6   $��2��6   #��[ 6.   $
��Left=�6Y   ._�5�      �� $	��200��6   $	��200��6&   .+�5�      �� $	��100��6   $��50��6(   $ 50��63   $ 70��6C   
���   �$��1q�5�   /   ._�5�      � $	��100��6   $��50��6+    �   ��� ��� ��� 
����  �$ UniformToFill=�6Z   5�      5�      5�      5�      5�      5�      5�   	   5�      