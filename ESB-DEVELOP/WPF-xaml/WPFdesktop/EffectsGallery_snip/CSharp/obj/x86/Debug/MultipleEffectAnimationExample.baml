   M S B A M L   `   `   `  ����N� 5      R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5      .��5      �� .+�5      �� -   5        $��myButton��5   %   $��50q�6   $	��200��6   .��65   " Click Me to Animate Drop Shadow!z�5	      �� 5
   
   -   5        MyAnimatedScaleTransform��  �� ScaleX$  1Q�5   
    �� ScaleY$ 1Q�6    �� CenterX$	 100Q�6     J� BitmapEffect 5      �� 5   
   .��5      �� -   5        myBlurBitmapEffect�� �� Radius$ 0Q�5   9    �� 
KernelType$	 Box=�6D   F� 5      -   5        myDropShadowBitmapEffect�� F� Color$ Black��5   E    F� ShadowDepth$ 0Q�5      5       � Triggers 5      :� 5   
   	 :� RoutedEvent$	 Button.Click��6   .[�5      �� .��5      �� .��5      W� 
 �� 
TargetName$
 MyAnimatedScaleTransform��5       �� TargetProperty$ ScaleX�5      	 W� To$	 5.0X�5       g� Duration$ 0:0:1D�6    g� AutoReverse . 6+   W� 5"      $
 MyAnimatedScaleTransform��5#      $ ScaleY�5$      $	 5.0X�5%      $ 0:0:1D�6    . 6+   U� 5+      $
 myBlurBitmapEffect��5,      $ Radius�5-       . \�5/      ��  �� 	KeySpline$ 0.6,0.0 0.9,0.00��6)    O� Value$ 30Q�6F    O� KeyTime$ 0:0:1��6Q   51      W� 54      $
 myDropShadowBitmapEffect��55      $ ShadowDepth�56       W� From$ 0X�57      $ 50X�6   $ 0:0:1D�6!    . 58      W� 5<      $
 myDropShadowBitmapEffect��5=      $ Softness�5>      $ 0X�5?      $ 1X�6   $ 0:0:1D�6     . 5@      5A      5B      5C      5E      5G      5I      