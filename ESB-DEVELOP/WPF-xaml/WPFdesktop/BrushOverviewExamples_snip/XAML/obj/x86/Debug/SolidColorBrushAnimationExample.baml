   M S B A M L   `   `   `  ����  BrushExamplesE    ?Microsoft.Samples.BrushExamples.SolidColorBrushAnimationExample   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� WindowTitle$'  !SolidColorBrush Animation Example��5       N� 
Background
 �����.��5      �� .+�5      �� .��6   
A Button��5      �� 5   
   -   5        MyAnimatedSolidColorBrush�� �� Color$
 Blue��5   =    � Triggers 5      :� 5   
    :� RoutedEvent$ Button.Click��6   .[�5      �� .��5      �� .��5      ��  �� 
TargetName$ MyAnimatedSolidColorBrush��5       �� TargetProperty$ Color�5       �� From$	 RedX�5      	 �� To$
 BlueX�5      	 g� Duration$	 0:0:10D�5      5      5      5      5      5      5       