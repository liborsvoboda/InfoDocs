   M S B A M L   `   `   `  ����  AnimationExamples0    *AnimationExamples.AnimatedParagraphExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� WindowTitle$  Text Animation Example��5       N� 
Background 5	      �� 5
       �� 
StartPoint$ 0.5,0&�6    �� EndPoint$ 0.5,1&�6-   ��5   
   �  � Color$ Black��6    � Offset$	 0.4Q�6%   � 5   
   $ #333333��6   $	 0.5Q�6'   � 5   
   $ Black��6   $	 0.6Q�6%   5      .��5      � $��Stretch=�6	    � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      .+�5      �� $��0��6   $��0��6   $��1q�5      $��10q�5      $��Center=�6   ��5      �� 5   
   $ 0.5,0&�6   $ 0.5,1&�61   ��5      � $	 0.0Q�6   $
 Gray��6(   � 5       $	 1.0Q�6   $ Black��6(   5"      ._�5'      �� -   5        $��EntryTextBox��5(   	   $	��300��5)   	   
����  � �� TextWrapping$
 Wrap=�5+   	   $��Center=�5,   	   $��10q�5-   	   .��6   $����Windows Presentation Foundation unifies how Windows creates, displays, and manipulates documents, media, and the user interface, enabling developers and designers to create visually stunning, personalized user experiences that improve the application connection with the user.��50      .��51   	   52      �� 55      $��0��6   $��1��6   $��1q�56      $��10q�57         MyGridBrushResource#��[  6   ��59      �� 5:   
   $ 0.5,0&�6   $ 0.5,1&�61   ��5<      � $	 0.0Q�6   $
 Gray��6(   � 5=      $	 1.0Q�6   $ Black��6(   5?      ._�5D      �� -   5        $��SpecialEffectsTextBlock��5E   	   $��Center=�5F   	   $��Center=�5G   	   $��Segoe UI)�5H   	   $��18 pt(�5I   	   $
��Wrap=�5J   	    �� TextAlignment$ Justify=�5K   	   
���   �$��75q�5M   	   ��5Q   
   �� 5R      	 �� ElementName$	 EntryTextBox��6   
 �� Path$

 Text�6/    �� TextEffects 5V      z� -   5        RotationTextEffect�� z� PositionStart$ 0��5W       z� PositionCount$ 0��5X       z� 	Transform 5Y      �� 5Z      -   5        TextEffectRotateTransform�� �� Angle$ 0Q�5\       �� CenterX$	 200Q�6    �� CenterY$	 200Q�6)   5^       � Triggers 5`   
   :� 5a       :� RoutedEvent$ TextBlock.Loaded��6   .[�5b      �� .��5c      �� .��5g      W�  �� 
TargetName$ TextEffectRotateTransform��5h       �� TargetProperty$ Angle�5i       W� From 05j      	 W� To 3606    g� Duration$ 0:0:15D�5k       g� RepeatBehavior$ Forever��5l      �� 5q      $ RotationTextEffect��5r      $ PositionCount�5s       �� From 05t      $ 0:0:45D�5u      $ Forever��5v       g� AutoReverse$
 True��5w      	 �� To 5t      �� $	 EntryTextBox��$
 Text.Length�5w      5x      5y      5z      5|   	   5}      5~      5      