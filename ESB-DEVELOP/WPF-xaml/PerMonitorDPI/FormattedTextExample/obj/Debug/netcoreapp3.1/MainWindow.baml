   M S B A M L   `   `   `  ����O  KFormattedTextExample, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:FormattedTextExampleFormattedTextExample  5   	   %    FormattedTextExample.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:FormattedTextExample     5   	     � Title$  
MainWindow��5   	   
���   �.��5	      (�  (� Stretch$ Uniform=�6   .��5
   
   �� -   5        $��canvas��5      
���   �$	��400��5      $	��300��5      .+�5      F� -   5        $
��path��5   	   
 �� Top$ 10��5   	    �� Left$ 40��5   	   
���  ��
������ 5   	   A� 5      -   5        $��ellipse��5   	   $ 0��5   	   $ 30��5   	   $��20��5    	   $��20��5!   	   ��5"      
� 5#      ��5%      �  � Color$ #ffff��6+    � Offset$ 0Q�69   � 5&      $ #0fff��6+   $ 1Q�69   5(      z�5*      u� 5+       � Triggers 5-      :� 5.       :� RoutedEvent$ FrameworkElement.Loaded��6#   [�5/      �� 50      .��51   "   �� -   5         ��Name$ 
storyboard��51   -   .��52   &   z� -   5        	 z�Name$	 matrixAnimation��53      
 g� Duration$
 0:00:59D�54       g� RepeatBehavior$ Forever��55       �� TargetProperty$ RenderTransform.Matrix�56      57   #   58      5:      5<      5>      5?      5@      