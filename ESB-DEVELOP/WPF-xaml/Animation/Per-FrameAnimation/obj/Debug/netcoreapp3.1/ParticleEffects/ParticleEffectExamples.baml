   M S B A M L   `   `   `  ����M  IPer-FrameAnimation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:PerFrameAnimationPerFrameAnimation  5      .    (PerFrameAnimation.ParticleEffectExamples   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      .aeclr-namespace:PerFrameAnimation     5        � 	Resources  5       �� 
TargetType �� Property �� Value��%S   '��       �� 5      " ��6   .�5      ��  � ��$	 200��6    5      5	      .��5
      ]� .+�5      �� 
���   ����#8000 �� Padding$ 10q�64   $	��Top=�6A   ._�5      ��  �� Orientation$ Vertical=�6   .+�5   
   �� $ 
Horizontal=�6   .+�5      �� Drag:6   �� 5       �� Orientation$ 
Horizontal=�6    � Minimum$	 0.0Q�6,    � Maximum$	 1.0Q�6:   	 � SmallChange$
	 0.05Q�6H   
 � LargeChange$	
 0.2Q�6[    � DataContext 6m   ��  �� ElementName$ 	MagCanvas�� � Value 6�   ��  �� Path$
 Drag�5      �� 5   
   $ 
Horizontal=�6   .+�5      �� Border Force:6%   �� 5      $ 
Horizontal=�6   $	 0.0Q�6,   $ 5000.0Q�6:   $		 100Q�6K   $	
 500Q�6]    6o   �� $ 	MagCanvas�� 6�   �� $ BorderForce�5      �� 5   
   $ 
Horizontal=�6   .+�5      �� Child Force:6$   �� 5      $ 
Horizontal=�6   $	 0.0Q�6,   $ 1000.0Q�6:   $	 10Q�6K   $	
 100Q�6\    6n   �� $ 	MagCanvas�� 6�   �� $ 
ChildForce�5      5   	   5      �� 5      -   5         ��Name$ 
PageCanvas��5      .+�5      '   !PerFrameAnimation.MagnitismCanvas  -   5          Name$ 	MagCanvas��5         Drag$	 0.8Q�6.      BorderForce$
 1000Q�69      
ChildForce$	 100Q�6L    5      �� $ 
PageCanvas����6@   �� $ ActualWidth���6c   �� $ ActualHeight�.+�5   
   &    PerFrameAnimation.FireworkEffect  
 �� Top$	 100��6    �� Left$	 100��6-   .   (PerFrameAnimation.OverlayRenderDecorator   Child 5       �� 5!      .��6   Click For Fireworks6*   5#      #   PerFrameAnimation.SonicEffect  5$   
   $	 200��6   $	 200��6*      RingThickness$ 10Q�6<      
RingRadius$ 15Q�6O      	RingDelay$ 0:0:0.1h�6`      	RingColor$ 	#22553366��6t    5%      �� 5&      .��6   Click For Sonic burst6,   5(        5)   
   $	 300��6   $	 100��6-    5*      �� 5+      .��6   Click For Fireworks6*   5-        5.   
   $	 400��6   $	 200��6*   $ 10Q�6<   $ 15Q�6O   $ 0:0:0.1h�6`   $ 	#22553366��6t    5/      �� 50      .��6   Click For Sonic burst6,   52        53   
   $	 500��6   $	 100��6-    54      �� 55      .��6   Click For Fireworks6*   57        59   
   $	 100��6   $	 600��6*   $ 10Q�6<   $ 15Q�6O   $ 0:0:0.1h�6`   $ 	#22553366��6t    5:      �� 5;      .��6   Click For Sonic burst6,   5=        5?   
   $	 200��6   $	 500��6-    5@      �� 5A      .��6   Click For Fireworks6*   5C        5E   
   $	 300��6   $	 600��6*   $ 10Q�6<   $ 15Q�6O   $ 0:0:0.1h�6`   $ 	#22553366��6t    5F      �� 5G      .��6   Click For Sonic burst6,   5I        5K   
   $	 400��6   $	 500��6-    5L      �� 5M      .��6   Click For Fireworks6*   5O        5Q   
   $	 500��6   $	 600��6*   $ 10Q�6<   $ 15Q�6O   $ 0:0:0.1h�6`   $ 	#22553366��6t    5R      �� 5S      .��6   Click For Sonic burst6,   5U      5V   	   5Y      5Z      5[      