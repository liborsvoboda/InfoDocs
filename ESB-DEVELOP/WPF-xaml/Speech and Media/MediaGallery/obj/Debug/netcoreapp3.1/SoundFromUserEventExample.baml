   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5      .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6:   $
��Left=�5        �� Padding$  20q�6!   $��	20,10,0,0q�6.   ._�5      �� $
��Wrap=�6   ��The following examples shows how to trigger a sound (wave file) when you click a button. The sample on the right uses a SoundPlayerAction to play sound, making it a lighter weight way of triggering audio playback of wav files.5   	   5      � 5       � ColumnDefinitions 5      �� 5   
   �� 5   
    � RowDefinitions 5      �� 5   
   �� 5   
   .+�5      �� $��0��6   $��0��6#   .+�5   
   �� $��Center=�6   HFClick this button to play a sound using a MediaElement and Storyboard.6y   r� 5   
   -   5        $��myMediaElement��5      �� 5   
   $��100,20,20,0q�6   $	��200��6&   $
��Left=�62   .��6M   Click for Ringing Sound! � Triggers 5      :� 5       :� RoutedEvent$ Button.Click��6   [�5      �� 5       .��5!      �� .��5$      p�  p� Source$ media\ringin.wav?�6$    �� 
TargetName$ myMediaElement��6>   5&      5'      5)      5+      5,   	   �� 5-      $��1��6   $��0��6#   .+�5.   
   �� $��Center=�6   ><Click this button to play a sound using a SoundPlayerAction.6o   �� 5/   
   $��100,20,20,0q�6   $	��200��6&   $
��Left=�62   .��6M   Click for Ringing Sound! 51      :� 52      $ Button.Click��6   [�53      �� 54       �� Source$ media\ringin.wav?�6$   56      58      59   	   �� 5;      $��1��6   $��1��6   ���#EEEEEE
���   �$��20q�6U   $
��Left=�6a   $��1q�6|   ._�5<   
   �� 2   ,System.Windows.Markup.XmlAttributeProperties   XmlSpace preserve6B      CodeSnippetParagraph#��[  6   
      ...
    �� 5>      
��� � �.�6   42<!-- The MediaElement control plays the sound. -->6X   ��
    <MediaElement Name="myMediaElement" />
      
    <Button Width="200">Click for Ringing Sound!
      <Button.Triggers>
        <EventTrigger RoutedEvent="Button.Click">
          <EventTrigger.Actions>
            �� 5E      
��� � �.�6&   42<!-- Sound wave source played on button click. -->6`   ��
            <SoundPlayerAction Source="media\ringin.wav">
          </EventTrigger.Actions>
        </EventTrigger>
      </Button.Triggers>
    </Button>
      ...
      5L   	   5M   	   �� 5O      $��0��6   $��1��6   ���#EEEEEE
���   �$��20q�6U   $
��Left=�6a   $��1q�6|   ._�5P   
   ��  preserve6B   #��[  6   
      ...
    �� 5R      
��� � �.�6   42<!-- The MediaElement control plays the sound. -->6X   ��
    <MediaElement Name="myMediaElement" />
      
    <Button Width="200">Click for Ringing Sound!
      <Button.Triggers>
        <EventTrigger RoutedEvent="Button.Click">
          <EventTrigger.Actions>
            <BeginStoryboard>
              <Storyboard>
                �� 5[      
��� � �.�6*   EC
                <!-- Sound wave source played on button click. -->5\   K   ��
                <MediaTimeline Source="media\ringin.wav" 
                Storyboard.TargetName="myMediaElement"  />

              </Storyboard>
            </BeginStoryboard>
          </EventTrigger.Actions>
        </EventTrigger>
      </Button.Triggers>
    </Button>
      ...
      5g   	   5h   	   5i      5j      5k      