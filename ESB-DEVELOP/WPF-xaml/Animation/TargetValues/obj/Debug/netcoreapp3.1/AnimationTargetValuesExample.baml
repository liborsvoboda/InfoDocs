   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� WindowTitle$'  !To, From, and By Animation Values��5      .��5	      � $��20q�6	    � ColumnDefinitions 5      �� 5      �� 5      $��20 �6   �� 5      $
��Auto �6    � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $��20 �6   �� 5      $
��Auto �6   �� 5      $��20 �6   �� 5      $
��Auto �6   �� 5      $��20 �6   �� 5      $
��Auto �6   �� 5      $��20 �6   �� 5      $
��Auto �6   �� 5      $��20 �6   �� 5      $
��Auto �6   .+�5      �� ���	#FF000000$��3q�6%   $��0��69   $��2��6F   $��10��6W   ._�5       �� ���	#66000000$��1q�6'      MyGridBrushResource#��[  6;   5!      �� 5$        ArrowBackgroundBrush#��[ 6   $��0��6=   $��2��6J   $	��250��5%      $��20��6   $
��Left=�6    $��Center=�6;   $��
50,10,0,10q�5&      �� 5'      #��[ 6   $��2��6=   $��2��6J   $	��200��5(      $��20��6   $
��Left=�6    $��Center=�6;   $��100,10,0,10q�5)      �� 5*      #��[ 6   $��4��6=   $��2��6J   $	��300��5+      $��20��6   $
��Left=�6    $��Center=�6;   $��100,10,0,10q�5,      �� 5-      #��[ 6   $��6��6=   $��2��6J   $	��300��5.      $��20��6   $
��Left=�6    $��Center=�6;   $��
50,10,0,10q�5/      �� 50      #��[ 6   $��8��6=   $��2��6J   $��50��51      $��20��6   $
��Left=�6   $��Center=�6:   $��
50,10,0,10q�52      �� 56      -   5        $��fromToAnimatedRectangle��56      $��0��6/   $��2��6<   $��10��57      $	��100��6   $
��Left=�6    $��Center=�6;   ���	#99FF990058      �� 5;      -   5        $��toAnimatedRectangle��5;      $��2��6+   $��2��68   $��10��5<      $	��100��6   $
��Left=�6    $��Center=�6;   ���	#99FF99005=      �� 5A      -   5        $��byAnimatedRectangle��5A      $��4��6,   $��2��69   $��10��5B      $	��100��6   $
��Left=�6    $��Center=�6;   ���	#99FF99005C      �� 5G      -   5        $��fromByAnimatedRectangle��5G      $��6��6/   $��2��6<   $��10��5H      $	��100��6   $
��Left=�6    $��Center=�6;   ���	#99FF99005I      �� 5M      -   5        $��fromAnimatedRectangle��5M      $��8��6-   $��2��6:   $��10��5N      $	��100��6   $
��Left=�6    $��Center=�6;   ���	#99FF99005O      �� 5Q      $��10��6   $��0��6   $��3��6+   
���2�2�  CustomButtonStyle#��[ 5R      .��6I   Start Animations � Triggers 5T      :� 5U   
    :� RoutedEvent$ Button.Click��6   .[�5V      �� .��5W      ��  g� FillBehavior$
 Stop=�6   .��5[      W�  �� 
TargetName$ fromToAnimatedRectangle��5\       �� TargetProperty$ Width�5]       W� From 505^      		 W� To	 3006   
 g� Duration$
 0:0:10D�6$   W� 5c      $ toAnimatedRectangle��5d      $ Width�5e      	 3005f      $
 0:0:10D�6   W� 5l      $ byAnimatedRectangle��5m      $ Width�5n      	 W� By 3005o      $
 0:0:10D�6   W� 5u      $ fromByAnimatedRectangle��5v      $ Width�5w       505x       3006   $
 0:0:10D�6$   W� 5}      $ fromAnimatedRectangle��5~      $ Width�5       505�      $
 0:0:10D�6   5�      5�      5�      5�      �� 5�      $��0��6   $��0��6   �� 5�      .�6   "From/To" Animation6"   �� 6(   IGAnimates the rectangle's Width property from 50 to 300 over 10 seconds.5�      �� 5�      $��2��6   $��0��6   �� 5�      .�6   "To" Animation6   �� 6#   \ZAnimates the rectangle's Width property from its base value of 100 to 300 over 10 seconds.5�      �� 5�      $��4��6   $��0��6   �� 5�      .�6   "By" Animation6   �� 6#   ��Animates the rectangle's Width property by offsetting its base value by 300 over 10 seconds. As a result, the width animates from 100 to 400.5�      �� 5�      $��6��6   $��0��6   �� 5�      .�6   "From/By" Animation6"   �� 6(   ��Animates the rectangle's Width property by offsetting the animation's start value of 50 by 300 over 10 seconds. As a result, the width animates from 50 to 350.5�      �� 5�      $��8��6   $��0��6   �� 5�      .�6   "From" Animation6   �� 6%   [YAnimates the rectangle's Width property from 50 to its base value of 100 over 10 seconds.5�      5�      5�      