   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5	       �� Padding$ 20q�6#   $	��550��60   $��0,10,0,0q�6<   ._�5
      �� ��This example shows a OuterGlowBitmapEffect applied to a TextBox. An OuterGlowBitmapEffect creates a halo of color around objects or areas of color.5   	   5      �� 5      $��20q�6    �� Orientation$ 
Horizontal=�6   .+�5      �� $��20q�6   .+�5   
   �� $��Center=�6   $
��Bold"�61   No BitMapEffect6T   �� 5   
   $	��200��6   $��0,40,0,0q�6   $��Center=�60   5   	   �� 5      $��20q�6   .+�5   
   �� $��Center=�6   $
��Bold"�61   With OuterGlowBitMapEffect6_   �� 5   
   $	��200��6   $��0,40,0,0q�6   $��Center=�60   .��6M    J� BitmapEffect 5      O� 5!       O� 	GlowColor$
 Blue��6$    O� GlowSize$ 30Q�65    O� Noise$ 1Q�6C    O� Opacity$	 0.4Q�5"      .��5$   "   5%      5&   	   5'      �� 5)      ���#EEEEEE
���   �$
��Left=�66   $��1q�6Q   $	��550��6e   ._�5+   
   �� 2   ,System.Windows.Markup.XmlAttributeProperties   XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   XV
      ...
        <TextBox Width="200">
          <TextBox.BitmapEffect>
            �� 5/      
��� � �.�6&   ��
            <!-- The OuterGlow is blue, extends out 30 pixels, has the 
             maximum noise possible, and is 40% Opaque. -->51   A   ��
            <OuterGlowBitmapEffect GlowColor="Blue" GlowSize="30" Noise="1"
                Opacity="0.4" />

          </TextBox.BitmapEffect>
        </TextBox>
      ...
      58   	   5:   	   5<      5=      5>      