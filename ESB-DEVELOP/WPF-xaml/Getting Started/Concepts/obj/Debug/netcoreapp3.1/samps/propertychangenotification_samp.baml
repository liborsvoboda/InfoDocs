   M S B A M L   `   `   `  ����C  ?Concepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null&     PropertyChangeNotification.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$"  Property Change Notification��5      .��5      �� $	��500��6   $	��700��6   $	��400��6-   .@�5   
   ��    TabStyle#��[  6   $)��#Property Change Notification Sample��64    �� 
IsSelected$
 true��6a   .��5      �� .+�5	      ��   HeaderStyle#��[ 6   %#Property Change Notification Sample6b   �� 5        MainContentStyle#��[ 6   64This example demonstrates different button controls.6x   5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   �� 5      -   5        $��
xamlcsharp��5      #��[  6    $��	XAML + C#��6B   .��5      ��  �� TabStripPlacement$ Right=�6   .@�5      �� -   5        $��xcsharpCheck��5        	TabStyle2#��[ 6*   $
��XAML��6M   .��5      �� $��Visible=�6   .��5      �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6F     CodeSnippetParagraph#��[ 6   .��6[   �
�

                
<DockPanel
  xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  xmlns:c="clr-namespace:PropertyChangeNotification"
  x:Language="C#"
  Background="Cornsilk"
  HorizontalAlignment="Left"
  VerticalAlignment="Top"
  Width="350"
  Height="150"
  Name="Page1"
  >

  <DockPanel.Resources>
    <c:BidCollection x:Key="MyDataProvider"/>

    <DataTemplate x:Key="BidItemDataTemplate">
      <Canvas Width="300" Height="20">
        <TextBlock FontSize="10" Foreground="Blue"
          Width="180" Canvas.Left="0" Text="{Binding Path=BidItemName}"/>
        <TextBlock FontSize="10" Foreground="Green"
          Text="$" Canvas.Left="180"/>
        <TextBlock FontSize="10" Foreground="Green"
          Width="80" Canvas.Left="190" Text="{Binding Path=BidItemPrice}"/>
      </Canvas>
    </DataTemplate>
  </DockPanel.Resources>

  <TextBlock FontSize="18" Margin="5" FontWeight="Bold"
    DockPanel.Dock="Top">My Auction Tracker</TextBlock>
  <ListBox Name="MyListBox" DockPanel.Dock="Top"
    Width="315" Height="80" Background="HoneyDew"
    ItemsSource="{Binding Source={StaticResource MyDataProvider}}"
    ItemTemplate="{StaticResource BidItemDataTemplate}"/>

</DockPanel>
                
                
              5=      5>      5?      �� 5@      #��[ 6   $��C#��69   .��5A      �� $��Visible=�6   .��5B      ��  preserve6F   #��[ 6   .��6[   ��
                
using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;

namespace PropertyChangeNotification
{
  public class Bid: INotifyPropertyChanged
  {
    private string _biditemname = "Unset";
    private decimal _biditemprice = (decimal) 0;

    public Bid(string newBidItemName, decimal newBidItemPrice)
    {
      _biditemname = newBidItemName;
      _biditemprice = newBidItemPrice;
    }

    public string BidItemName
    {
      get
      {
        return _biditemname;
      }
      set
      {
        if(_biditemname.Equals(value) == false)
        {
          _biditemname = value;
          // Call OnPropertyChanged whenever the property is updated
          OnPropertyChanged("BidItemName");
        }
      }
    }

    public decimal BidItemPrice
    {
      get
      {
        return _biditemprice;
      }
      set
      {
        if(_biditemprice.Equals(value) == false)
        {
          _biditemprice = value;
          // Call OnPropertyChanged whenever the property is updated
          OnPropertyChanged("BidItemPrice");
        }
      }
    }

    // Declare event
    public event PropertyChangedEventHandler PropertyChanged;
    // OnPropertyChanged event handler to update property value in binding
    private void OnPropertyChanged(string propName)
    {
      if (PropertyChanged !=null)
      {
        PropertyChanged(this, new PropertyChangedEventArgs(propName));
      }
    }
  }

  public class BidCollection: ObservableCollection<Bid>
  {
    private Bid item1 = new Bid("Perseus Vase",(decimal)24.95);
    private Bid item2 = new Bid("Hercules Statue",(decimal) 16.05);
    private Bid item3 = new Bid("Odysseus Painting", (decimal) 100.0);

    private void Timer1_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
    {
      item1.BidItemPrice += (decimal) 1.25;
      item2.BidItemPrice += (decimal) 2.45;
      item3.BidItemPrice += (decimal) 10.55;
    }

    private void CreateTimer()
    {
      System.Timers.Timer Timer1 = new System.Timers.Timer();
      Timer1.Enabled = true;
      Timer1.Interval = 2000;
      Timer1.Elapsed += new System.Timers.ElapsedEventHandler(Timer1_Elapsed);
    }

    public BidCollection():base()
    {
      Add(item1);
      Add(item2);
      Add(item3);
      CreateTimer();
    }
  }
}
                
                
              5�      5�      5�      5�      5�      �� 5�   
   -   5        $��xamlvb��5�      #��[  6    $��XAML + Visual Basic.NET��6B   .��5�      �� $ Right=�6   .@�5�      �� -   5        $��xvbCheck��5�      #��[ 6&   $
��XAML��6I   �� 5�      #��[ 6   $��VB.NET��6;   5�      5�      �� 5�   
   -   5        $��csharp��5�      #��[  6    $��C#��6B   �� 5�      -   5        $��vb��5�      #��[  6   $��Visual Basic.NET��6:   �� 5�      -	   5        $��
managedcpp��5�      #��[  6    $��Managed C++��6B   �� 5�      #��[  6   $��Preview Sample��60   .��5�      G(clr-namespace:PropertyChangeNotificationPropertyChangeNotification  5�      ]� 5�      6c(clr-namespace:PropertyChangeNotification     5�      
�������$
��Left=�5�      $	��Top=�5�      $	��350��5�      $	��150��5�       � 	Resources 5�      .   (PropertyChangeNotification.BidCollection  MyDataProvider  BidItemDataTemplate �� Left �� Path��%�  &	       &	        5�      6   �� 5�      .R�5�      �� $	��300��6   $��20��6   .+�5�   
   �� $��10(�6   
����  �$	��180��5�      $ 0��6   ��6'   �� $ BidItemName��� 5�   
   $��10(�6   
��� � �$��$��5�      $	 180��6   �� 5�   
   $��10(�6   
��� � �$��80��5�      $	 190��6   ��6(   �� $ BidItemPrice�5�   	   5�      5�      .+�5�      �� $��18(�6   $��5q�6   $
��Bold"�6'   $	��Top=�5�      My Auction Tracker6.   �� 5�      -
   5        $��	MyListBox��5�      $	��Top=�6   $	��315��5�      $��80��6   
�������#��[ 5�      ��5�      ��  �� Source# [ 5�      5�      5�      5�   	   5�      