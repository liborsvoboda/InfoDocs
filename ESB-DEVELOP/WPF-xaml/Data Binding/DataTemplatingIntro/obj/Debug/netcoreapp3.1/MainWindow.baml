   M S B A M L   `   `   `  ����N  JDataTemplatingIntro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:DataTemplatingIntroDataTemplatingIntro  5   	   $    DataTemplatingIntro.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:DataTemplatingIntro     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � SizeToContent$ WidthAndHeight=�65    � 	Resources 5	         DataTemplatingIntro.Tasks   
MyTodoList6   0DataTemplatingIntro.TaskListDataTemplateSelector  MyDataTemplateSelector  ImportantTaskTemplate � 	Resources �� 
TargetType �� Property �� Value �� Padding �� Path  MyTaskTemplate	 � RowDefinitions
 � ColumnDefinitions �� Triggers �� Binding �� Value"   DataTemplatingIntro.TaskType �� 
TargetName��%�  &	        &	      &	 &     &	 �      5
   
   6     5   
   6-   �� 5   
    5      ���� 5      '��       " ��6   .�5      ��  � ��$ 20(�61   5      5      .R�5      �� $��border��6   
���  ��$��1q�65   $ 5q�5      $��5q�6   ._�5      ]� $��Center=�6   .+�5      �� ��6    �� $ Description��� 5      !6#   5      5      5      �� 5   
   .R�5      �� $��border��6   
����� �$��1q�66   $ 5q�5       $��5q�6   ._�5!      � 	 5"      �� 5#      �� 5$      �� 5%      
 5'      �� 5(      �� 5)      .+�5+      �� $��0��6    $��0��6-   $��
Task Name:��6=   �� 5,      $��0��6    $��1��6-   ��6=   �� $ TaskName��� 5-      $��1��6    $��0��6-   $��Description:��6=   �� 5.      $��1��6    $��1��6-   ��6=   �� $ Description��� 5/      $��2��6    $��0��6-   $��	Priority:��6=   �� 50      $��2��6    $��1��6-   ��6=   �� $ Priority�51      52       54      �� 55       6   �� $ TaskType� 56       57      Home=�6/   .a�59      �� $ border��6    � ��
 � ���6H   5:      5=      5>      .��5@      �� .+�5A   
   �� $��20(�6   $��My Task List:��6"   �� 5B   
   $	��400��6   $��10q�6   #��[ 5D      $��Stretch=�5E      $ �� IsSynchronizedWithCurrentItem$
 TrueY�5F      ��5C      ��  �� Source# [  5F      �� 5G   
   $��20(�6   $��Information:��6"   �� 5H   
   #��[ 5I      ��5H      �� # [  5I      5J      5K      