   M S B A M L   `   `   `  ����  Animation_Ovws_Snip;    5Microsoft.SDK.Animation.ControllableStoryboardExample   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� WindowTitle$  Fading Rectangle Example��5      .��5      �� $��10q�6   .+�5	      �� -   5        $��MyRectangle��5
      $	��100��5      $	��100��5      
����  �5      �� 5      -   5        $��BeginButton��5      .��6    Begin6'   �� 5      -   5        $��PauseButton��5      .��6    Pause6'   �� 5      -   5        $��ResumeButton��5      .��6!   Resume6)   �� 5      -   5        $��SkipToFillButton��5      .��6%   Skip To Fill63   �� 5      -   5        $��
StopButton��5      .��6   Stop6%    � Triggers 5      :� 5       :� RoutedEvent$ Button.Click��6    :� 
SourceName$ BeginButton��60   .[�5   
   �� -   5         ��Name$ MyBeginStoryboard��5      .��5      �� .��5      W�  �� 
TargetName$ MyRectangle��5       �� TargetProperty$ (Rectangle.Opacity)�5       W� From$	 1.0X�5      	 W� To$	 0.0X�6   	 g� Duration$	 0:0:5D�6#   5      5      5    	   :� 5!      $ Button.Click��6   $ PauseButton��60   .[�5"   
   ?� 
 �� BeginStoryboardName$
 MyBeginStoryboard��6   5#   	   :� 5$      $ Button.Click��6   $ ResumeButton��60   .[�5%   
   �� $
 MyBeginStoryboard��6   5&   	   :� 5'      $ Button.Click��6   $ SkipToFillButton��60   .[�5(   
   �� $
 MyBeginStoryboard��6   5)   	   :� 5*      $ Button.Click��6   $ 
StopButton��60   .[�5+   
   �� $
 MyBeginStoryboard��6   5,   	   5.      5/      