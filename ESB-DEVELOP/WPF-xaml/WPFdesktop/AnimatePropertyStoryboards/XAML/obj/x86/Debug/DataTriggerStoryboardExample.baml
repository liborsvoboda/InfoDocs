   M S B A M L   `   `   `  ����N� 5      R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5        N� Title$"  DataTriggerStoryboardExample��5       � 	Resources 5         InventoryData � XPath  AnimatedListBoxItemStyle �� 
TargetType �� Property �� Value �� Triggers �� Binding �� XPath	 �� Value
 N� EnterActions �� TargetProperty W� From	 W� To g� Duration g� RepeatBehavior g� AutoReverse N� ExitActions g� FillBehavior��%�  &	        &	 �    � 5      $ Inventory/Books��6,   .��5	      ��
<Inventory xmlns="">
          <Books>
            <Book ISBN="0-7356-0562-9" Stock="in" Number="9">
              <Title>XML in Action</Title>
              <Summary>XML Web Technology</Summary>
            </Book>
            <Book ISBN="0-7356-1370-2" Stock="in" Number="8">
              <Title>Programming Microsoft Windows With C#</Title>
              <Summary>C# Programming using the .NET Framework</Summary>
            </Book>
            <Book ISBN="0-7356-1288-9" Stock="out" Number="7">
              <Title>Inside C#</Title>
              <Summary>C# Language Programming</Summary>
            </Book>
            <Book ISBN="0-7356-1377-X" Stock="in" Number="5">
              <Title>Introducing Microsoft .NET</Title>
              <Summary>Overview of .NET Technology</Summary>
            </Book>
            <Book ISBN="0-7356-1448-2" Stock="out" Number="4">
              <Title>Microsoft C# Language Specifications</Title>
              <Summary>The C# language definition</Summary>
            </Book>
          </Books>
          <CDs>
            <CD Stock="in" Number="3">
              <Title>Classical Collection</Title>
              <Summary>Classical Music</Summary>
            </CD>
            <CD Stock="out" Number="9">
              <Title>Jazz Collection</Title>
              <Summary>Jazz Music</Summary>
            </CD>
          </CDs>
        </Inventory>        5-      �� 5/      " ��6-   .�51      ��  � ��$ 0,2,0,2q�6!   �� 52       � ��$ 0,2,0,2q�6"    54      �� 55   
    56   
   �� $ @Stock��	 out57   
   
 58      �� 59      .��5:      �� .��5;      W� $ Opacity�5<      $
 0.25X�5=      $	 0.5X�6   $ 0:0:1D�6'   $ Forever��5>       . 5?      5@      5A       5C      �� 5D      .��5E      �� $
 Stop=�6   .��5F      W� $ Opacity�5G      $ 1X�5H      $ 0:0:1D�6   5I      5J      5M      5O      5P      .��5R      �� .+�5S      �� $��Center=�6   #��[ 5T      $��2q�5U      ��5V      �� 5W   
    �� Source# [  6   $ *��5X      ��5[      �� 5\   
   .R�5]      �� $��12(�6   $��0,0,10,0q�6$   ��5^      �� 5_      $ Title��6   5a      5b      5d      5e      5f      