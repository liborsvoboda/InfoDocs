   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�68   .��5   
   �� .+�5	      �� $	��600��5
      $��0,10,0,0q�6    �� Padding$ 20q�6/   $
��Left=�6<   ���	#99FFFFFF���#CCCCFF$��2q�5   '   ._�5      �� ��This example shows a BevelBitmapEffect applied to a Button. A BevelBitmapEffect creates a bevel which raises the surface of the object according to a specified curve.5      5      �� 5      $��40,20,20,20q�6    �� Orientation$ 
Horizontal=�6.   .+�5      �� $��20q�6   .+�5      �� $��Center=�6    $
��Bold"�6=   No BitMapEffect6`   �� 5      $	��200��5      $��80��6%   $��0,40,0,0q�61   .��6C   Normal Button5      5      �� 5      $��20q�6   .+�5      �� $��Center=�6    $
��Bold"�6=   With BevelBitMapEffect6g   �� 5      $	��200��5      $��80��6%   $��0,40,0,0q�61   .��6C   Bevelled Button J� BitmapEffect 5       �� 53      -   5        InteractiveEffect�� �� 
BevelWidth$ 15Q�54   <    �� EdgeProfile$ CurvedIn=�6L    �� 
LightAngle$	 320Q�6c    �� Relief$	 0.4Q�6t    �� 
Smoothness$	 0.4Q�55   !   59      5:      5;      �� 5=      $	��600��5>      $
��Left=�6   ���#EEEEEE
���   �$��1q�6a   ._�5@      �� 2   ,System.Windows.Markup.XmlAttributeProperties	   XmlSpace	 preserve61     CodeSnippetParagraph#��[ qo
      ...
        <Button Width="200" Height="80">Bevelled Button
          <Button.BitmapEffect>
            �� 5D      
��� � �.�6&   �	�	
            <!-- The BevelBitMapEffect has several important properties that
             determine characteristics of the bevel effect: 
             - BevelWidth: Specifies how wide the bevel is (size of the bevel). In this 
               example, the bevel is fairly wide at 15 (default is 5).
             - EdgeProfile: Specifies the curve of the bevel. The default is "Linear".
             - LightAngle: Specifies in what direction the "virtual light" is coming from
               that create the shadows of the bevel. It is an angle between 0 and 360 with 0  
               starting on the right hand side and moving counter-clockwise around the object. 
               The shadows of the bevel are on the opposite side of where the light is cast. 
               The value of 320 in this example casts the light on the lower right hand side 
               of the bevel and shadow on the upper left.
             - Relief: Specifies the height of the relief of the bevel. Range is between 0 and 1
               with 1 having the most relief (darkest shadows). The default is 0.3.
             - Smoothness: Specifies how smooth the shadows are. The range is between 0 and 1 
               with 1 being the softest. Default is 0.5. -->5S   B   ��
            <BevelBitmapEffect x:Name="InteractiveEffect" BevelWidth="15" 
               EdgeProfile="CurvedIn" LightAngle="320" Relief="0.4" Smoothness="0.4" />
          </Button.BitmapEffect>
        </Button>
      ...
      5Y   	   5[      5]      5^      5_      