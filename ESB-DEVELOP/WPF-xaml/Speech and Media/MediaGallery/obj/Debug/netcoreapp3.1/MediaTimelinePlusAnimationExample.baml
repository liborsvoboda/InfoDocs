   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5         MyGridBrushResource  N� 
Background#  [  5      .��5      �� $
��Auto=�6   $
��Auto=�66   .��5      �� .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $
��Left=�5	       �� Padding$ 20q�6#   $��	20,10,0,0q�60   $	��600��6C   ._�5
   
   �� ��One or more MediaTimeline objects can be used in a Storyboard along with other Timeline objects such as animations. The following example shows how to play media and animations together using a MediaTimeline and DoubleAnimationUsingKeyFrames within the same Storyboard.5      5   	   �� 5       �� Orientation$ 
Horizontal=�6   $
��Left=�6,   $��	70,20,0,0q�6G   .+�5      �� 
���   �$��1q�6'   ._�5      �� $	��250��6   $	��250��6!   
�������.+�5      F� 
���� ��$��5��6%   ��5      @� 5      -   5        MyEllipseGeometry�� @� Center$ 125,125&�5       @� RadiusX$ 15Q�6$    @� RadiusY$ 10Q�61   5      F� 5      
��� ���$��5��6#   ��5      @� 5       -   5        MyEllipseGeometry2��$ 125,125&�5!      $ 10Q�6$   $ 15Q�61   5#      5$      5%      �� 5(   
   $	��250��6   $	��250��6   
��� � �.+�5)      r� -   5        $��myMediaElement��5)      $	��250��6/   $	��250��6;    �� Left$ 0��5*      
 �� Top$ 0��6   5+       � Triggers 5,   
   :� 5-      	 :� RoutedEvent$	 MediaElement.Loaded��6   [�5.      �� 5/      -   5        
 ��Name$
 myBegin��5/      .��55      ��  I� SlipBehavior$
 Slip=�6   .��5:      p�  p� Source$ media\xbox.wmv?�6     g� 	BeginTime	 0:0:068    g� Duration$ 0:0:10D�6J    �� 
TargetName$ myMediaElement��5;      U� 5A      $ MyEllipseGeometry��5B       �� TargetProperty$ RadiusY�5C       g� RepeatBehavior$	 10x��5D      \�5F      ��  O� Value$ 80Q�6+    O� KeyTime$ 0:0:0.4��66   �� 5G       �� 	KeySpline$ 0.6,0.0 0.9,0.00��6+   $ 0Q�6H   $ 0:0:1��6R   5I      U� 5L      $ MyEllipseGeometry2��5M      $ RadiusX�5N      $	 10x��5O      \�5Q      �� $ 80Q�6+   $ 0:0:0.4��66   �� 5R      $ 0.6,0.0 0.9,0.00��6+   $ 0Q�6H   $ 0:0:1��6R   5T      5V      5W      5Y      5[   	   �� 5]      $��	20,20,0,0q�6   $
��Bold"�6%   QOThe two Path elements below create the purple and gold rings which are animated5_   	   �� 5`      ���#EEEEEE
���   �$��20q�68   $
��Left=�6D   $��1q�6_   $	��600��6s   ._�5a   
   �� 2   ,System.Windows.Markup.XmlAttributeProperties   XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   ��
      ...
        <Path Stroke="Purple" StrokeThickness="5">
          <Path.Data>
            <EllipseGeometry x:Name="MyEllipseGeometry" Center="125,125" RadiusX="15" 
            RadiusY="10" />
          </Path.Data>
        </Path>
        <Path Stroke="Gold" StrokeThickness="5">
          <Path.Data>
            <EllipseGeometry x:Name="MyEllipseGeometry2" Center="125,125" RadiusX="10" 
            RadiusY="15" />
          </Path.Data>
        </Path>
      ...
      5p   	   5q   	   �� 5r      $��20,5,0,0q�6   $
��Bold"�6$   +)The MediaElement below displays the media6a   �� 5s      ���#EEEEEE
���   �$��20q�68   $
��Left=�6D   $��1q�6_   $	��600��6s   ._�5t   
   ��  preserve6B   #��[ 6   ��
      ...
          <MediaElement Name="myMediaElement" Width="250" Height="250" 
           Canvas.Left="0" Canvas.Top="0"/>
      ...
      5y   	   5z   	   �� 5{      $��20,5,0,0q�6   $
��Bold"�6$   *(The Storyboard below runs the animations6`   �� 5|      ���#EEEEEE
���   �$��20q�68   $
��Left=�6D   $��1q�6_   $	��600��6s   ._�5}   
   ��  preserve6B   #��[ 6   
      ...
        �� 5   
   
��� � �.�6"   ��<!-- This Storyboard contains both media (video in this example) and animations. Note 
        the SlipBehavior value of "Slip" specifies that the animation does not progress
        until the media progresses. This might be desirable if media playback is delayed
        because of loading time. -->5�   *   75
        <Storyboard SlipBehavior="Slip">

          �� 5�      
��� � �.�6$   ��<!-- The MediaTimeline controls the timing of the video and acts like other 
          Timeline objects. For example, although the video clip (xbox.wmv) lasts longer, 
          playback ends after ten seconds because that is the duration of the MediaTimeline 
          (Duration="0:0:10"). -->5�   (   ��
          <MediaTimeline Source="media\xbox.wmv" BeginTime="0:0:0" Duration="0:0:10"
          Storyboard.TargetName="myMediaElement"/>

          �� 5�      
��� � �.�6$   ��<!-- The animations below animate the ellipses in the right hand pane. These 
          animations are timed to correspond to the counting in the video. -->5�   T   

          �� 5�      
��� � �.�6$   ><<!-- Animate the RadiusY property of the purple ellipse. -->6h   ��
          <DoubleAnimationUsingKeyFrames
          Storyboard.TargetName="MyEllipseGeometry"
          Storyboard.TargetProperty="RadiusY"
          RepeatBehavior="10x">
            <DoubleAnimationUsingKeyFrames.KeyFrames>
              <LinearDoubleKeyFrame Value="80" KeyTime="0:0:0.4" />
              <SplineDoubleKeyFrame KeySpline="0.6,0.0 0.9,0.00" Value="0" KeyTime="0:0:1" />
            </DoubleAnimationUsingKeyFrames.KeyFrames>
          </DoubleAnimationUsingKeyFrames>

          �� 5�      
��� � �.�6$   <:<!-- Animate the RadiusX property of the gold ellipse. -->6f   ��
          <DoubleAnimationUsingKeyFrames
          Storyboard.TargetName="MyEllipseGeometry2"
          Storyboard.TargetProperty="RadiusX"
          RepeatBehavior="10x">
            <DoubleAnimationUsingKeyFrames.KeyFrames>
              <LinearDoubleKeyFrame Value="80" KeyTime="0:0:0.4" />
              <SplineDoubleKeyFrame KeySpline="0.6,0.0 0.9,0.00" Value="0" KeyTime="0:0:1" />
            </DoubleAnimationUsingKeyFrames.KeyFrames>
          </DoubleAnimationUsingKeyFrames>

       </Storyboard>
      ...
      5�   	   5�   	   5�      5�      5�      