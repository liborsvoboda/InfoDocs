   M S B A M L   `   `   `  ����  BlockSnippets    BlockSnippets.Window1   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          � Title$  BlockSnippets��5      .��5      �  � RowDefinitions 5      �� 5   
   $��0 �6   �� 5	   
   $��0 �6   �� 5
   
   $��0 �6   �� 5   
   $��0 �6   �� 5   
   $��0 �6   �� 5   
   $��0 �6   �� 5   
   $��0 �6   �� 5   
   �� 5   
   .+�5      �� $��0��6   ._�5   
   -� .��5      /� -   5         �Name$ flowDoc2��5      5      5      5   	   �� 5      $��1��6   ._�5   
   -� .��5      /� .T�5      J� -   5        $	 par��5       �� BorderBrush
 ��  � �� BorderThickness$ 0.25inq�5!      .*�5"      .*�5#      �� .�6   WUChild elements in this Block element (Paragraph) will be surrounded by a blue border.5%      �� 5&      �� 6   �� 5'      .�6   ?=This border will be one quarter inch thick in all directions.5)      5*      5+      5-      5.   	   �� 50      $��2��6   ._�51   
   -� .��53      /�  /� 
Background
 ���w� /� ColumnWidth$
 2000��65   .T�54      �� 
���� �� �� Margin$ 0q�6/    �� Padding$ 0q�6:   .�55      J� 
�������.*�6-   .*�56      �� .�6   Default paragraph.6*   57      J� 58      
�������.*�6-   .*�59      �� .�6   Default paragraph.6*   5:      J� 5;      
����ح�$ 50q�61   .*�6=   .*�5<      �� .�6   ><This paragraph has a magin of 50 pixels set, but no padding.6T   5=      J� 5>      
�������$ 50q�62   .*�6?   .*�5?      �� .�6   =;This paragraph has padding of 50 pixels set, but no margin.6S   5@      J� 5A      
������$ 50q�62   $ 50q�6>   .*�6K   .*�5B      �� .�6   ><This paragraph has both padding and margin set to 50 pixels.6T   5C      J� 5D      
�������.*�6-   .*�5E      �� .�6   Default paragraph.6*   5F      J� 5G      
�������.*�6-   .*�5H      �� .�6   Default paragraph.6*   5I      5J      5K      5M      5N   	   �� 5P      $��3��6   ._�5Q   
   -� .��5S      /� .T�5T      J� 	 �� FlowDirection$	 LeftToRight=�6   .*�64   .,This paragraph will flow from left to right.5V      5W      5Y      5Z   	   �� 5\      $��4��6   ._�5]   
   -� .��5_      /� .T�5`      J� 
 �� TextAlignment$

 Left=�5a      
�������$��24(�5c       �� 
LineHeight$ 48��5d      .*�5e      .*�5f      One�� 	two two�� 5g      Three Three Three�� 5h   !   four four four four�� 5i   #   Five Five Five Five Five5k      5l      5n      5o   	   �� 5q      $��5��6   ._�5r   
   -� .��5t      /� .T�5u      J� 
�������$
 Center=�60   .*�6G   .*�5v      One�� 	two two�� 5w      Three Three Three�� 5x   !   four four four four�� 5y   #   Five Five Five Five Five�� 5z   (   six six six six six six�� 5{   '   +)Seven Seven Seven Seven Seven Seven Seven�� 5|   9   1/eight eight eight eight eight eight eight eight5~      5      5�      5�   	   �� 5�      $��6��6   ._�5�   
   -� .��5�      /�  /� TextAlignment$ Justify=�5�        /� IsOptimalParagraphEnabled . 
 ����� /� 	PageWidth$	 400��5�       /� 
PageHeight$	 480��6   .T�5�      J�  �� IsHyphenationEnabled . .*�64   .*�5�      �� $C��=http://www.xbox.com/en-US/games/p/perfectdarkzero/default.htm?�6   .�6f   Perfect Dark Zero5�      5�      J� 5�       . .*�64   .*�5�   >   0.Joanna Dark returns in the Xbox 360 exclusive �� .�6C   .�5�      �� .�6   Perfect Dark Zero6,   5�      db, the prequel to the internationally award-winning and multi-million selling first-person shooter �� 5�      .�6   Perfect Dark6%   "  from famed game developer Rare.5�      J� 5�       . .*�64   ��A secret war has begun between shadowy corporations bent on world domination. Joanna Dark and her father Jack are caught up in the fight for the future of the planet. A routine bounty hunting mission rips open a global conspiracy that will change Joanna's destiny—forever.5�      J� 5�       . .*�64   .*�5�      nlGuide Joanna Dark on her journey to become the perfect agent. Featuring a compelling and captivating story, �� .�6   Perfect Dark Zero6*   �� plunges you into a world of corporate espionage and conspiracy. The title merges the excitement and intrigue of its predecessor with revolutionary game design, cutting-edge online play, and amazing graphics to deliver an experience that defines next-generation gaming and entertainment...5�      5�      5�      5�   	   �� 5�      $��7��6   ._�5�   
   -� .��5�      /�  � 	Resources 5�       �� 
TargetType �� Property �� Value��%X   'J�       �� 5�      " J�6   .�5�      ��  �@��Margin$ 0q�6+   5�      5�      .T�5�      J� .*�6   ��Spacing between paragraphs is caused by margins set on the paragraphs. Two adjacent margins will "collapse" to the larger of the two margin widths, rather than doubling up.5�      J� 5�      .*�6   YWTo eliminate extra spacing between two paragraphs, just set the paragraph margins to 0.5�      5�      5�      5�   	   5�      5�      