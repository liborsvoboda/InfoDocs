   M S B A M L   `   `   `  ����  MediaElementExample)    #MediaElementExample.PlaybackExample   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  PlaybackExample��5      .��5      �� 
������� � 	Resources 5      ��%    5	      .+�5      r� $��5,5,5,5q�5      $	��100��6    r� LoadedBehavior$
 Play=�5       r� Source$ media/numbers-aud.wmv?�5      5      r� 5      -   5        $��media��5      $��5,5,5,5q�5      $	��400��6$   $	��300��60   $ Manual=�5      $ media/numbers-aud.wmv?�5      5      �� 5      
���   �$��Center=�6$    �� Orientation$ 
Horizontal=�6A   .+�5      �� -   5        $��playBTN��5      $��30��6   $��30��6(   $��5q�64   $y�Visible=�6?   $��images/ui_play.gif��5      $
��Fill=�5      5      �� 5      -   5        $��pauseBTN��5      $��30��6   $��30��6)   $��5q�65   $
��Fill=�6@   $y�	Collapsed=�5      $��images/ui_pause.gif��5      5      �� 5      -   5        $��stopBTN��5      $��25��6   $��25��6)   $��5q�65   $
��Fill=�6A   $��images/ui_stop.gif��5       5!      �� 5"      -   5        $��volBTN��5"      $��25��6   $��25��6'   $��5q�63   $
��Fill=�6?   $y�	Collapsed=�5#      $��images/volume.bmp��5$      5%      �� 5&      -   5        $��muteBTN��5&      $��25��6   $��25��6(   $��5q�64   $
��Fill=�6?   $y�Visible=�5'      $��images/mute.bmp��5(      5)      �� 5*      -   5        $��volumeSL��5*      $��50��6   $��25��6*   $��Center=�66   $y�Visible=�5+       � Minimum$ 0Q�6$    � Maximum$ 1Q�60    � Value$	 0.5Q�6<    �� TickPlacement$ BottomRight=�5,      5.   	   5/      r� 50      -	   5        $��storyboardTarget��50      	 � Triggers	 52      :� 53      
 :� RoutedEvent$
 MediaElement.MouseEnter��6   [�54   
   �� 55      .��57      ��  I� SlipBehavior$
 Slip=�6   .��5<      p�  p� Source$ media\numbers.wmv?�6    �� 
TargetName$ storyboardTarget��69    g� 	BeginTime$ 0:0:0X�5=       g� Duration$ 0:0:10D�6"   5?      5@      5B   	   5D      5E      5F      