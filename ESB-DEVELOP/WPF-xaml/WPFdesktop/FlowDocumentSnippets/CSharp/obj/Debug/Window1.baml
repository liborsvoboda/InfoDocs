   M S B A M L   `   `   `  ����  FlowDocumentSnippets"    FlowDocumentSnippets.Window1   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          � Title$  FlowDocumentSnippets��5      .��5      �  � RowDefinitions 5      �� 5      $��0 �6   �� 5
      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5       �� 5!      .+�5$      � $��0��6   .+�5%      -� .��5&   
   /� -   5         �Name$ fd��5&      5'   	   5(      � 5*      $��1��6   $	��600��6   $	��400��6%   .+�5+      �� $��1q�6   
���   �._�5-   
   -� .��5.      /�  /� 	ColumnGap$
 20.0��5/       /� ColumnRuleBrush
 ���� /� ColumnRuleWidth$	 5.0��51       /� ColumnWidth$ 140.0��52      .T�54      J� 
������� �� TextAlignment$
 Left=�63   .*�6H   ��This paragraph has the background set to antique white to make its boundaries obvious. The column gap is the space between columns; this FlowDocument will have a column gap of 20 device-independend pixels. The column rule is a vertical line drawn in the column gap, and is used to visually separate columns; this FlowDocument a Dodger-blue column rule that is 5 pixels wide. The column rule and column gap both take space between columns. In this case, a column gap width of 20 plus a column rule of width of 5 results in the space between columns being 25 pixels wide, 5 pixels for the column rule, and 10 pixels of column gap on either side of the column rule.5B      5C      5D      5F   	   5G      � 5I      $��2��6   .+�5K      -� .��5L   
   /�  /� 
Background
 �\\��	 /� 
Foreground
	 �����.T�5P      J� .*�6   ��This FlowDocument will have a background color of Indian red, with the text colored Navajo white. Any Forground or Background settings on this paragraph would override the top-level settings for the FlowDocument.5T      5U      5V   	   5X      � 5Z      $��3��6   .+�5[      �� $��1q�6   
���   �._�5]   
   -� .��5^      /� $ 140.0��6   .T�5_      J� .*�6   YWColumns of content within a page in this FlowDocument will be at least 140 pixels wide.5a      5b      5c      5e   	   5f      � 5h      $��4��6   $	��400��6   $	��300��6$   .+�5i      �� $��1q�6   
���   �._�5k   
   -� .��5l      /� 
 /� FlowDirection$
 LeftToRight=�5m      .T�5o      J� .*�6   ��The FlowDirection of content typically corresponds to the innate flow direction of the language being represented. Hebrew and Arabic provide examples of languages that naturally flow from right-to-left. English, German, and Russian provide examples of languages that naturally flow from left-to-right.5t      5u      5v      5x   	   5y      � 5{      $��5��6   $	��400��6   $	��300��6$   .+�5|      �� $��1q�6   
���   �._�5~   
   -� .��5      /�  /� 
FontFamily$ Century Gothic)�5�       /� FontSize$ 12(�5�       /� FontStretch$ UltraExpanded&�5�       /� 	FontStyle$ Italic$�5�       /� 
FontWeight$ 	UltraBold"�5�      .T�5�      J� .*�6   \ZAny font settings on this paragraph would override the font settings for the FlowDocument.5�      5�      5�      5�   	   5�      � 5�      $��6��6   .+�5�      -� .��5�   
   /�  /� IsColumnWidthFlexible .  /� 	PageWidth$	 400��5�      $	 100��5�       /� PagePadding$ 0q�5�      .T�5�      J� .*�6   .*�5�      If �� .�6   IsColumnWidthFlexible6-   PN is false, this FlowDocument will always have 4 columns of width 100. Because �� 5�   4   .�69   IsColumnWidthFlexible6P   }{ is true, this FlowDocument may be laid out such that the width of the is more than 100, resluting in fewer than 4 columns.5�      5�      5�   	   5�      � 5�      $��8��6   .+�5�      -� .��5�   
   /� $ 24(�5�       /� 
LineHeight$ 48��5�      .T�5�      J� $
 Left=�6   
�������.*�6B   .*�5�      One�� 	two two�� 5�      Three Three Three�� 5�      four four four four�� 5�   !   Five Five Five Five Five5�      5�      5�   	   5�      � 5�      $��9��6   .+�5�      -� .��5�   
   /�  /� 
PageHeight$
 Auto��5�      $
 Auto��5�       /� MinPageHeight$	 3in��5�       /� MinPageWidth$	 5in��5�       /� MaxPageHeight$	 6in��5�       /� MaxPageWidth$
 10in��5�      .T�5�      J� 
�������.*�62   usThis uses automatic page sizing with minimum page size of 3 by 5 inches, and a maximum page size of 6 by 10 inches.5�      5�      5�   	   5�      � 5�      $��10��6   .+�5�      -� .��5�   
   /� $ 10q�6   .T�5�      J� .*�6   " Padding is 10 pixels all around.68   5�      5�   	   -� 5�      .��5�   
   /� $ 1.5inq�6   .T�5�      J� .*�6   ,*Padding is 1 and a half inches all around.6B   5�      5�   	   -� 5�      .��5�   
   /� $ 	5,10,5,10q�6   .T�5�      J� .*�6   QOPadding is 5 pixels on the right and left, and 10 pixels on the top and botton.6g   5�      5�   	   -� 5�      .��5�   
   /� $ 0.8in,20,0.8in,20q�6   .T�5�      J� .*�6   [YPadding is 1 eigth of an inch on the right and left, and 20 pixels on the top and botton.6q   5�      5�   	   5�      � 5�      $��11��6   .+�5�      -� .��5�   
   /�  /� TextAlignment$ Center=�5�      .T�5�      J� 
�������.*�6.   .*�5�      One�� 	two two�� 5�      Three Three Three�� 5�      four four four four�� 5�   !   Five Five Five Five Five�� 5�   &   six six six six six six�� 5�   %   +)Seven Seven Seven Seven Seven Seven Seven�� 5�   7   1/eight eight eight eight eight eight eight eight5�      5�      5�   	   5�      � 5�      $��12��6   .+�5�      -� .��5   
   /�  K� Capitals$ 	SmallCaps=�5      K� CapitalSpacing .  K� CaseSensitiveForms .  K� ContextualAlternates .   K� ContextualLigatures .   K� DiscretionaryLigatures .   K� EastAsianExpertForms  . ! K� EastAsianLanguage$! Traditional=�5     " K� EastAsianWidths$" Proportional=�5	     # K� Fraction$# Stacked=�5
     $ K� HistoricalForms$ . % K� HistoricalLigatures% . & K� Kerning& .  ' K� MathematicalGreek' . ( K� NumeralAlignment$( Proportional=�5     ) K� NumeralStyle$) OldStyle=�5     * K� SlashedZero* . + K� StandardLigatures+ .  , K� Variants$
, Ruby=�5     .T�5     J� 
�������.*�6.   ?=This FlowDocument has numerous typography variations applied.5     5     5  	   5     � 5     $��13��6   .+�5     -� .��5  
   /� .T�5      J� 
�������.*�6.   Text effects.5"     5#     5$  	   5%     � 5'     $��14��6   .+�5)     -� .��5*  
   /� $ Justify=�5+     - /� IsHyphenationEnabled- .  . /� IsOptimalParagraphEnabled. . 
 �����$	 400��5/     $	 480��6   .T�51     J� .*�6   .*�52     �� $C��=http://www.xbox.com/en-US/games/p/perfectdarkzero/default.htm?�6   .�6d   Perfect Dark Zero54     55     J� 56     .*�6   .*�57  <   0.Joanna Dark returns in the Xbox 360 exclusive �� .�6B   �� .�6I   Perfect Dark Zero6\   6e   db, the prequel to the internationally award-winning and multi-million selling first-person shooter �� 59     .�6   Perfect Dark6#   "  from famed game developer Rare.5:     J� 5;     .*�6   ��A secret war has begun between shadowy corporations bent on world domination. Joanna Dark and her father Jack are caught up in the fight for the future of the planet. A routine bounty hunting mission rips open a global conspiracy that will change Joanna's destiny—forever.5?     J� 5@     .*�6   .*�5B     nlGuide Joanna Dark on her journey to become the perfect agent. Featuring a compelling and captivating story, �� .�6   Perfect Dark Zero6(   �� plunges you into a world of corporate espionage and conspiracy. The title merges the excitement and intrigue of its predecessor with revolutionary game design, cutting-edge online play, and amazing graphics to deliver an experience that defines next-generation gaming and entertainment...5E     5F     5G  	   5I     � 5L     $��15��6   .+�5N     -� .��5O  
   /� $ Justify=�5P     . . - . 
 �����$	 400��5T     $	 480��6   .T�5V     J� .*�6   .*�5W     �� .�6   ��"One of the most important operations necessary when text materials are prepared for printing or display is the task of dividing long paragraphs into individual lines. When this job has been done well, people will not be aware of the fact that the words they are reading have been broken apart arbitrarily and placed into a somewhat rigid and unnatural rectangular framework; but if the job has been done poorly, readers will be distracted by bad breaks that interrupt their train of thought."5`     5a     J� 5b     .*�6   .*�5c     �� $0��*http://www-cs-faculty.stanford.edu/~knuth/?�6   .�6Q   - Donald E. Knuth5e     5f     J� 5g     .*�6   .*�5h     �� .�6    Principle of Optimal Paragraph5j     5k     J� 5l     .*�6   .*�5v  1   ��Knuth started his revolutionary work of developing a computer program to produce high quality publication in the late ’70. The program he developed called TEX (pronounced "tek") is highly regarded as the work that helps shape the field of digital typography and desktop publishing. It is still being widely used and constantly extended by many others up to today. One of the most intriguing inventions in this program is its ability to produce superior quality paragraph layout for printing and reading purpose – arguably comparable to the work manually done by most respectable publishers of the modern times. This typographically beautiful paragraph layout is driven by a line breaking algorithm known as �� .�68   	total-fit6C    or �� 5w     .�6   optimum-fit6"   IG algorithm. Some call the kind of paragraph produced by this algorithm �� 5x  )   .�60   Optimal Paragraph6C   .5y     J� 5z     .*�6   .*�5}  E   ��In principle, the task of text formatting consists of two main components: choosing where to end individual lines and how to justify the lines. The first component may involve the task of word division called �� .�6L   hyphenation6Y   ��. Line justification is the task of fitting a line into a desired width. Usually it is done by distributing the extra space into or taking out excess space from inter-word spaces in the line. Line justification is strongly dependent to line breaking. When line breaking is done properly, justification can be done without the need to change the spacing too much and thereby avoiding holes between words that would distress the eyes of the reader.5�     J� 5�     .*�6   ��Unlike a standard line breaking algorithm which breaks the line without taking into account the line that may come after it, the total-fit algorithm breaks line by looking ahead on what may come later in the paragraph and make a single decision to break all the lines at once. The main idea of the algorithm is to provide a way to break a paragraph into lines so that the interword spacing is balanced between all the lines of the paragraph. This is attained by choosing the sequence of breakpoints with the minimal total cost over all lines. The cost of a line depends on many factors that can affect the visual appearance of the line, such as the measure of interword space changing, the division of the last word of the line, etc.5�     5�     5�  	   5�     � 5�     $��16��6   .+�5�     -� / -� IsFindEnabled/ . 0 -� IsPrintEnabled0 . 1 -� MinZoom$1 50Q�5�  	   2 -� MaxZoom$
2 1000Q�6   3 -� Zoom$	3 120Q�5�  	   4 -� ZoomIncrement$4 5Q�6   .��5�  
   /� .T�5�     J� .*�6   Flow content...5�     5�     5�  	   5�     � 5�     $��17��6   .+�5�     -� -   5        $��
flowDocRdr��5�  	   / . 0 . $1 50Q�5�  	   $
2 1000Q�6   $	3 120Q�5�  	   $4 5Q�6   5�     � 5�     $��18��6   .+�5�     .� -   5        $��flowDocPageViewer��5�     5 .� MinZoom$5 50Q�5�     6 .� MaxZoom$
6 1000Q�6   7 .� Zoom$	7 120Q�5�     8 .� ZoomIncrement$8 5Q�6   5�     � 5�     $��19��6   .+�5�     ,� -   5        $��flowDocScrollViewer��5�  	   $9 ,� HorizontalScrollBarVisibility$
9 Auto=�5�  	   ": ,� VerticalScrollBarVisibility$
: Auto=�5�  	   ; ,� IsSelectionEnabled; . < ,� IsToolBarVisible< . = ,� MinZoom$= 50Q�5�  	   > ,� MaxZoom$
> 1000Q�6   ? ,� Zoom$	? 120Q�5�  	   @ ,� ZoomIncrement$@ 5Q�6   5�     � 5�     $��20��6   .+�5�     .� $5 50Q�5�  	   $
6 1000Q�6   $	7 120Q�5�  	   $8 5Q�6   .��5�  
   /� .T�5�     J� .*�6   Flow content...5�     5�     5�  	   5�     � 5�     $��21��6   .+�5�     ,� $
9 Auto=�5�  	   $
: Auto=�5�  	   ; . < . $= 50Q�5�  	   $
> 1000Q�6   $	? 120Q�5�  	   $@ 5Q�6   .��5�  
   /� .T�5�     J� .*�6   Flow content...5�     5�     5�  	   5�     � 5�     $��22��6   .+�5�     �� -   5        $��	textBlock��5�  	   
�������
����  �$��Century Gothic)�5�  	   $��12(�5�  	   $��UltraExpanded&�5�  	   $��Italic$�5�  	   $��	UltraBold"�5�  	   A �� 
LineHeight$
A Auto��5�  	   B �� Padding$B 	5,10,5,10q�5�  	   C �� TextAlignment$C Center=�5�  	   $
��Wrap=�5�  	   $) OldStyle=�5  	   * . �� 5  
   
������.�6&   Text run 1.63   �� 5  
   �� 6   
����ح�.�61   Text run 2.6>   �� 5  
   �� 6   
�������.�63   Text run 3.6@   5  	   5	     � 5     $��23��6   .+�5     �� $	��250��6   $��10q�6   .+�5  
   �� -   5        $��
textBlock1��5     $
��Wrap=�6&   �� 5     .�6   	TextBlock6    is designed to be �� 65   .�6<   lightweight6I   .,, and is geared specifically at integrating �� 5  6   .�6=   small6D   &$ portions of flow content into a UI.5     �� 5  
   $	��100��6   $��10q�6   .��6)   
Click Me63   �� 5  
   -   5        $��
textBlock2��5     $
��Wrap=�5     
�������$C Center=�69   OMBy default, a TextBlock provides no UI beyond simply displaying its contents.5     �� 5  
   $	��100��6   $��10q�6   .��6)   
Click Me63   5  	   5     � 5     $��24��6   5      5"     5#     