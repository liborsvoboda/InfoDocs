   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5	       �� Padding$ 20q�6#   $	��600��60   $��0,10,0,0q�6<   ._�5
      �� ��This example shows a EmbossBitmapEffect applied to an Image. An EmbossBitmapEffect creates a bump mapping of the visual object to give the impression of depth and texture from an artificial light source.5   	   5      �� 5      $��	0,20,20,0q�6    �� Orientation$ 
Horizontal=�6$   .+�5      �� $��20q�6   .+�5   
   �� $��Center=�6   $
��Bold"�61   No BitMapEffect6T   �� 5   
   $	��300��6   $��/images/WaterLilies.jpg��6   $��5q�6=   5      �� 5      $��
0,20,20,20q�6   .+�5   
   �� $��Center=�6   $
��Bold"�61   With EmbossBitMapEffect6\   �� 5   
   $	��300��6   $��/images/WaterLilies.jpg��6   $��5q�6=    J� BitmapEffect 5      ?� 5"       ?� Relief$	 0.8Q�6!    ?� 
LightAngle$	 320Q�6.   5$      5%   	   5&      �� 5(      ���#EEEEEE
���   �$
��Left=�66   $��1q�6Q   $	��600��6e   ._�5*      �� 2   ,System.Windows.Markup.XmlAttributeProperties   XmlSpace preserve6@     CodeSnippetParagraph#��[ 6   �~
      ...
        <Image Width="300" Source="/images/WaterLilies.jpg" Margin="5">
          <Image.BitmapEffect>
            �� 5.      
��� � �.�6&   ��
            <!-- The Relief property determines the amount of relief of the emboss.
               The valid range of values is 0-1 with 0 having the least relief and
               1 having the most. The default value is 0.44. The LightAngle determines 
               from what direction the artificial light is cast upon the embossed 
               object which effects shadowing. The valid range is from 0-360 (degrees)
               with 0 specifying the right-hand side of the object and successive values  
               moving counter-clockwise around the object. -->55   A   ��
            <EmbossBitmapEffect Relief="0.8" LightAngle="320" />
          </Image.BitmapEffect>
        </Image>
      ...
      5:   	   5;   	   5<      5=      5>      