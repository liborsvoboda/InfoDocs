   M S B A M L   `   `   `  ����I  EDashboard_Demo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Dashboard_DemoDashboard_Demo  5   	       Dashboard_Demo.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Dashboard_Demo     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5	       	  Small A�Name  SmallBorderArcBackground  SmallOutArcBackground  SmallArcCenterBackground �� Path �� StringFormat �� ElementName 	 Large  LargeBorderArcBackground  LargeOutArcBackground  LargeArcCenterBackground��%j  &	        7  7  7  &	     7  7  7  �� 5
   
   .R�5      � $��	0,110,0,0q�6   $��Center=�6&   .+�5      A� $ ellipse1��6   $	��166��6,   $	��166��68   8��  $��0 -43q�6v   $	��Top=�6�   A� 5      $ ellipse2��6   $	��147��6,   $	��147��68   8�� $��0 -33q�6s   $	��Top=�6�   A� 5      $ ellipse3��6   $	��133��6,   $	��133��68   8�� $��0 -25q�6v   $	��Top=�6�   �� 5      $
��0,30q�6   $��Center=�6*   $��24(�6G   
�������$
��Bold"�6h   ��5   ,   �� $ Value�$ {0:N0}��$ 
dashboard1��5      5      �� 5   
   .R�5      � $��	0,110,0,0q�6   $��Center=�6&   .+�5      A� $ ellipse1��6   $	��166��6,   $	��166��68   8��  $��0 -43q�6v   $	��Top=�6�   A� 5      $ ellipse2��6   $	��147��6,   $	��147��68   8�� $��0 -33q�6s   $	��Top=�6�   A� 5      $ ellipse3��6   $	��133��6,   $	��133��68   8�� $��0 -25q�6v   $	��Top=�6�   �� 5      $
��0,30q�6   $��Center=�6*   $��24(�6G   
�������$
��Bold"�6h   ��5   ,   �� $ Value�$ {0:N0}��$ 
dashboard1��5      5       5!      .��5"      �  � RowDefinitions 5#   
   �� 5$      $	��400 �6   �� 5%      $��* �6   .+�5'   
   ��  �� Orientation$ Vertical=�6   $��40,0,0,0q�6,   .+�5(      �� 
������� �� CornerRadius$ 8��6(   ._�5)      �� .+�5*      �� $��当前库容(卡)��6    $
��Bold"�6/   $��22(�6A   $��Center=�6O   $��0 20 0 0q�6m      Dashboard_Demo.Dashboard  5+      -   5        	  Name$	 
dashboard1��5+   &   $	��300��6:   $	��300��6F   $��
10,10,30,0q�6S   
   LongTickCount$
 6��5,   $      Maximum$ 1000000Q�66      ShortTickCount$ 9��6H   5-      5.      5/      �� 50      -   5         ��Name$ slider1��50      $	��300��6&    �� IsMoveToPointEnabled .  � Maximum$ 1000000Q�51       � Minimum$ 0Q�6+    � Value$ 380700Q�67   6F   52      54      55      