   M S B A M L   `   `   `  ����N� 5      R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        � 	Resources  5       �� 
TargetType   MyButtonStyle �� Property �� Value F� Color F� ShadowDepth O� 	GlowColor �� Triggers :� RoutedEvent	 �� TargetProperty
 �� From	 �� To g� Duration g� AutoReverse��%  &	        �� 5      " ��6   .�5      ��  �@J�BitmapEffect 5   
   �� 5	      .��5
      F� myDropShadowBitMapEffect��$ Black��6G   $ 3Q�6U   O� 5      $
 Gray��6$   5      5   	    5      :� 5   
   $ Button.MouseEnter��6   [�5      �� 5      .��5      �� .��5      �� $Z	 T(Button.BitmapEffect).(BitmapEffectGroup.Children)[0].(DropShadowBitmapEffect.Color)�6!   $

 GrayX�6�   $	 RedX�6�   $ 0:0:0.5D�6�    .  6�   5      5      5      :� 5   
   $ Button.MouseLeave��6   [�5      �� 5      .��5      �� .��5       �� $$	 BitmapEffect.Children[0].Color�6!   $	
 RedX�6\   $
 GrayX�6g   $ 0:0:0.5D�6q    .  6�   5!      5"      5$      5&      5'      .��5(      �� $��20q�6   .+�5)      �� #��[  6   .��64   
Click Me6>   5*      5+      