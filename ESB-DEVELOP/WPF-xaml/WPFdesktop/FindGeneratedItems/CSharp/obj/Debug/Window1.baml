   M S B A M L   `   `   `  ����M  IFindGeneratedItems, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:FindGeneratedItemsFindGeneratedItems  5           FindGeneratedItems.Window1   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      2local clr-namespace:FindGeneratedItems     5        � Title$&   Finding Template-Generated Items��5       � SizeToContent$ WidthAndHeight=�6.    � 	Resources 5         InventoryData � XPath  myDataTemplate �� XPath �� 
TargetType �� Property �� Value �� 
TargetType	 
� Center
 
� RadiusX 
� RadiusY � Color � Offset��%�  &	        &	 P    '�� �    � 5      $ 	Inventory��6,   .��5	      ��<Inventory xmlns="">
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
        </Inventory>        5      �� 5      .R�5      �� $��	textBlock��6   $��14(�6#   
����  ���5    
   �� 5!      $ Title��6   5#   	   5$      �� 5(      " ��6   .�5)      ��  � �� 5*   
   �� 5+      " ��6   .R�5,      � $
��grid��6   $��5q�6   .+�5-      A� 
����  �$��2��6*   ��5.      
� 5/      $	 0.3,0.2&�6(   $	
 0.5Q�69   $	 0.5Q�6G   .��50      � $ Azure��6#   $	 0.1Q�61   � 51      $ CornflowerBlue��6#   $	 1.1Q�6:   52      54      �� 55      $��content��6!   $��10q�60   $��Center=�56   !   $��Center=�6>   57      58      5:   	   5;      5=      .��5?      �� .+�5@      �� -   5        $��	myButton1��5@      .��6A   -+Find item in ControlTemplate of this Button6n   �� 5A      $��15q�6   
���   �$��2q�6-    �� Padding$ 8q�6A   ._�5B      �� .+�5D   
   �� -   5        $��	myListBox��5D      #��[ 6#   $ �� IsSynchronizedWithCurrentItem$
 TrueY�5E      ��5F      �� 5G       �� Source# [  6   $ 
Books/Book��6>   5I      �� 5K   
   -   5        $��	myButton2��5K      .��6B   0.Find item in DataTemplate of selected ListItem6r   5L   	   5M      5N      5O      