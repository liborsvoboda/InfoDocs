   M S B A M L   `   `   `  ����N� 5      R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� WindowTitle$)  #Animate Properties with Storyboards��5      .��5	      �� 
�������._�5
      �� $��30q�6   $
��Left=�6   $	��500��68   .+�5      �� Storyboard Animation Example60   �� 5      -   5        $��myWidthAnimatedButton��5      $��30��5   	   $	��200��6   $
��Left=�6!   .��6<   
A Button � Triggers 5   
   :� 5       :� RoutedEvent$ Button.Click��6   .[�5      �� .��5      �� .��5      W�  �� 
TargetName$ myWidthAnimatedButton��6"    �� TargetProperty$ Width�5       W� From$	 200X�5      	 W� To$	 300X�6    g� Duration$ 0:0:3D�6'   5      5      5      5    	   �� 5#      $��30��6   $	��200��6   $
��Left=�5$   	   .��6$   Another Button��5%   
   �� 5&      -   5        myAnimatedBrush�� �� Color$
 Blue��5&   5    5(   
   :� 5,      $ Button.Click��6   .[�5-      �� .��5.      �� .��5/      �� $ myAnimatedBrush��50      $ Color�51      	 �� From$		 RedX�52      	
 �� To$

 BlueX�6   $ 0:0:7D�6(   53      54      55      57   	   58      59      5:      