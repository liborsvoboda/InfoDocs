   M S B A M L   `   `   `  ����  Concepts    Grid_Samp.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Grid Sample��5      .��5      �� $	��500��6   $	��700��6!   $	��400��61   .@�5   
   ��    TabStyle#��[  6   $��Grid Element��64    �� 
IsSelected$
 true��6J   .��5	      �� .+�5
      ��   HeaderStyle#��[ 6   Grid Element Sample6R   �� 5        MainContentStyle#��[ 6   ��Grid defines a flexible grid area consisting of columns and rows. Child elements of a Grid can be positioned precisely using the Margin property.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6D     CodeSnippetParagraph#��[ 6   .��6Y   �2�2
    <Border BorderBrush="Black">

        <Grid ShowGridLines="false" Background="White">
            <Grid.Resources>
                <Style TargetType="{x:Type ColumnDefinition}">
                    <Setter Property="ColumnDefinition.Width" Value="30"/>
                </Style>
                <Style TargetType="{x:Type Rectangle}">
                    <Setter Property="Rectangle.RadiusX" Value="6"/>
                    <Setter Property="Rectangle.RadiusY" Value="6"/>
                </Style>
                <Style x:Key="DayOfWeek">
                    <Setter Property="Grid.Row" Value="1"></Setter>
                    <Setter Property="TextBlock.Margin" Value="5"></Setter>
                </Style>
                <Style x:Key="OneDate">
                    <Setter Property="TextBlock.Margin" Value="5"></Setter>
                </Style>                
            </Grid.Resources>
            <Grid.ColumnDefinitions>
            <ColumnDefinition/>
            <ColumnDefinition/>
            <ColumnDefinition/>
            <ColumnDefinition/>
            <ColumnDefinition/>
            <ColumnDefinition/>
            <ColumnDefinition/>
            <ColumnDefinition Width="*"/>
            <!-- This column will receive all remaining width -->
            </Grid.ColumnDefinitions>
            <Grid.RowDefinitions>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition/>
            <!-- This row will receive all remaining Height -->
            </Grid.RowDefinitions>

            <!-- These Rectangles constitute the backgrounds of the various Rows and Columns -->


            <Rectangle Grid.ColumnSpan="7" Fill="#73B2F5"/>
            <Rectangle Grid.Row="1" Grid.RowSpan="6"  Fill="#73B2F5"/>
            <Rectangle Grid.Column="6" Grid.Row="1" Grid.RowSpan="6" Fill="#73B2F5"/>
            <Rectangle Grid.Column="1" Grid.Row="1" Grid.ColumnSpan="5" Grid.RowSpan="6"
              Fill="#efefef"/>

            <!-- Month row -->
            <TextBlock Grid.ColumnSpan="7" Margin="0,5,0,5" HorizontalAlignment="Center">
                January 2004</TextBlock>

            <!-- Draws a separator under the days-of-the-week row -->

            <Rectangle Grid.Row="1" Grid.ColumnSpan="7" 
            Fill="Black" RadiusX="1" RadiusY="1" Height="2" Margin="0,20,0,0"/>

            <!-- Day-of-the-week row -->
            <TextBlock Grid.Column="0" Style="{StaticResource DayOfWeek}">Sun</TextBlock>
            <TextBlock Grid.Column="1" Style="{StaticResource DayOfWeek}">Mon</TextBlock>
            <TextBlock Grid.Column="2" Style="{StaticResource DayOfWeek}">Tue</TextBlock>
            <TextBlock Grid.Column="3" Style="{StaticResource DayOfWeek}">Wed</TextBlock>
            <TextBlock Grid.Column="4" Style="{StaticResource DayOfWeek}">Thu</TextBlock>
            <TextBlock Grid.Column="5" Style="{StaticResource DayOfWeek}">Fri</TextBlock>
            <TextBlock Grid.Column="6" Style="{StaticResource DayOfWeek}">Sat</TextBlock>

            <!-- Dates go here -->
            <TextBlock Grid.Column="4" Grid.Row="2" Style="{StaticResource OneDate}">1</TextBlock>
            <TextBlock Grid.Column="5" Grid.Row="2" Style="{StaticResource OneDate}">2</TextBlock>
            <TextBlock Grid.Column="6" Grid.Row="2" Style="{StaticResource OneDate}">3</TextBlock>
            <TextBlock Grid.Column="0" Grid.Row="3" Style="{StaticResource OneDate}">4</TextBlock>
            <TextBlock Grid.Column="1" Grid.Row="3" Style="{StaticResource OneDate}">5</TextBlock>
            <TextBlock Grid.Column="2" Grid.Row="3" Style="{StaticResource OneDate}">6</TextBlock>
            <TextBlock Grid.Column="3" Grid.Row="3" Style="{StaticResource OneDate}">7</TextBlock>
            <TextBlock Grid.Column="4" Grid.Row="3" Style="{StaticResource OneDate}">8</TextBlock>
            <TextBlock Grid.Column="5" Grid.Row="3" Style="{StaticResource OneDate}">9</TextBlock>
            <TextBlock Grid.Column="6" Grid.Row="3" Style="{StaticResource OneDate}">10</TextBlock>
            <TextBlock Grid.Column="0" Grid.Row="4" Style="{StaticResource OneDate}">11</TextBlock>
            <TextBlock Grid.Column="1" Grid.Row="4" Style="{StaticResource OneDate}">12</TextBlock>
            <TextBlock Grid.Column="2" Grid.Row="4" Style="{StaticResource OneDate}">13</TextBlock>
            <TextBlock Grid.Column="3" Grid.Row="4" Style="{StaticResource OneDate}">14</TextBlock>
            <TextBlock Grid.Column="4" Grid.Row="4" Style="{StaticResource OneDate}">15</TextBlock>
            <TextBlock Grid.Column="5" Grid.Row="4" Style="{StaticResource OneDate}">16</TextBlock>
            <TextBlock Grid.Column="6" Grid.Row="4" Style="{StaticResource OneDate}">17</TextBlock>
            <TextBlock Grid.Column="0" Grid.Row="5" Style="{StaticResource OneDate}">18</TextBlock>
            <TextBlock Grid.Column="1" Grid.Row="5" Style="{StaticResource OneDate}">19</TextBlock>
            <TextBlock Grid.Column="2" Grid.Row="5" Style="{StaticResource OneDate}">20</TextBlock>
            <TextBlock Grid.Column="3" Grid.Row="5" Style="{StaticResource OneDate}">21</TextBlock>
            <TextBlock Grid.Column="4" Grid.Row="5" Style="{StaticResource OneDate}">22</TextBlock>
            <TextBlock Grid.Column="5" Grid.Row="5" Style="{StaticResource OneDate}">23</TextBlock>
            <TextBlock Grid.Column="6" Grid.Row="5" Style="{StaticResource OneDate}">24</TextBlock>
            <TextBlock Grid.Column="0" Grid.Row="6" Style="{StaticResource OneDate}">25</TextBlock>
            <TextBlock Grid.Column="1" Grid.Row="6" Style="{StaticResource OneDate}">26</TextBlock>
            <TextBlock Grid.Column="2" Grid.Row="6" Style="{StaticResource OneDate}">27</TextBlock>
            <TextBlock Grid.Column="3" Grid.Row="6" Style="{StaticResource OneDate}">28</TextBlock>
            <TextBlock Grid.Column="4" Grid.Row="6" Style="{StaticResource OneDate}">29</TextBlock>
            <TextBlock Grid.Column="5" Grid.Row="6" Style="{StaticResource OneDate}">30</TextBlock>
            <TextBlock Grid.Column="6" Grid.Row="6" Style="{StaticResource OneDate}">31</TextBlock>
        </Grid>
    </Border>
    5|      5}      5~      5      �� 5�      -   5        $��
xamlcsharp��5�      #��[  6%   $��	XAML + C#��6G   .��5�      ��  �� TabStripPlacement$ Right=�6   .@�5�      �� -   5        $��xcsharpCheck��5�        	TabStyle2#��[ 6.   $
��XAML��6Q   �� 5�      #��[ 6   $��C#��6=   5�      5�      �� 5�      -   5        $��xamlvb��5�      #��[  6!   $��XAML + Visual Basic.NET��6C   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6*   $
��XAML��6M   �� 5�      #��[ 6   $��VB.NET��6=   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�   
   -	   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6>   �� 5�   
   -
   5        $��
managedcpp��5�      #��[  6$   $��Managed C++��6F   �� 5�   
   #��[  6   $��Preview Sample��64   .��5�      �� 
���   �._�5�   
   �  � ShowGridLines$ false��6   
������� � 	Resources 5�       �� 
TargetType �� Property �� Value  	DayOfWeek  OneDate��%�  '��       '�� H     &	 �     &	 "    �� 5�      " ��6   .�5�      ��  � ��$ 30 �6.   5�      �� 5�      " ��6   .�5�      ��  �@��RadiusX$ 6��60   �� 5�       �@��RadiusY$ 6��60   5�      �� 5�      .�5�      ��  � ��$ 1��61   �� 5�       � ��$ 5q�69   5�      �� 5�      .�5�      ��  � ��$ 5q�69   5�      5�      	 � ColumnDefinitions	 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      $��* �6   
 � RowDefinitions
 5�      �� 5�      $
��Auto �6   �� 5�      $
��Auto �6   �� 5�      $
��Auto �6   �� 5�      $
��Auto �6   �� 5�      $
��Auto �6   �� 5�      $
��Auto �6   �� 5�      $
��Auto �6   �� 5�      .+�5�      �� $��7��6   ���#73B2F56*   �� 5�      $��1��6   $��6��6#   ���#73B2F565   �� 5�      $��6��6   $��1��6&   $��6��63   ���#73B2F56D   �� 5�      $��1��6   $��1��6&   $��5��63   $��6��6G   ���#efefef5�      �� 5�      $��7��6   $��0,5,0,5q�6,   $��Center=�6=   January 20045�      �� 5�      $��1��6   $��7��6%   
���   � �� RadiusX$ 1��5�       �� RadiusY$ 1��6&   $��2��62   $��0,20,0,0q�6=   �� 5�      $��0��6   #��[ 6(   Sun6P   �� 5�      $��1��6   #��[ 6(   Mon6P   �� 5�      $��2��6   #��[ 6(   Tue6P   �� 5�      $��3��6   #��[ 6(   Wed6P   �� 5�      $��4��6   #��[ 6(   Thu6P   �� 5�      $��5��6   #��[ 6(   Fri6P   �� 5�      $��6��6   #��[ 6(   Sat6P   �� 5�      $��4��6   $��2��6(   #��[ 65   16Y   �� 5�      $��5��6   $��2��6(   #��[ 65   26Y   �� 5�      $��6��6   $��2��6(   #��[ 65   36Y   �� 5�      $��0��6   $��3��6(   #��[ 65   46Y   �� 5�      $��1��6   $��3��6(   #��[ 65   56Y   �� 5�      $��2��6   $��3��6(   #��[ 65   66Y   �� 5�      $��3��6   $��3��6(   #��[ 65   76Y   �� 5�      $��4��6   $��3��6(   #��[ 65   86Y   �� 5�      $��5��6   $��3��6(   #��[ 65   96Y   �� 5�      $��6��6   $��3��6(   #��[ 65   106Z   �� 5�      $��0��6   $��4��6(   #��[ 65   116Z   �� 5�      $��1��6   $��4��6(   #��[ 65   126Z   �� 5�      $��2��6   $��4��6(   #��[ 65   136Z   �� 5�      $��3��6   $��4��6(   #��[ 65   146Z   �� 5�      $��4��6   $��4��6(   #��[ 65   156Z   �� 5�      $��5��6   $��4��6(   #��[ 65   166Z   �� 5�      $��6��6   $��4��6(   #��[ 65   176Z   �� 5�      $��0��6   $��5��6(   #��[ 65   186Z   �� 5�      $��1��6   $��5��6(   #��[ 65   196Z   �� 5�      $��2��6   $��5��6(   #��[ 65   206Z   �� 5�      $��3��6   $��5��6(   #��[ 65   216Z   �� 5�      $��4��6   $��5��6(   #��[ 65   226Z   �� 5�      $��5��6   $��5��6(   #��[ 65   236Z   �� 5�      $��6��6   $��5��6(   #��[ 65   246Z   �� 5�      $��0��6   $��6��6(   #��[ 65   256Z   �� 5�      $��1��6   $��6��6(   #��[ 65   266Z   �� 5�      $��2��6   $��6��6(   #��[ 65   276Z   �� 5�      $��3��6   $��6��6(   #��[ 65   286Z   �� 5�      $��4��6   $��6��6(   #��[ 65   296Z   �� 5�      $��5��6   $��6��6(   #��[ 65   306Z   �� 5�      $��6��6   $��6��6(   #��[ 65   316Z   5�      5�      5�      5�      5�      