   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� WindowTitle$&   MatrixAnimationUsingPath Example��5         MyGridBrushResource N� 
Background# [  5      .��5
      ]� $��20q�6   .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $��0,0,0,20q�5   	    �� Padding$ 20q�6   $	��Top=�6(   ._�5   
   �� $	��750��6   ��This example animates an object (button) across the screen along a path. To do this, the Matrix value of the RenderTransform property is animated along a PathGeometry. MatrixAnimationUsingPath is used to animate the matrix value.5      5   	   �� 5      $
��Left=�6   .+�5      �� $
��Left=�6   $	��340��6(   $	��240��64   .+�5      F� $	��Top=�6   $��15,15,15,15q�6%   F���Ѐ��  ����    �� h�	 ��� ��
�+S@�� ���9z ��	
���   �$��2��5       �� Stretch$
 None=�5   	   F� 5   
   
����  �$��	0,0,15,15q�6   ��5      �� 5      -   5        MyAnimatedRectGeometry�� �� Rect$ 	0,0 30 30�5   A   z�5!      u� 5"      -   5        myMatrixTransform�� u� Matrix 5#      � 5$       � OffsetX$ 10Q�6    � OffsetY$	 100Q�6&   5&      5(      5)      �� 5,      $	��300��6   $
��Left=�6   .��65   Start Animation � Triggers 50      :� 51   
   	 :� RoutedEvent$	 Button.Click��6   .[�52      �� .��53      �� .��56      z� 
 �� 
TargetName$
 myMatrixTransform��57       �� TargetProperty$ Matrix�58       g� Duration$ 0:0:5D�59       g� RepeatBehavior$ Forever��5:       g� AutoReverse$
 True��6*    z� PathGeometry 5;      B� 5<      $;��5M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100C�6!   5>      5?      5@      5A      5C      �� 5G      $	��300��6   $
��Left=�6   .��65   31Start Animation with DoesRotateWithTangent="True" 5K      :� 5L   
   $	 Button.Click��6   .[�5M      �� .��5N      �� .��5Q      z� $
 myMatrixTransform��5R      $ Matrix�5S       z� DoesRotateWithTangent$
 True��5T      $ 0:0:5D�5U      $ Forever��5V      $
 True��6*    5W      B� 5X      $;��5M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100C�6!   5Z      5[      5\      5]      5_      5a      �� 5e   
   ���#EEEEEE
���   �$��1q�6:   ._�5f      �� $
��Auto=�6   $
��Auto=�6>   .��5g      �� 2   ,System.Windows.Markup.XmlAttributeProperties   XmlSpace preserve6D     CodeSnippetParagraph#��[ 6   ��
          ...
          <!-- The Button that is animated across the screen. -->
          <Button Margin="-30,0,0,0" MinWidth="100">Click
            <Button.RenderTransform>
              <MatrixTransform x:Name="myMatrixTransform">
                <MatrixTransform.Matrix >
                  <Matrix OffsetX="10" OffsetY="100"/>
                </MatrixTransform.Matrix>
              </MatrixTransform>
            </Button.RenderTransform>
          </Button>         
          ...
            �� 5t      
��� � �.�6&   OM<!-- Animation with DoesRotateWithTangent set to false (default is false) -->6{   +)
            <Storyboard>
               �� 5v      .�6   ��<MatrixAnimationUsingPath
                  Storyboard.TargetName="myMatrixTransform"
                  Storyboard.TargetProperty="Matrix"
                  Duration="0:0:5"
                  RepeatBehavior="Forever" AutoReverse="True" >
                  <MatrixAnimationUsingPath.PathGeometry>
                    <PathGeometry Figures="M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100" />
                  </MatrixAnimationUsingPath.PathGeometry>
               </MatrixAnimationUsingPath>   
               5      97
            </Storyboard>
            ...
            �� 5�      
��� � �.�6&   /-<!-- Animation with DoesRotateWithTangent -->6[   +)
            <Storyboard>
               �� 5�      .�6   .�5�      ��<MatrixAnimationUsingPath
                  Storyboard.TargetName="myMatrixTransform"
                  Storyboard.TargetProperty="Matrix"
                  �� 
���  ��.�6*   DoesRotateWithTangent="True"6H   ��
                  Duration="0:0:5" 
                   RepeatBehavior="Forever" AutoReverse="True" >
                  <MatrixAnimationUsingPath.PathGeometry>
                    <PathGeometry Figures="M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100" />
                  </MatrixAnimationUsingPath.PathGeometry>
               </MatrixAnimationUsingPath>   
               5�      53
            </Storyboard>
          ...
          5�      5�      5�      5�      5�      