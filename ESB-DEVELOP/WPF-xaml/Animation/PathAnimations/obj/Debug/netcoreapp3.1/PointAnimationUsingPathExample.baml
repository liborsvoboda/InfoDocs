   M S B A M L   `   `   `  ����N� 5      W  SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� WindowTitle$%  PointAnimationUsingPath Example��5         MyGridBrushResource N� 
Background# [  5      .��5
      ]� $��20q�6   .+�5      �� ���	#99FFFFFF���#CCCCFF$��2q�6<   $��0,0,0,20q�5   	    �� Padding$ 20q�6   $	��Top=�6(   ._�5   
   �� $	��750��6   ��This example animates an object (rectangle) across the screen along a path. To do this, the Center property value is animated along a PathGeometry using PointAnimationUsingPath. The PointAnimationUsingPath object is needed because the Center property uses a point value.5      5   	   �� 5      $
��Left=�6   .+�5      �� $
��Left=�6   $	��340��6(   $	��240��64   .+�5      F� $	��Top=�6   $��15,15,15,15q�6%   F���Ѐ��  ����    �� h�	 ��� ��
�+S@�� ���9z ��	
���   �$��2��5       �� Stretch$
 None=�5   	   F� 5      
����  �$��15,15,15,15q�6   ��5   
   @� 5       -   5        MyAnimatedEllipseGeometry�� @� Center$ 10,100&�5!       @� RadiusX$ 15Q�6    @� RadiusY$ 15Q�6*   5#   	   5$      �� 5(      $��80��6   $
��Left=�6   .��64   Start Animation � Triggers 5+      :� 5,   
    :� RoutedEvent$ Button.Click��6   .[�5-      �� -   5        	 ��Name$	 MyBeginStoryboard��5-      .��5.      �� .��51      )� 
 �� 
TargetName$
 MyAnimatedEllipseGeometry��52       �� TargetProperty$ Center�53       g� Duration$ 0:0:5D�54       g� RepeatBehavior$ Forever��55       g� AutoReverse$
 True��6*    )� PathGeometry 56      B� 57      $;��5M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100C�6!   59      5:      5;      5<      5>      5?      �� 5B      ���#EEEEEE
���   �$��1q�66   ._�5C      �� $
��Auto=�6   $
��Auto=�6:   .��5D      �� 2   ,System.Windows.Markup.XmlAttributeProperties   XmlSpace preserve6@     CodeSnippetParagraph#��[ 6   ��
      ...
      <Path Margin="15,15,15,15">
        <Path.Data>
        
          <!-- Describes an ellipse. -->
          <EllipseGeometry x:Name="MyAnimatedEllipseGeometry"
             Center="10,100" RadiusX="15" RadiusY="15" />
        </Path.Data>
      </Path>
      ...
      <Storyboard>
      
        <!-- Animates the ellipse along the path. -->
        �� 5R   
   .�6   ��<PointAnimationUsingPath
           Storyboard.TargetName="MyAnimatedEllipseGeometry"
           Storyboard.TargetProperty="Center"
           Duration="0:0:5" 
           RepeatBehavior="Forever" AutoReverse="True" >
             <PointAnimationUsingPath.PathGeometry>
               <PathGeometry Figures="M 10,100 C 35,0 135,0 160,100 180,190 285,200 310,100" />
             </PointAnimationUsingPath.PathGeometry>
         </PointAnimationUsingPath>5Z   )   '%
      </Storyboard>
      ...
      5]   	   5^   	   5_      5b      5c      