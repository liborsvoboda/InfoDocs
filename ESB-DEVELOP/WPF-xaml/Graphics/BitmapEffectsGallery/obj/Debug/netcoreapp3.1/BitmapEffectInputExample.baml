   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�68   .��5   
   �� .+�5	      �� $	��680��5
      $��0,10,0,0q�6    �� Padding$ 20q�6/   $
��Left=�6<   ���	#99FFFFFF���#CCCCFF$��2q�5   '   ._�5      �� vtThis example demonstrates how to apply a BitmapEffect to a portion of an Image using the BitmapEffectInput property.5      5      �� 5      $��	0,20,20,0q�6    �� Orientation$ 
Horizontal=�6,   .+�5      �� $��20q�6   .+�5      �� $��Center=�6    $
��Bold"�6=   No BitMapEffect6`   �� 5      $	��300��5      $��5q�6%   $��/images/WaterLilies.jpg��60   5      �� 5      $��
0,20,20,20q�6   .+�5      �� $��Center=�6    $
��Bold"�6=   Apply an Effect to an Area6k   �� 5      $	��300��5      $��10q�6%   $
��Left=�61   $��/images/WaterLilies.jpg��6G    J� BitmapEffect 5      ?� 5       ?� 
LightAngle$	 320Q�61    ?� Relief$	 0.8Q�6B    J� BitmapEffectInput 5!      �� 51       �� AreaToApplyEffect$ .25,.25,.50,.50�60    �� AreaToApplyEffectUnits$ RelativeToBoundingBox=�6T   53      54      55      �� 57      $	��680��58      $
��Left=�6   ���#EEEEEE
���   �$��1q�6a   ._�5:      �� 2   ,System.Windows.Markup.XmlAttributeProperties	   XmlSpace	 preserve61     CodeSnippetParagraph#��[ ��
      ...
        <Image Width="300" Source="/images/WaterLilies.jpg" Margin="10" DockPanel.Dock="Left">
          <Image.BitmapEffect>
            �� 5>      
��� � �.�6&   42
            <!-- Effect to Apply to the Image -->5?   :   ��
            <EmbossBitmapEffect Relief="0.8" LightAngle="320" />
          </Image.BitmapEffect>
          <Image.BitmapEffectInput>
            �� 5C      
��� � �.�6&   ��
            <!-- BitmapEffectInput is used to apply the bitmap effect to a specified
                 region of the visual. When this property is not used, the effect
                 is applied to the entire visual.
          
               AreaToApplyEffect is a rectangular area in which to apply the effect.
               - When AreaToApplyEffectUnits is "Absolute", the rectangle is read as
                 pixel coordinates within the visual.
               - When AreaToApplyEffectUnits is "RelativeToBoundingBox",
                 the rectangle values are relative to the entire bounding box.
                 Values range between 0 and 1, where (0,0) is the top-left corner
                 and (1,1) is the bottom-right corner. When AreaToApplyEffectUnits is
                 set to "Absolute", rectangle values are defined absolutely within the
                 bounding box. -->5P   (   ��

            <BitmapEffectInput AreaToApplyEffect=".25,.25,.50,.50" 
            AreaToApplyEffectUnits="RelativeToBoundingBox"/>
           �� 5T      
��� � �.�6%   ��<!-- The equivalent of above using absolute positioning is: 
           <BitmapEffectInput AreaToApplyEffect="60,50,180,135" AreaToApplyEffectUnits="Absolute"/> 5U   m   IG
          </Image.BitmapEffectInput>
        </Image>
      ...
      5Y   	   5Z      5[      5\      5]      