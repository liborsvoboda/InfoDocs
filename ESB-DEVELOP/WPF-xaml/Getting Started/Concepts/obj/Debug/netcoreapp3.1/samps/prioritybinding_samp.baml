   M S B A M L   `   `   `  ����C  ?Concepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null    myPriorityBinding.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Priority Binding��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $��Priority Binding Sample��64    �� 
IsSelected$
 true��6U   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   Priority Binding Sample6V   �� 5        MainContentStyle#��[ 6   trThis sample shows how to implement multiple bindings that go into effect based on their place in a priority order.6�   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6*   $
��XAML��6M   .��5      �� $��Visible=�6   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6F     CodeSnippetParagraph#��[ 6   .��6[   �	�	
                
<Window Background="Cornsilk"
  xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  xmlns:c="clr-namespace:myPriorityBinding"
  x:Class="myPriorityBinding.Window1"
  Width = "300"
  Height = "200"
	>
	
  <Window.Resources>
    <c:AsyncDataProvider SlowestDP="Slowest Value" SlowerDP="Slower Value" FastDP="Fast Value" x:Key="AsyncDS" />
  </Window.Resources>
  	
  <StackPanel HorizontalAlignment="Center" VerticalAlignment="Center"
    DataContext="{Binding Source={StaticResource AsyncDS}}">
    <TextBlock FontSize="18" FontWeight="Bold" Margin="10"
      HorizontalAlignment="Center">Priority Binding</TextBlock>
    <TextBlock Background="Honeydew" Width="100" HorizontalAlignment="Center">
      <TextBlock.Text>
        <PriorityBinding>
          <Binding Path="ForceFailOnHighestPriority"/>
          <Binding Path="SlowestDP" IsAsync="True"/>
          <Binding Path="SlowerDP" IsAsync="True"/>
          <Binding Path="FastDP" />
        </PriorityBinding>
      </TextBlock.Text>
    </TextBlock>	
  </StackPanel>
    	
</Window>
                
                
                
              58      59      5:      �� 5;      #��[ 6   $��C#��69   .��5<      �� $��Visible=�6   .��5=      ��  preserve6F   #��[ 6   .��6[   �	�	

using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Data;
using System.Threading;

namespace myPriorityBinding
{
  public partial class Window1 : Window
  {
    public Window1()
    {
      InitializeComponent();
    }
  }

  public class AsyncDataProvider
  {
  	private string _fastDP;
  	private string _slowerDP;
  	private string _slowestDP;

  	public AsyncDataProvider()
  	{
  	}

  	public string FastDP
  	{
      get { return _fastDP; }
      set { _fastDP = value; }
  	}

  	public string SlowerDP
  	{
      get
      {
        // This simulates a lengthy time before the
        // data being bound to is actualy available.
        Thread.Sleep(3000);
        return _slowerDP;
      }
      set { _slowerDP = value; }
  	}

  	public string SlowestDP
  	{
      get
      {
        // This simulates a lengthy time before the
        // data being bound to is actualy available.
        Thread.Sleep(5000);
        return _slowestDP;
      }
      set { _slowestDP = value; }
  	}
  }
}
                
                
              5~      5      5�      5�      5�      �� 5�   
   -   5        $��xamlvb��5�      #��[  6    $��XAML + Visual Basic.NET��6B   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6&   $
��XAML��6I   �� 5�      #��[ 6   $��VB.NET��6;   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -	   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      5clr-namespace:myPriorityBindingmyPriorityBinding  5�      �� 5�      -cclr-namespace:myPriorityBinding     5�      
�������$	��300��5�      $	��200��5�       � 	Resources 5�      )   #myPriorityBinding.AsyncDataProvider   	SlowestDp   SlowerDp   FastDp  AsyncDs��%d   &	         5�      $ Slowest Value��6   $ Slower Value��64   $ 
Fast Value��6L   6`   5�      .+�5�      �� $��Center=�6   $��Center=�6,    � DataContext 5�      �� 	 �� Source#	 [ .+�5�      �� $��18(�6   $
��Bold"�6   $��10q�60   $��Center=�5�      Priority Binding66   �� 5�      
�������$	��100��6&   $��Center=�62   ��5�      � 5�   
   .&�5�      �� 
 �� Path$ 
 ForceFailOnHighestPriority�6   �� 5�      $
 	SlowestDp�6    �� IsAsync$
 True��6%   �� 5�      $
 SlowerDp�6   $
 True��6$   �� 5�      $
 FastDp�6   5�      5�      5�      5�      5�      5�   	   5�      