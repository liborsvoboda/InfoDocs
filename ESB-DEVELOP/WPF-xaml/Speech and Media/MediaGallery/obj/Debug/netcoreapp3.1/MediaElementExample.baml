   M S B A M L   `   `   `  ����  MediaGallery&     MediaGallery.MediaElementExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5	       �� Padding$ 20q�6#   $��	20,10,0,0q�60   $
��1000��6C   ._�5
   
   �� ��The following example shows how to control playback of media using a MediaElement. The example creates a simple media player that allows you to play, pause, stop, and skip back and forth in the media as well as adjust the volume and speed ratio.5      5   	   �� 5       �� Orientation$ 
Horizontal=�6   .+�5      �� $
��Left=�6   $��20q�6.   $	��500��6:   
���   �.+�5   
   r� -   5        $��myMediaElement��5   /    r� Source$ media\xbox.wmv?�6   $	��450��5   
   $	��250��6    r� LoadedBehavior$ Manual=�6#    r� Stretch$
 Fill=�6;   5   
   �� 5   
   $ 
Horizontal=�6   .+�5   
   �� -   5        $��images\UI_play.gif��5      $��5q�6M   �� 5"   
   -   5        $��images\UI_pause.gif��5"      $��5q�6O   �� 5%   
   -   5        $��images\UI_stop.gif��5%      $��5q�6M   �� 5(   
   
�������$��Center=�6'   $��5q�6B   Volume6W   �� 5)   
   -   5        $��volumeSlider��5)      $��Center=�6%    � Minimum$ 0Q�5*   
    � Maximum$ 1Q�6    � Value$	 0.5Q�6"   $��70��6.   �� 5-   
   
�������$��5q�6'   $��Center=�63   	Seek To6W   �� 5.   
   -   5        $��timelineSlider��5.      $��5q�6'   $��70��6U   5/      50   	   �� 53      $��	10,20,0,0q�6   .+�55      �� $��0,5,0,0q�6   $
��Bold"�6#   +)The MediaElement below displays the media6`   �� 56      ���#EEEEEE
���   �$
��Left=�68   $��1q�6S   $	��470��6g   ._�57   
   �� 2  ,System.Windows.Markup.XmlAttributeProperties	  XmlSpace	 preserve6N     CodeSnippetParagraph#��[ 6   $	��700��6B   
      ...
        �� 59   
   
��� � �.�6"   ��<!-- To interactively stop, pause, and play the media, the 
        LoadedBehavior property of the MediaElement must be set to 
        "Manual". -->5;      ��
        <MediaElement Source="media\xbox.wmv" Name="myMediaElement" 
        Width="450" Height="250" LoadedBehavior="Manual" 
        Stretch="Fill" />
      ...
      5@   	   5A   	   �� 5B      $��0,5,0,0q�6   $
��Bold"�6#   53The code below provides control over media playback6j   �� 5C      ���#EEEEEE
���   �$
��Left=�68   $��1q�6S   $	��470��6g   ._�5D   
   �� 	 preserve6B   #��[ 6   
      ...
        �� 5F   
   
��� � �.�6"   ' Play the media.65   31
        myMediaElement.Play()
      ...
        �� 5I   
   
��� � �.�6"   ' Stop the media.65   31
        myMediaElement.Stop()
      ...
        �� 5L   
   
��� � �.�6"   ' Pause the media.66   42
        myMediaElement.Pause()
      ...
        �� 5O   
   
��� � �.�6"   #!' Change the volume of the media.6E   a_
        myMediaElement.Volume = System.Convert.ToDouble(volumeSlider.Value)
      ...
        �� 5R   
   
��� � �.�6"   31' Jump to different parts of the media (seek to).6U   WU 
        Dim SliderValue As Integer = CType(timelineSlider.Value, Integer)

        �� 5U   
   
��� � �.�6"   ec' Overloaded constructor takes the arguments days, 
        ' hours, minutes, seconds, miniseconds.5V   2   	
        �� 5W   
   
��� � �.�6"   A?' Create a TimeSpan with miliseconds equal to the slider value.6c   fd
        Dim ts As New TimeSpan(0, 0, 0, 0, SliderValue)
        myMediaElement.Position = ts
      5Z   	   5[   	   5\   	   5]   	   5^      5_      5`      