   M S B A M L   `   `   `  ����U  QFindingElementsInTemplates, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:FindingElementsInTemplatesFindingElementsInTemplates  5   	   +    %FindingElementsInTemplates.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:FindingElementsInTemplates     5   	     � Title$  
MainWindow��5   	    � SizeToContent$ WidthAndHeight=�6    � 	Resources 5
         InventoryData � XPath  MyDataTemplate �� XPath �� 
TargetType �� Property �� Value �� 
TargetType	 
� Center
 
� RadiusX 
� RadiusY � Color � Offset��%�  &	        &	     '�� �    � 5   
   $ 	Inventory��60   .��5      ��<Inventory xmlns="">
                    <Books>
                        <Book ISBN="0-7356-0562-9">
                            <Title>XML in Action</Title>
                        </Book>
                        <Book ISBN="0-7356-1370-2">
                            <Title>Programming Microsoft Windows With C#</Title>
                        </Book>
                        <Book ISBN="0-7356-1288-9">
                            <Title>Inside C#</Title>
                        </Book>
                        <Book ISBN="0-7356-1377-X">
                            <Title>Introducing Microsoft .NET</Title>
                        </Book>
                    </Books>
                </Inventory>        5      �� 5    
   .R�5!      �� $��	textBlock��6   $��14(�6)   
����  ���5"      �� 5#      $ Title��6   5%      5&      �� 5(   
   " ��6   .�5)      ��  � �� 5*      �� 5+      " ��6&   .R�5,      � $
��grid��6*   $��5q�6   .+�5-      A� 
����  �$��2��68   ��5.   "   
� 5/   &   $	 0.3,0.2&�6:   $	
 0.5Q�6K   $	 0.5Q�6Y   .��50   *   � $ Azure��67   $	 0.1Q�6E   � 51   *   $ CornflowerBlue��67   $	 1.1Q�6N   52   '   54      �� 55      $��content��6/   $��10q�6>   $��Center=�56   !   $��Center=�6>   57      58      5:      5;      5<      .��5>      �� .+�5?   
   �� -   5        $��	myButton1��5?      .��6E   -+Find item in ControlTemplate of this Button6r   �� 5@   
   $��15q�6   
���   �$��2q�61    �� Padding$ 8q�6E   ._�5A      �� .+�5B      �� -   5        $��	myListBox��5B      #��[ 6+   $ �� IsSynchronizedWithCurrentItem$
 TrueY�5C      ��5D      �� 5E       �� Source# [  6"   $ 
Books/Book��6J   5G      �� 5H      -   5        $��	myButton2��5H      .��6J   0.Find item in DataTemplate of selected ListItem6z   5I      5J      5K      5L      