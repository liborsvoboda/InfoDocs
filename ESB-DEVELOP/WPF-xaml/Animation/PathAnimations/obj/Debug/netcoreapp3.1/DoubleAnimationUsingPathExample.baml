   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� WindowTitle$)  #Double Animation Using Path Example��5         MyGridBrushResource N� 
Background# [  5      .��5
      ]� $��20q�6   .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6:   $��0,0,0,20q�5       �� Padding$ 20q�6   $	��Top=�6&   ._�5      �� $	��750��6   ��This example animates an object (rectangle) across the screen along a path. To do this, the X and Y property values are animated along a PathGeometry using DoubleAnimationUsingPath. The DoubleAnimationUsingPath object is needed because the X and Y properties use double values.5   	   5      �� 5      $
��Left=�6   .+�5      �� $
��Left=�6   $��0q�6*   $	��340��65   $	��215��6A   .+�5   
   F� $	��Top=�6   $��15,15,15,15q�6'   F���Ѐ��  ����    �� h�	 ��� ��
�+S@�� ���9z ��	
���   �$��2��5       �� Stretch$
 None=�5      F� 5!   
   
����  �$��	0,0,15,15q�6   ��5"      �� 5#      -   5        MyAnimatedRectGeometry�� �� Rect$ 	0,0 30 30�5#   A   z�5%      T� 5&      -   5        MyAnimatedTransform�� T� X$ 10Q�5&   >    T� Y$	 100Q�6E   5(      5)   	   �� 5-      $��80��6   $
��Left=�6   .��64   Start Animations � Triggers 50      :� 51   
    :� RoutedEvent$ Button.Click��6   .[�52      �� -   5        	 ��Name$	 MyBeginStoryboard��52      .��53      �� .��56      T� 
 �� 
TargetName$
 MyAnimatedTransform��57       �� TargetProperty$ X�58       T� Source$ X=�59       g� Duration$ 0:0:5D�5:       g� RepeatBehavior$ Forever��5;       g� AutoReverse$
 True��6*    T� PathGeometry 5<      B� 5=      $;��5M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100C�6!   5?      T� 5B      $
 MyAnimatedTransform��5C      $ Y�5D      $ Y=�5E      $ 0:0:5D�5F      $ Forever��5G      $
 True��6*    5H      B� 5I      $;��5M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100C�6!   5K      5L      5M      5N      5P      5R      �� 5V      ���#EEEEEE
���   �$��1q�68   ._�5W   
   �� $
��Auto=�6   $
��Auto=�6<   .��5X   
   �� 2   ,System.Windows.Markup.XmlAttributeProperties   XmlSpace preserve6B     CodeSnippetParagraph#��[ 6   ��
      ...
        <!-- This geometry renders the rectangle that is animated. -->
        <Path Fill="Blue" Margin="0,0,15,15">
          <Path.Data>
            <RectangleGeometry  x:Name="MyAnimatedRectGeometry" Rect="0,0 30 30" />
          </Path.Data>
          <Path.RenderTransform>
            <TranslateTransform x:Name="MyAnimatedTransform" X="10" Y="100" />
          </Path.RenderTransform>          
        </Path>
      ...
        <Storyboard>
        
           �� 5f      .�6   �	�	<!-- Animates the rectangle horizotally along the path. -->
           <DoubleAnimationUsingPath
              Storyboard.TargetName="MyAnimatedTransform"
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
              Storyboard.TargetName="MyAnimatedTransform"
              Storyboard.TargetProperty="Y"
              Source="Y" 
              Duration="0:0:5" 
              RepeatBehavior="Forever" AutoReverse="True" >
              <DoubleAnimationUsingPath.PathGeometry>
                <PathGeometry Figures="M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100" />
              </DoubleAnimationUsingPath.PathGeometry>
            </DoubleAnimationUsingPath>   
           5}      )'
        </Storyboard>
      ...
      5�   	   5�   	   5�   	   5�      5�      