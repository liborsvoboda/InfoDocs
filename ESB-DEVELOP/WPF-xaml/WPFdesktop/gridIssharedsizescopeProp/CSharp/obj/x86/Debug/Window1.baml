   M S B A M L   `   `   `  ����  	SDKSample)    #grid_issharedsizescope_prop.Window1   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � Title$#  Grid IsSharedSizeScope Sample��5      .��5      �� 
���   �
�������$��2q�64   ._�5      ]� -   5        $	��dp1��5       � IsSharedSizeScope .  $	��Top=�67   $
��Left=�6O   $��10q�6j   .+�5
      �� $��20(�6   $
��Bold"�6   $	��Top=�60   Grid IsSharedSizeScope Sample6d   �� 5      $
��Wrap=�6   $	��Top=�6!   $��10q�66   ��Use the button controls below to manipulate the value of the IsSharedSizeScope property. When enabled, this property allows multiple Grids to share sizing information for rows and columns.5   \   �� 5       �� Orientation$ 
Horizontal=�6   $	��Top=�6*   .+�5   
   �� -   5        $��	0,0,10,10q�5   !   .��64   Set IsSharedSizeScope="True"6R   �� 5   
   -   5        $��	0,0,10,10q�5   "   .��65   Set IsSharedSizeScope="False"6T   5      �� 5      $ 
Horizontal=�6   $	��Top=�6*   .+�5      �  � ShowGridLines . $��0,0,10,0q�6     � ColumnDefinitions 5      �� 5   
    z� SharedSizeGroup$ FirstColumn��6   �� 5   
   $ SecondColumn��6    � RowDefinitions 5      �� 5   
   $
��Auto �6   $ FirstRow��6&   .+�5   
   �� 
�������$��0��6"   $��0��62   $	��200��6?   $	��100��6K   �� 5   
   
����  �$��1��6    $��0��60   $	��150��6=   $	��100��6I   �� 5!   
   $��0��6   $��0��6$   $
��Bold"�61   First Column6Q   �� 5"   
   $��1��6   $��0��6$   $
��Bold"�61   Second Column6R   5#      � 5%       .  5&      �� 5'   
   $ FirstColumn��6   �� 5(   
   $ SecondColumn��6    5*      �� 5+   
   $
��Auto �6   $ FirstRow��6&   .+�5.   
   �� 
�������$��0��6"   $��0��62   �� 5/   
   
����  �$��1��6    $��0��60   �� 51   
   $��0��6   $��0��6$   $
��Bold"�61   First Column6Q   �� 52   
   $��1��6   $��0��6$   $
��Bold"�61   Second Column6R   53      55      �� 57      -   5        $
��txt1��57   1   $��10q�6   $	��Top=�6   61   59      5:      5;      