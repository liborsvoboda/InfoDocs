   M S B A M L   `   `   `  ����  Concepts    LineJoinsAndCaps.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Line Joins and Caps Title��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $ ��Line Joins and Caps Sample��64    �� 
IsSelected$
 true��6X   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Line Joins and Caps Sample6Y   �� 5        MainContentStyle#��[ 6   NLThis example demonstrates different techniques for joining and ending lines.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   .��6W   ��
<!-- This example shows how to use the StrokeMiterLimit
   property of Shape elements. -->
<Page xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Class="Microsoft.Samples.Graphics.LineCapsAndJoinsExample"
    Title="Line Joins and Caps">
  <StackPanel>
    <Border Background="AliceBlue">
      <TextBlock Margin="10" HorizontalAlignment="Left">
        Line Caps and Joins
      </TextBlock>
    </Border>



    <Grid HorizontalAlignment="Left" Margin="20">
      <Grid.ColumnDefinitions>
        <ColumnDefinition Width="Auto"/>
        <ColumnDefinition Width="Auto"/>
        <ColumnDefinition Width="50"/>
        <ColumnDefinition Width="Auto"/>
        <ColumnDefinition Width="Auto"/>
      </Grid.ColumnDefinitions>
      <Grid.RowDefinitions>
        <RowDefinition />
        <RowDefinition />
        <RowDefinition />
        <RowDefinition />
        <RowDefinition />
        <RowDefinition />
        <RowDefinition />
        <RowDefinition />
        <RowDefinition />
        <RowDefinition />
        <RowDefinition />
        <RowDefinition />
      </Grid.RowDefinitions>



      <TextBlock Grid.Column="0" Grid.Row="0" Grid.ColumnSpan="2">
        <Bold>Line Joins</Bold>
      </TextBlock>
      <TextBlock Grid.Column="0" Grid.Row="1">Miter</TextBlock>
      <Polyline
        Points="50,50 75,30 100,100 130,40"
        Stroke="Red"
        StrokeThickness="20"
        StrokeLineJoin="Miter"
        Grid.Row="1" Grid.Column="1"/>

      <TextBlock Grid.Column="0" Grid.Row="2">Bevel</TextBlock>
      <Polyline
        Points="50,50 75,30 100,100 130,40"
        Stroke="Red"
        StrokeThickness="20"
        StrokeLineJoin="Bevel"
        Grid.Row="2" Grid.Column="1"/>

      <TextBlock Grid.Column="0" Grid.Row="3">Round</TextBlock>
      <Polyline
        Points="50,50 75,30 100,100 130,40"
        Stroke="Red"
        StrokeThickness="20"
        StrokeLineJoin="Round"
        Grid.Row="3" Grid.Column="1"/>


      <TextBlock Grid.Column="3" Grid.Row="0" Grid.ColumnSpan="2">
        <Bold>Line Caps</Bold>
      </TextBlock>
      <TextBlock Grid.Column="3" Grid.Row="1">Flat</TextBlock>
      <Polyline
        Points="50,50 75,30 100,100 130,40"
        Stroke="Red"
        StrokeThickness="20"
        StrokeStartLineCap="Flat"
        StrokeEndLineCap="Flat"
        Grid.Row="1" Grid.Column="4"/>

      <TextBlock Grid.Column="3" Grid.Row="2">Square</TextBlock>
      <Polyline
        Points="50,50 75,30 100,100 130,40"
        Stroke="Red"
        StrokeThickness="20"
        StrokeStartLineCap="Square"
        StrokeEndLineCap="Square"    
        Grid.Row="2" Grid.Column="4"/>

      <TextBlock Grid.Column="3" Grid.Row="3">Round</TextBlock>
      <Polyline
        Points="50,50 75,30 100,100 130,40"
        Stroke="Red"
        StrokeThickness="20"
        StrokeStartLineCap="Round"
        StrokeEndLineCap="Round"  
        Grid.Row="3" Grid.Column="4"/>

      <TextBlock Grid.Column="3" Grid.Row="4">Triangle</TextBlock>
      <Polyline
        Points="50,50 75,30 100,100 130,40"
        Stroke="Red"
        StrokeThickness="20"
        StrokeStartLineCap="Triangle"
        StrokeEndLineCap="Triangle"     
        Grid.Row="4" Grid.Column="4"/>



    </Grid>
  </StackPanel>
</Page>
            
        5�      5�      5�      5�      �� 5�   
   -   5        $��
xamlcsharp��5�      #��[  6$   $��	XAML + C#��6F   .��5�      ��  �� TabStripPlacement$ Right=�6   .@�5�      �� -   5        $��xcsharpCheck��5�        	TabStyle2#��[ 6*   $
��XAML��6M   �� 5�      #��[ 6   $��C#��6;   5�      5�      �� 5�   
   -   5        $��xamlvb��5�      #��[  6    $��XAML + Visual Basic.NET��6B   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6&   $
��XAML��6I   �� 5�      #��[ 6   $��VB.NET��6;   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -	   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -
   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      �� $	��600��6	   .+�5�      �� .+�5�      �� 
�������._�5�      �� $��10q�6   $
��Left=�6   Line Caps and Joins5�   	   5�      � 5�      $
��Left=�6   $��20q�6&    � ColumnDefinitions 5�      �� 5�   
   $
��Auto �6   �� 5�   
   $
��Auto �6   �� 5�   
   $��50 �6   �� 5�   
   $
��Auto �6   �� 5�   
   $
��Auto �6    � RowDefinitions 5�      �� 5�   
   �� 5�   
   �� 5�   
   �� 5�   
   �� 5�   
   �� 5�   
   �� 5�   
   �� 5�   
   �� 5�   
   �� 5�   
   �� 5�   
   �� 5�   
   .+�5�      �� $��0��6   $��0��6"   $��2��6/   �� 5�   
   .�6   
Line Joins6   5�   	   �� 5�      $��0��6   $��1��6"   Miter66   � 5�       � Points1 �   �������hx��� �� ����� Zb
���  ��$��20��5�   	    �� StrokeLineJoin$ Miter=�5�   	   $��1��5�   	   $��1��6   �� 5�      $��0��6   $��2��6"   Bevel66   � 5�      1 �   �������hx��� �� ����� Zb
���  ��$��20��5�   	   $ Bevel=�5�   	   $��2��5�   	   $��1��6   �� 5�      $��0��6   $��3��6"   Round66   � 5�      1 �   �������hx��� �� ����� Zb
���  ��$��20��5�   	   $ Round=�5�   	   $��3��5�   	   $��1��6   �� 5�      $��3��6   $��0��6"   $��2��6/   �� 5�   
   .�6   	Line Caps6   5�   	   �� 5�      $��3��6   $��1��6"   Flat65   � 5�      1 �   �������hx��� �� ����� Zb
���  ��$��20��5�   	    �� StrokeStartLineCap$
 Flat=�5�   	   	 �� StrokeEndLineCap$
	 Flat=�5�   	   $��1��5�   	   $��4��6   �� 5�      $��3��6   $��2��6"   Square67   � 5�      1 �   �������hx��� �� ����� Zb
���  ��$��20��5�   	   $ Square=�5�   	   $	 Square=�5�   	   $��2��5�   	   $��4��6   �� 5�      $��3��6   $��3��6"   Round66   � 5�      1 �   �������hx��� �� ����� Zb
���  ��$��20��5�   	   $ Round=�5�   	   $	 Round=�5�   	   $��3��5�   	   $��4��6   �� 5�      $��3��6   $��4��6"   
Triangle69   � 5�      1 �   �������hx��� �� ����� Zb
���  ��$��20��5   	   $ Triangle=�5  	   $	 Triangle=�5  	   $��4��5  	   $��4��6   5     5     5	     5
     5  	   5     