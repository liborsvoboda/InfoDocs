   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5	       �� Padding$ 20q�6#   $	��550��60   $��0,10,0,0q�6<   ._�5
      �� ��This example shows how to apply multiple effects to an object. In this example, a DropShadowBitmapEffect and a BlurBitmapEffect are applied to a button.5   	   5      �� 5      $��20q�6    �� Orientation$ 
Horizontal=�6   .+�5      �� $��20q�6   .+�5   
   �� $��Center=�6   $
��Bold"�61   No BitMapEffect6T   �� 5   
   $��0,40,0,0q�6   $	��300��6#   .��6/   Normal Button6>   5      �� 5      $��20q�6   .+�5   
   �� $��Center=�6   $
��Bold"�61   20With DropShadowBitmapEffect and BlurBitmapEffect6u   �� 5   
   $��0,40,0,0q�6   $	��300��6#   .��6/   DropShadow and Blur Applied J� BitmapEffect 5      �� 5      .��5      ��  �� Radius$ 2Q�6!   F� 5       F� Color$ Black��6'    F� 	Direction$	 320Q�65    F� ShadowDepth$ 30Q�6E    F� Softness$ 1Q�6V   	 F� Opacity$		 0.5Q�5      5      5!      5"   	   5#      �� 5%      ���#EEEEEE
���   �$
��Left=�66   $��1q�6Q   $	��550��6e   ._�5'      �� 2   ,System.Windows.Markup.XmlAttributeProperties
   XmlSpace
 preserve6@     CodeSnippetParagraph#��[ 6   fd
      ...
        <Button Width="300">DropShadow and Blur Applied<Button.BitmapEffect>
            �� 5*      
��� � �.�6&   RP
            <!-- The BitmapEffectGroup is needed to apply multiple effects. -->5+   X   ��
            <BitmapEffectGroup>
              <BlurBitmapEffect Radius="2" />
              <DropShadowBitmapEffect Color="Black" Direction="320" ShadowDepth="30"  
               Softness="1" Opacity="0.5"/>
            </BitmapEffectGroup>
          </Button.BitmapEffect>
        </Button>
      ...
      54   	   56   	   58      59      5:      