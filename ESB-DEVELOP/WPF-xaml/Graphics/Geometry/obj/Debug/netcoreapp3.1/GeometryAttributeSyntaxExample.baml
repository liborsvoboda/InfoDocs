   M S B A M L   `   `   `  ����  Geometry-    'Geometry.GeometryAttributeSyntaxExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� WindowTitle$(  "Geometry Attribute Syntax Examples��5       � 	Resources 5       �� 
TargetType �� Property �� Value��%�   '��       '�� t     �� 5      " ��6   .�5      ��  � ��$
 Left=�6.   �� 5	       � ��$ 0,0,0,20q�6!   5
      �� 5      " ��6   .�5      ��  � ��$ 0,0,0,10q�6!   5      5      .��5      �� 
�������$��Stretch=�6   ._�5      �� $��10q�6    �� Orientation$ Vertical=�6   .+�5      �� Line6   �� 5         CodeTextBlockStyle#��[  6   M 10,50 L 200,706P   �� 5      $	��100��6   $	��250��6   
���   �$��1q�6<     MyGridBrushResource#��[ 6P   ._�5   
   F� 
���   �$��1��6   ���Ѐ�� ���� ���,	5      5   	   �� 5      Horizontal Line6#   �� 5      #��[  6   M 10,50 H 2006M   �� 5       $	��100��6   $	��250��6   
���   �$��1q�6<   #��[ 6P   ._�5!   
   F� 
���   �$��1��6   ���Ѐ�� ���� �����	63   5"   	   �� 5$   
   Vertical Line6#   �� 5%   
   #��[  6   M 10,50 V 2006O   �� 5&   
   $	��210��6   $	��250��6   
���   �$��1q�6>   #��[ 6R   ._�5'      F� 
���   �$��1��6    ���Ѐ�� ���р��  ��	64   5(      �� 5,   
   Cubic Bezier Curve6(   �� 5-   
   #��[  6   " M 10,100 C 100,0 200,200 300,1006b   �� 5.   
   $	��200��6   $	��310��6   
���   �$��1q�6>   #��[ 6R   ._�5/      F� 
���   �$��1��6    -���Ѐ��  ��� ��     �� �� �� ��	50      51      �� 53   
   Quadratic Bezier Curve6,   �� 54   
   #��[  6   M 10,100 Q 200,200 300,1006\   �� 55   
   $	��200��6   $	��310��6   
���   �$��1q�6>   #��[ 6R   ._�56      F� 
���   �$��1��6    #���Ѐ��  ��� �� �� �� ��	57      58      �� 5:   
   Smooth Bezier Curve6)   �� 5;   
   #��[  6   /-M 10,100 C35,0 135,0 160,100 S285,200 310,1006o   �� 5<   
   $	��200��6   $	��320��6   
���   �$��1q�6>   #��[ 6R   ._�5=      F� 
���   �$��1��6    F���Ѐ��  ����    �� h�	 ���@� ��@�� ���9z ��	64   5>      �� 5@   
   Elliptical Arc6$   �� 5A   
   #��[  6   " M 10,100 A 100,50 45 1 0 200,1006b   �� 5B   
   $	��300��6   $	��310��6   
���   �$��1q�6>   #��[ 6R   ._�5C      F� 
���   �$��1��6    )���Ѐ��  ��� �� �� �����@��	5D      5E      �� 5I   
   Close Path Command6(   �� 5J   
   #��[  6   M 10,100 L 100,100 100,50 Z6]   �� 5K   
   $	��200��6   $	��250��6   
���   �$��1q�6>   #��[ 6R   ._�5L      F� 
���   �$��1��6    "�������  ��� �� ��� �����	64   5M      �� 5O   
   Multiple Subpaths6'   �� 5P   
   #��[  6   53M 10,100 L 100,100 100,50 Z M 10,10 100,10 100,40 Z6u   �� 5Q   
   $	��200��6   $	��250��6   
���   �$��1q�6>   #��[ 6R   ._�5R      F� 
���   �$��1��6    =�������  ��� �� ��� ��������� ��� � ����� � �� Zb	5S      5T      5V      5W      5X      