   M S B A M L   `   `   `  ����  	SDKSample$    SDKSample.MediaTimelineExample   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      .��5      �� 
���   �.+�5      r� -   5        $��myMediaElement��5      $	��260��5      $	��150��6     r� Stretch$
  Fill=�6   �� 5      $��Center=�6   $	��260��6,    �� Orientation$ 
Horizontal=�68   .+�5      �� -   5        $��
PlayButton��5      $��images\UI_play.gif��6   $��30,10,10,10q�6:   �� 5      -   5        $��PauseButton��5      $��images\UI_pause.gif��6   $��10q�6<   �� 5      -   5        $��ResumeButton��5      $��images\UI_resume.gif��6    $��10q�6>   �� 5      -   5        $��
StopButton��5      $��images\UI_stop.gif��6   $��10q�6:   5      �� 5      -   5        $��timelineSlider��5      $��5q�6!   $	��250��6,   $��Center=�68    � Triggers 5      :� 5       :� RoutedEvent$ Image.MouseDown��6    :� 
SourceName$ 
PlayButton��61   [�5      �� 5   
   -   5         ��Name$ myBegin��5      .��5      ��  I� SlipBehavior$
 Slip=�6   .��5       p� -   5         p� Source$ media\numbers.wmv?�5        �� 
TargetName$ myMediaElement��67   	 g� 	BeginTime$	 0:0:0X�5!      
 g� Duration$
 0:0:6D�6    61   5#      5$      5&      :� 5,      $ Image.MouseDown��6   $ PauseButton��61   [�5-      ?� 5.   
    �� BeginStoryboardName$ myBegin��6   50      :� 51      $ Image.MouseDown��6   $ ResumeButton��61   [�52      �� 53   
   $ myBegin��6   55      :� 56      $ Image.MouseDown��6   $ 
StopButton��61   [�57      �� 58   
   $ myBegin��6   5:      5>      5?      