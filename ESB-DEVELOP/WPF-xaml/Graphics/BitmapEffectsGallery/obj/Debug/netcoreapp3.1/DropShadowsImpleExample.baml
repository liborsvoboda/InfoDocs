   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5	       �� Padding$ 20q�6#   $	��600��60   $��0,10,0,0q�6<   ._�5
      �� ��This example shows a DropShadowBitmapEffect applied to a Button. A DropShadowBitmapEffect applies a shadow behind a visual object at a slight offset. The offset is determined by mimicking a casting shadow from an imaginary light source.5   	   5      �� 5      $��40,20,20,20q�6    �� Orientation$ 
Horizontal=�6&   .+�5      �� $��20q�6   .+�5   
   �� $��Center=�6   $
��Bold"�61   No BitMapEffect6T   �� 5   
   $��0,40,0,0q�6   $	��200��6#   .��6/   Normal Button6>   5      �� 5      $��20q�6   .+�5   
   �� $��Center=�6   $
��Bold"�61   With DropShadowBitmapEffect6`   �� 5   
   $��0,40,0,0q�6   $	��200��6#   .��6/   DropShadow Under this Button J� BitmapEffect 5      F� 5-       F� Color$ Black��6%    F� 	Direction$	 320Q�63    F� ShadowDepth$ 25Q�6C    F� Softness$ 1Q�6T    F� Opacity$	 0.5Q�5.      51      52   	   53      �� 55      ���#EEEEEE
���   �$
��Left=�66   $��1q�6Q   $	��600��6e   ._�57   
   �� 2   ,System.Windows.Markup.XmlAttributeProperties	   XmlSpace	 preserve6B     CodeSnippetParagraph#��[ 6   ge
      ...
        <Button Width="200">DropShadow Under this Button<Button.BitmapEffect>
            �� 5:      
��� � �.�6&   �	�	
            <!-- The DropShadowBitMapEffect has several important properties that
             determine characteristics of the drop shadow: 
             - Color: Specifies the color of the drop shadow (in this example black).
             - ShadowDepth: Specifies how far displaced the shadow is from the object
               casting the shadow. Default is 20.
             - Direction: Specifies in what direction the shadow is cast from the object. 
               It is an angle between 0 and 360 with 0 starting on the right hand side 
               and moving counter-clockwise around the object. The value of 320 in this 
               example casts the shadow on the lower right hand side of the button.
             - Noise: Specifies how grainy the drop-shadow is. Range is between 0 and 1.
               Default is 0.
             - Softness: Specifies how soft the shadow. The range is between 0 and 1 with 1
               being the softest. Default is 0.5. 
             - Opacity: Specifies how transparent the shadow is. The range is between 0 
               and 1 with 1 being fully opaque and 0 fully transparent (not visible). The
               default is 1. -->5J   &   ��
            <DropShadowBitmapEffect Color="Black" Direction="320" ShadowDepth="25" Softness="1" 
               Opacity="0.5"/>

          </Button.BitmapEffect>
        </Button>
      ...
      5Q   	   5S   	   5U      5V      5W      