   M S B A M L   `   `   `  ����C  ?Concepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null    BindNonTextProperty.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Bind non-Text Property��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $#��Bind Non-Text Property Sample��64    �� 
IsSelected$
 true��6[   .��5	      �� .+�5
      ��   HeaderStyle#��[ 6   Bind non-Text Property Sample6\   �� 5        MainContentStyle#��[ 6   xvThis sample shows how to implement data binding between dependency properties and how to bind to an attached property.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6*   $
��XAML��6M   .��5      �� $��Visible=�6   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6F     CodeSnippetParagraph#��[ 6   .��6[   ��
                
<DockPanel Name="root"
  xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  xmlns:c="clr-namespace:BindNonTextProperty"
  x:Language="C#"
  x:Class="BindNonTextProperty.MyData"
>
  <DockPanel.Resources>
    <c:MyData x:Key="myDataProvider"/>
  </DockPanel.Resources>
  <DockPanel DockPanel.Dock="Top" HorizontalAlignment="Left" VerticalAlignment="Top">
    <DockPanel.DataContext>
      <Binding Source="{StaticResource myDataProvider}"/>
    </DockPanel.DataContext>
    <Button Background="{Binding Path=BoundColor}" Width="150" Height="30">I am bound to be RED!</Button>
  </DockPanel>
</DockPanel>

                
              5+      5,      5-      �� 5.      #��[ 6   $��C#��67   .��5/      �� $��Visible=�6   .��51      ��  preserve6F   #��[ 6   .��6[   ��
using System.Windows.Media;
using System;

namespace BindNonTextProperty
{
  public partial class MyData
  {
    private string _data = "Red";

    public string BoundColor
    {
      get
      {
        return _data;
      }
    }
  }
}
                
             5E      5F      5G      5H      5I      �� 5K   
   -   5        $��xamlvb��5K      #��[  6    $��XAML + Visual Basic.NET��6B   .��5L      �� $ Right=�6   .@�5M      �� -   5        $��xvbCheck��5M      #��[ 6&   $
��XAML��6I   .��5N      �� $��Visible=�6   .��5P      ��  preserve6F   #��[ 6   .��6[   ��
<DockPanel Name="root"
  xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
>
  <DockPanel.Resources>
    <ObjectDataProvider x:Key="myDataProvider" TypeName="WCPSample.myData,BindNonTextPropertySample_VB" />
  </DockPanel.Resources>
  <DockPanel DockPanel.Dock="Top" HorizontalAlignment="Left" VerticalAlignment="Top">
    <DockPanel.DataContext>
      <Binding Source="{StaticResource myDataProvider}"/>
    </DockPanel.DataContext>
    <Button Background="{Binding Path=BoundColor,Mode=OneWay}" Width="100" Height="30">I am RED!</Button>
  </DockPanel>
</DockPanel>
                
              5`      5a      5b      �� 5c      #��[ 6   $��VB.NET��69   .��5d      �� $��Visible=�6   .��5f      ��  preserve6<   #��[ 6   .��6Q   ��
Imports System.Windows.Media
Imports System

Namespace BindNonTextProperty
  Public Class myData
    Private _boundcolor As String = "Red"

    Public ReadOnly Property BoundColor() As String
      Get
        Return _boundcolor
      End Get
    End Property

  End Class
End Namespace
        
      5w   	   5x      5y      5z      5{      �� 5}   
   -   5        $��csharp��5}      #��[  6    $��C#��6B   �� 5      -   5        $��vb��5      #��[  6   $��Visual Basic.NET��6:   �� 5�      -	   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      9!clr-namespace:BindNonTextPropertyBindNonTextProperty  5�      ]� 5�      /c!clr-namespace:BindNonTextProperty     5�      -
   5        $
��root��5�       � 	Resources 5�          BindNonTextProperty.MyData  MyDataProvider��%   &	         5�      6   5�      .+�5�      ]� $	��Top=�6   $
��Left=�6#   $	��Top=�6>    � DataContext 5�      �� 5�       �� Source# [ 6   .+�5�      �� $	��150��64   $��30��6@   ��6   ��  �� Path$ 
BoundColor�.��6L   I am bound to be RED!6c   5�      5�      5�      5�   	   5�      