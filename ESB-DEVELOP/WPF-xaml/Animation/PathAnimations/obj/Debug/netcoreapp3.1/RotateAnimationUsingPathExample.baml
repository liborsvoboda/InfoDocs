   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� WindowTitle$)  #Rotate Animation Using Path Example��5         MyGridBrushResource N� 
Background# [  5      .��5      ]� $��20q�6   .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6:   $��0,0,0,20q�5       �� Padding$ 20q�6   $	��Top=�6&   ._�5      �� $	��750��6   ��This example animates the X, Y and Angle transform properties using a path geometry. This results in a rectangle animating along a path across the screen and rotating to follow the contours of the path. The DoubleAnimationUsingPath object is needed because the X, Y, and Angle properties use double values.5   	   5      �� 5      $
��Left=�6   .+�5      �� $
��Left=�6   $��0q�6*   $	��340��65   $	��215��6A   .+�5   
   F� $	��Top=�6   $��15,15,15,15q�6'   F���Ѐ��  ����    �� h�	 ��� ��
�+S@�� ���9z ��	
���   �$��2��5       �� Stretch$
 None=�5       F� 5#   
   
����  �$��	0,0,15,15q�6   ��5$      �� 5%      -   5        MyAnimatedRectGeometry�� �� Rect$ 	0,0 30 30�5%   A    � 	Transform 5&      V� 5'      .~�5(      �� -   5        MyRotateTransform�� �� Angle$ 0Q�5(   ?    �� CenterX$ 15Q�6I    �� CenterY$ 15Q�6V   T� 5)      -   5        MyTranslateTransform��	 T� X$	 10Q�5)   E   
 T� Y$	
 100Q�6L   5*      5,      5.      5/   	   �� 52      $��80��6   $
��Left=�6   .��64   Start Animations � Triggers 56      :� 57   
    :� RoutedEvent$ Button.Click��6   .[�58      �� -   5         ��Name$ MyBeginStoryboard��58      .��59      �� .��5<      T�  �� 
TargetName$ MyRotateTransform��5=       �� TargetProperty$ Angle�5>       T� Source$ Angle=�5?       g� Duration$ 0:0:5D�5@       g� RepeatBehavior$ Forever��5A       g� AutoReverse$
 True��6*    T� PathGeometry 5B      B� 5C      $;��5M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100C�6!   5E      T� 5H      $ MyTranslateTransform��5I      $ X�5J      $ X=�5K      $ 0:0:5D�5L      $ Forever��5M      $
 True��6*    5N      B� 5O      $;��5M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100C�6!   5Q      T� 5T      $ MyTranslateTransform��5U      $ Y�5V      $ Y=�5W      $ 0:0:5D�5X      $ Forever��5Y      $
 True��6*    5Z      B� 5[      $;��5M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100C�6!   5]      5^      5_      5`      5b      5d      �� 5g      ���#EEEEEE
���   �$��1q�68   ._�5h   
   �� $
��Auto=�6   $
��Auto=�6<   .��5i   
   �� 2   ,System.Windows.Markup.XmlAttributeProperties   XmlSpace preserve6C     CodeSnippetParagraph#��[ 6   ��
        ...
        
        <Path Fill="Blue" Margin="0,0,15,15">
          <Path.Data>
            <RectangleGeometry  x:Name="MyAnimatedRectGeometry" Rect="0,0 30 30" >
              <RectangleGeometry.Transform>
                <TransformGroup>
                  <RotateTransform x:Name="MyRotateTransform" Angle="0" CenterX="15" CenterY="15" />
                  <TranslateTransform x:Name="MyTranslateTransform" X="10" Y="100"  />
                </TransformGroup>
              </RectangleGeometry.Transform>
            </RectangleGeometry<
          </Path.Data>
        </Path>
        ...
        <Storyboard>
        
           �� 5{      .�6   ��<!-- Animates the angle along the path. -->
           <DoubleAnimationUsingPath
              Storyboard.TargetName="MyRotateTransform"
              Storyboard.TargetProperty="Angle"
              Duration="0:0:5" 
              RepeatBehavior="Forever" AutoReverse="True" >
                <DoubleAnimationUsingPath.PathGeometry>
                  <PathGeometry Figures="M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100" />
                </DoubleAnimationUsingPath.PathGeometry>
              </DoubleAnimationUsingPath>
 
           <!-- Animates the rectangle horizotally along the path. -->
           <DoubleAnimationUsingPath
              Storyboard.TargetName="MyTranslateTransform"
              Storyboard.TargetProperty="X"
              Source="X" 
              Duration="0:0:5" 
              RepeatBehavior="Forever" AutoReverse="True" >
                <DoubleAnimationUsingPath.PathGeometry>
                  <PathGeometry Figures="M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100" />
                </DoubleAnimationUsingPath.PathGeometry>
              </DoubleAnimationUsingPath>
 
           <!-- Animates the rectangle vertically along the path. -->
           <DoubleAnimationUsingPath
              Storyboard.TargetName="MyTranslateTransform"
              Storyboard.TargetProperty="Y"
              Source="Y" 
              Duration="0:0:5" 
              RepeatBehavior="Forever" AutoReverse="True" >
                <DoubleAnimationUsingPath.PathGeometry>
                  <PathGeometry Figures="M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100" />
                </DoubleAnimationUsingPath.PathGeometry>
              </DoubleAnimationUsingPath>5�   2   '%
      </Storyboard>
      ...
      5�   	   5�   	   5�   	   5�      5�      