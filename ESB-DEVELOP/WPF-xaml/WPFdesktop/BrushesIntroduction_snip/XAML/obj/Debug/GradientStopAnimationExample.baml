   M S B A M L   `   `   `  ����N� 5      R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� Title$$  GradientStop Animation Example��5	       N� 
Background
 �����.��5      �� $��10q�6   .+�5      �� $	��200��5      $	��100��5      
���   �$��1��5      ��5      �� 5   
   .��5      � -   5        GradientStop1�� � Color$ 
MediumBlue��5   0    � Offset$	 0.0Q�6C   � 5      -   5        GradientStop2��$ Purple��5   0   $	 0.5Q�6?   � 5      -   5        GradientStop3��$	 Red��5   0   $	 1.0Q�6<   5       � Triggers 5      :� 5   
    :� RoutedEvent$# Rectangle.MouseLeftButtonDown��6   .[�5      �� .��5      �� .��5      W�  �� 
TargetName$ GradientStop1��5       �� TargetProperty$ Offset�5       W� From$	 0.0X�5       		 W� To$		 1.0X�6   
 g� Duration$
 0:0:1.5D�6%    g� AutoReverse . 5!      �� 5"      $ GradientStop2��5#      $ Color�5$       �� From$ PurpleX�5%      	 �� To$ YellowX�6   $
 0:0:1.5D�5&       .  g� 	BeginTime$ 0:0:3X�5(      �� 5)      $ GradientStop3��5*      $ Color�5+      $
 0:0:1.5D�5,       . $ 0:0:6X�5.      	 �� By 5/      �� 50      
 �� ScA$ -1��6   
 �� ScR$ 0��6#   
 �� ScB$ 0��6+   
 �� ScG$ 0��63   52      53      54      55      57      5:      5;      