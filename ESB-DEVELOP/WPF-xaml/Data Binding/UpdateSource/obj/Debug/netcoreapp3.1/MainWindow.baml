   M S B A M L   `   `   `  ����G  CUpdateSource, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:UpdateSourceUpdateSource  5   	       UpdateSource.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:UpdateSource     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � 	Resources 5	       �� 
TargetType �� Property �� Value��%i  '��       '�� �     �� 5
   
   " ��6   .�5      ��  � ��$ 12(�6)   �� 5       � ��$
 Bold"�6+   �� 5       � ��$ 	10,10,0,0q�6'   �� 5       � ��$ Center=�64   5      �� 5   
   " ��6   .�5      ��  � ��$	 100��6&   �� 5       � ��$ 5q�6'   �� 5       � ��$ Center=�64   5      5      .��5      �� -   5        $��RootElem��5       5   
      UpdateSource.UserProfile   MyDataSource��%   &	          5      6    5       � DataContext 5   
   �� 5       �� Source# [  6   .+�5   
   �� HFFill in the bid form and click Preview to verify your bid information.6\   �� 5   
   
Item Name:6    �� 5    
   -   5        $��itemNameTextBox��5       ��5!      ��  �� Path$ ItemName� �� UpdateSourceTrigger$ Explicit=��� 5"   
   
Bid Price:6    �� 5#   
   -   5        $��bidPriceTextBox��5#      ��5$   	   �� $ BidPrice�$ Explicit=��� 5%   
   -   5        $	��100��5%      $��25��6   $��5,5,0,0q�6)   .��5&      	Preview6(   �� 5(   
   -   5        $��userdata��5(   !   	 J� Opacity$	 0Q�6   
�������.+�5)      �� ?=Verify the following information is correct and click Submit.6W   �� 5*      
Item Name:6$   �� 5+      ��6   �� $ ItemName��� 5,      
Bid Price:6$   �� 5-      ��6   �� $ BidPrice��� 5.      -   5        $��Finish��5/      $	��100��5.      $��25��6!   $��5,5,0,0q�6-   $	 0Q�5/   ,   .��68   Submit6@   50      51      52      