   M S B A M L   `   `   `  ����G  CMasterDetail, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:MasterDetailMasterDetail  5   	       MasterDetail.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:MasterDetail     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � 	Resources 5	         MasterDetail.LeagueList 
  MyList �� 
TargetType �� Property �� Value��%A  &	        '��      '�� �     '�� �       5
   
   6   �� 5   
   " ��6   .�5      ��  � ��$
 Left=�6/   �� 5       � ��$ 	10,0,10,0q�6'   5      �� 5   
   " ��6   .�5      ��  � ��$	 100��6'   5      �� 5   
   " ��6   .�5      ��  � ��$ 12(�6)   5      5      .��5      ]�  � DataContext 6   ��  �� Source# [  .+�5   
   �� .+�5      �� .��6   My Soccer Leagues6'   �� 5      $ �� IsSynchronizedWithCurrentItem$
 trueY�5      ��5      �� 5      5      �� 5   
   .+�5      �� ��6   ��  �� Path$
 Name��� 5      $
 trueY�5       ��5      �� $ 	Divisions�5       5!      �� 5"   
   .+�5#      �� ��6   �� $ Divisions/Name��� 5$      ��6   �� $ Divisions/Teams�5%      5&      5'      