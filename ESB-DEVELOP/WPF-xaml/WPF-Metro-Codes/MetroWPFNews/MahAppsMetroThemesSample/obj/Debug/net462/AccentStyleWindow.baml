   M S B A M L   `   `   `  ����R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R8clr-namespace:System.ComponentModel;assembly=WindowsBaseSystem.ComponentModel  5       MahAppsMetroThemesSample0   *MahAppsMetroThemesSample.AccentStyleWindow   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5      T PMahApps.Metro, Version=3.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3f6mah,http://metro.mahapps.com/winfx/xaml/controls  5      >mahConverters*http://metro.mahapps.com/winfx/xaml/shared  5      Q MControlzEx, Version=7.0.0.0, Culture=neutral, PublicKeyToken=69f1c32f803d307e
controlzexurn:controlzex  5      McomponentModel8clr-namespace:System.ComponentModel;assembly=WindowsBase  5        �� ClearTypeHint$  Enabled=�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�5	       � Title$ Change App Style��5
       � SizeToContent$ WidthAndHeight=�5         MahApps.Colors.Accent#  ControlzEx.WindowChromeWindow   	GlowColor# �   5       � 
ResizeMode$ CanResizeWithGrip=�5       � 	Resources 5       �� MergedDictionaries �� Source 
 Themes	 �� Source%  ControlzEx.Theming.ThemeManager
   Current �� Source �� Path �� SortDescriptions+   %System.ComponentModel.SortDescription   PropertyName�� 5   
    5      �� 5      $R Lpack://application:,,,/MahApps.Metro;component/Styles/Themes/Light.Blue.xaml?�6%   %r   &	       �� 5      	 5   #   �� # Z
 $ Themes� 5        5      $
 Name��65   5      5      (  "MahApps.Metro.Controls.MetroWindow   TitleTemplate 5      �� 5    
   .R�5!      �� $��CharacterEllipsis=�5#      $��Center=�5$      $��8 -1 0 0q�5%       " MahApps.Font.Size.Window.Title#���  5&       % !MahApps.Fonts.Family.Window.Title#���  5'      ��5"      ��  �� RelativeSource �� *TemplatedParent+$ Content� �� 	Converter /  )MahApps.Metro.Converters.ToUpperConverter  5'      5(      .��5+      �  5-   
    �� 
TargetType �� BasedOn �� Property �� Value��%�   '��       7���� 5.      " ��6   8   .�50      ��  � ��$ 23��51      �� 52       � ��$ 2q�53      54      55       � RowDefinitions 57   
   �� 58      $
��Auto �6   �� 59      $
��Auto �6   .+�5<   
   �� $��0��6   $��5q�5=      $��This Window��5>      .��5?      A�  A� Columns$ 5��6   .+�5@      �� -   5        $
��Dark��5@      5A      �� 5B      -   5        $��Light��5B      5C      �� 5D      -   5        $
��Blue��5D      5E      �� 5F      -   5        $	��Red��5F      5G      �� 5H      -   5        $��Green��5H      5I      5J      5K      �� 5M   
   $��1��6   $��5q�5N      $��The Application��5O      .��5P      �  5Q      �� 5R      $
��Auto �6$   �� 5S      $
��Auto �6$   �� 5T      $
��Auto �6$   .+�5W      A� $��0��6   $ 5��5X      .+�5Y      �� -   5        $
��Dark��5Y      5Z      �� 5[      -   5        $��Light��5[      5\      �� 5]      -   5        $
��Blue��5]      5^      �� 5_      -	   5        $	��Red��5_      5`      �� 5a      -
   5        $��Green��5a      5b      5c      A� 5e      $��1��6   $ 5��5f      .+�5g      �� -   5        $��Light.Accent1��5g      5h      �� 5i      -   5        $��Dark.Accent1��5i      5j      �� 5k      -   5        $��Light.Accent2��5k      5l      �� 5m      -   5        $��Dark.Accent2��5m      5n      5o      A� 5q      $��2��6   $��5q�6+   $ 2��66    A� Rows$ 2��6B   .+�5r      �� $��Accents��6    $��0 0 2 0q�6/   $��Center=�6@   �� 5s      $��Colors��6    $��2 0 0 0q�6.   $��Center=�6?   �� 5u      -   5         ��Name$ AccentSelector��5u      $��0 0 2 0q�5v      $��Center=�5w      $ �� IsSynchronizedWithCurrentItem$ FalseY�5x       �� DisplayMemberPath$
 Name��5z      ��5{      �� # [ �� 5}      -   5        $ ColorsSelector��5}      $��2 0 0 0q�5~      $��Center=�5      $	 Key��5�      ��5�      �� *Colors+5�      5�      5�      5�      5�      