   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5	       �� Padding$ 20q�6#   $	��550��60   $��0,10,0,0q�6<   ._�5
      �� ��This example shows a BlurBitmapEffect applied to a Button. A BlurBitmapEffect simulates looking at an object through an out-of-focus lens.5   	   5      �� 5      $��20q�6    �� Orientation$ 
Horizontal=�6   .+�5      �� $��20q�6   .+�5   
   �� $��Center=�6   $
��Bold"�61   No BitMapEffect6T   �� 5   
   $	��200��6   $��0,40,0,0q�6   .��60   Normal Button6?   5      �� 5      $��20q�6   .+�5   
   �� $��Center=�6   $
��Bold"�61   With BlurBitMapEffect6Z   �� 5   
   $	��200��6   $��0,40,0,0q�6   .��60   You Can't Read This! J� BitmapEffect 5      �� 5       �� Radius$ 10Q�6    �� 
KernelType$	 Box=�6+   5"      5#   	   5$      �� 5&      ���#EEEEEE
���   �$
��Left=�66   $��1q�6Q   $	��550��6e   ._�5(   
   �� 2   ,System.Windows.Markup.XmlAttributeProperties   XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   ��
      ...
        <Button Width="200" Margin="0,40,0,0" >
          You Can't Read This!
          <Button.BitmapEffect>
            �� 5-      
��� � �.�6&   ��
            <!-- The larger the Radius, the more blurring. The range of values is
             between 0 and 300 with a default of 20. In addition, the KernelType 
             is set to a box kernel. A box kernel creates less disruption 
             (less blur) then the default Gaussian kernel. -->51   D   ��
            <BlurBitmapEffect Radius="10" KernelType="Box" />

          </Button.BitmapEffect>
        </Button>
      ...
      57   	   59   	   5;      5<      5=      