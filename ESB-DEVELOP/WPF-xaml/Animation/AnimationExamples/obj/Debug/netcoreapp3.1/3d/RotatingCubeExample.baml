   M S B A M L   `   `   `  ����  AnimationExamples+    %AnimationExamples.RotatingCubeExample   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� WindowTitle$  3D Rotation Example��5	       N� 
Background 5
      �� 5       �� 
StartPoint$ 0.5,0&�6    �� EndPoint$ 0.5,1&�6-   ��5   
   �  � Color$ Black��6    � Offset$	 0.4Q�6%   � 5   
   $ #333333��6   $	 0.5Q�6'   � 5   
   $ Black��6   $	 0.6Q�6%   5      .��5      ]� .+�5      (� .��5      '� $
}�True��6   $	��400��6'   $	��300��63    '� Camera 5   
   =� 5      -   5        myPerspectiveCamera�� � LookDirection$ 0,0,-15�5       � UpDirection$ 0,1,05�6$   	 � Position$	 0,0,31�5      
 =� FieldOfView$
 50Q�5      .x�5   
   g� 2�5      g� 5        g� Content 5!      �� 5"       �� Color$ #333333��6   5$      g� 5%       5&      t� 5'      $ #FFFFFF��6#    t� 	Direction$ -0.612372,-0.5,-0.6123725�63   5)      g� 5*       5+      t� 5,      $ #FFFFFF��6#   $ 0.612372,-0.5,-0.6123725�63   5.      g� 5/       50      � 51         
CubeSide01 � Geometry# [  6"     BranchesMaterial � Material# [ 6I   53      g� 54       55      � 56        
CubeSide02# [ 6"     FlowersMaterial# [ 6I   58      g� 59       5:      � 5;        
CubeSide03# [ 6"     BerriesMaterial# [ 6I   5=      g� 5>       5?      � 5@        
CubeSide04# [ 6"     LeavesMaterial1# [ 6I   5B      g� 5C       5D      � 5E        
CubeSide05# [ 6"    	 RocksMaterial# [	 6I   5G      g� 5H       5I      � 5J       
 
CubeSide06# [
 6"     SunsetMaterial# [ 6I   5L       g� 	Transform 5O      Y� 5P      �5R      ��  �� Rotation 5S      �� 5T      -   5        myHorizontalRotation�� �� Angle$ 0Q�5T   H    �� Axis$ 0 1 05�6R   5V      �� 5W       5X      �� 5Y      -   5        myVerticalRotation��$ 0Q�5Y   F   $ 1 0 05�6P   5[      S� 5\      -   5        myTranslateTransform�� S� OffsetX$ 0Q�5]       S� OffsetY$ 0Q�6    S� OffsetZ$ 0Q�6+   5_      5a       � Triggers 5c   
   :� 5f       :� RoutedEvent$ Viewport3D.Loaded��6   .[�5g      �� .��5h      �� .��5i      W�  �� 
TargetName$ myVerticalRotation��5j       �� TargetProperty$ Angle�5k       W� From 05l      	 W� To 3606    g� Duration$ 0:0:10D�6%    g� RepeatBehavior$ Forever��5m      W� 5n      $ myHorizontalRotation��5o      $ Angle�5p       05q       3606   $ 0:0:9D�6%   $ Forever��5r      5s      5t      5u      5w   	   5x      5y      5{      