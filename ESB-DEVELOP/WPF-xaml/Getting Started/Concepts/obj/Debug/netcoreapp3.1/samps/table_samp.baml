   M S B A M L   `   `   `  ����  Concepts    Table_Samp.Page1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Table Sample��5      .��5      �� $	��500��6   $	��700��6!   $	��400��61   .@�5   
   ��    TabStyle#��[  6   $��Table Element��64    �� 
IsSelected$
 true��6K   .��5	      �� .+�5
      ��   HeaderStyle#��[ 6   Table Element Sample6S   �� 5        MainContentStyle#��[ 6   ��Table defines a typographic table element comprised of a TableHeader, TableBody, and TableFooter. Table content can be spread across multiple TableColumns or paginated across multiple pages.6  5      5      �� 5   
   -   5        $
��xaml��5      #��[  6   $
��XAML��6@   .��5      �� $��Visible=�6   .��5      �� -   5        $��	xamlCheck��5      �� 5      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6D     CodeSnippetParagraph#��[ 6   .��6Y   ��
<TextFlow>          
<Table CellSpacing="5">
	<Table.Columns>
	<TableColumn />
	<TableColumn />
	<TableColumn />
	<TableColumn />
   </Table.Columns>
   <TableHeader>
      <TableRow>
         <TableCell ColumnSpan="4"><TextBlock FontSize="24pt" FontWeight="Bold">Planetary Information</TextBlock></TableCell>
      </TableRow>
      <TableRow>
         <TableCell><TextBlock>Planet</TextBlock></TableCell>
         <TableCell><TextBlock>Distance from Sun</TextBlock></TableCell>
         <TableCell><TextBlock>Diameter</TextBlock></TableCell>
         <TableCell><TextBlock>Mass</TextBlock></TableCell>
      </TableRow>
   </TableHeader>

   <TableBody>
      <TableRow>
         <TableCell ColumnSpan="4"><TextBlock FontSize="14pt" FontWeight="Bold">The Inner Planets</TextBlock></TableCell>
      </TableRow>
      <TableRow>
         <TableCell><TextBlock>Mercury</TextBlock></TableCell>
         <TableCell><TextBlock>57,910,000 km</TextBlock></TableCell>
         <TableCell><TextBlock>4,880 km</TextBlock></TableCell>
         <TableCell><TextBlock>3.30e23 kg</TextBlock></TableCell>
      </TableRow>
      <TableRow Background="lightgray">
         <TableCell><TextBlock>Venus</TextBlock></TableCell>
         <TableCell><TextBlock>108,200,000 km</TextBlock></TableCell>
         <TableCell><TextBlock>12,103.6 km</TextBlock></TableCell>
         <TableCell><TextBlock>4.869e24 kg</TextBlock></TableCell>
      </TableRow>
      <TableRow>
         <TableCell><TextBlock>Earth</TextBlock></TableCell>
         <TableCell><TextBlock>149,600,000 km</TextBlock></TableCell>
         <TableCell><TextBlock>12,756.3 km</TextBlock></TableCell>
         <TableCell><TextBlock>5.972e24 kg</TextBlock></TableCell>
      </TableRow>
      <TableRow Background="lightgray">
         <TableCell><TextBlock>Mars</TextBlock></TableCell>
         <TableCell><TextBlock>227,940,000 km</TextBlock></TableCell>
         <TableCell><TextBlock>6,794 km</TextBlock></TableCell>
         <TableCell><TextBlock>6.4219e23 kg</TextBlock></TableCell>
      </TableRow>
      <TableRow>
         <TableCell ColumnSpan="4"><TextBlock FontSize="14pt" FontWeight="Bold">The Outer Planets</TextBlock></TableCell>
      </TableRow>
      <TableRow>
         <TableCell><TextBlock>Jupiter</TextBlock></TableCell>
         <TableCell><TextBlock>778,330,000 km</TextBlock></TableCell>
         <TableCell><TextBlock>142,984 km</TextBlock></TableCell>
         <TableCell><TextBlock>1.900e27 kg</TextBlock></TableCell>
      </TableRow>
      <TableRow Background="lightgray">
         <TableCell><TextBlock>Saturn</TextBlock></TableCell>
         <TableCell><TextBlock>1,429,400,000 km</TextBlock></TableCell>
         <TableCell><TextBlock>120,536 km</TextBlock></TableCell>
         <TableCell><TextBlock>5.68e26 kg</TextBlock></TableCell>
      </TableRow>
      <TableRow>
         <TableCell><TextBlock>Uranus</TextBlock></TableCell>
         <TableCell><TextBlock>2,870,990,000 km</TextBlock></TableCell>
         <TableCell><TextBlock>51,118 km</TextBlock></TableCell>
         <TableCell><TextBlock>8.683e25 kg</TextBlock></TableCell>
      </TableRow>
      <TableRow Background="lightgray">
         <TableCell><TextBlock>Neptune</TextBlock></TableCell>
         <TableCell><TextBlock>4,504,000,000 km</TextBlock></TableCell>
         <TableCell><TextBlock>49,532 km</TextBlock></TableCell>
         <TableCell><TextBlock>1.0247e26 kg</TextBlock></TableCell>
      </TableRow>
   </TableBody>

   <TableFooter>
      <TableRow>
         <TableCell ColumnSpan="4"><TextBlock FontSize="10pt" FontStyle="Italic">Information from the <Hyperlink 
NavigateUri="http://encarta.msn.com/encnet/refpages/artcenter.aspx">Encarta</Hyperlink> web site.</TextBlock></TableCell>
      </TableRow>
   </TableFooter>
</Table>
</TextFlow>
        5i      5j      5k      5l      �� 5m      -   5        $��
xamlcsharp��5m      #��[  6%   $��	XAML + C#��6G   .��5n      ��  �� TabStripPlacement$ Right=�6   .@�5o      �� -   5        $��xcsharpCheck��5o        	TabStyle2#��[ 6.   $
��XAML��6Q   �� 5p      #��[ 6   $��C#��6=   5q      5r      �� 5t      -   5        $��xamlvb��5t      #��[  6!   $��XAML + Visual Basic.NET��6C   .��5u      �� $ Right=�6   .@�5v      �� -   5        $��xvbCheck��5v      #��[ 6*   $
��XAML��6M   �� 5w      #��[ 6   $��VB.NET��6=   5x      5y      �� 5{   
   -   5        $��csharp��5{      #��[  6    $��C#��6B   �� 5}   
   -	   5        $��vb��5}      #��[  6   $��Visual Basic.NET��6>   �� 5   
   -
   5        $��
managedcpp��5      #��[  6$   $��Managed C++��6F   �� 5�   
   #��[  6   $��Preview Sample��64   .��5�      .� .��5�      /� .T�5�      ��  �� CellSpacing$ 5��6    �� Columns 5�      �� 5�      �� 5�      �� 5�      �� 5�      .�5�      �� .�5�      �� .�5�      ��  �� 
ColumnSpan$ 4��6   .�6%   J� $
��24pt(�6/   $
��Bold"�6?   .*�6Q   Planetary Information6h   5�      5�   	   �� 5�      .�5�      �� .�5�      J� $
��14pt(�6   $
��Bold"�6)   .*�6;   Planet6C   5�      �� 5�      .�5�      J� $
��14pt(�6   $
��Bold"�6)   .*�6;   Distance from Sun6N   5�      �� 5�      .�5�      J� $
��14pt(�6   $
��Bold"�6)   .*�6;   
Diameter6E   5�      �� 5�      .�5�      J� $
��14pt(�6   $
��Bold"�6)   .*�6;   Mass6A   5�      5�   	   �� 5�      .�5�      �� $ 4��6   .�5�      J� $
��14pt(�6   $
��Bold"�6)   .*�6;   The Inner Planets6N   5�      5�   	   �� 5�      .�5�      �� .�5�      J� .*�6   	Mercury5�      5�      �� 5�      .�5�      J� .*�6   57,910,000 km5�   !   5�      �� 5�      .�5�      J� .*�6   
4,880 km5�      5�      �� 5�      .�5�      J� .*�6   
3.30e23 kg5�      5�      5�   	   �� 5�      
�������.�5�      �� .�5�      J� .*�6   Venus5�      5�      �� 5�      .�5�      J� .*�6   108,200,000 km5�   "   5�      �� 5�      .�5�      J� .*�6   12,103.6 km5�      5�      �� 5�      .�5�      J� .*�6   4.869e24 kg5�      5�      5�   	   �� 5�      .�5�      �� .�5�      J� .*�6   Earth5�      5�      �� 5�      .�5�      J� .*�6   149,600,000 km5�   "   5�      �� 5�      .�5�      J� .*�6   12,756.3 km5�      5�      �� 5�      .�5�      J� .*�6   5.972e24 kg5�      5�      5�   	   �� 5�      
�������.�5�      �� .�5�      J� .*�6   Mars5�      5�      �� 5�      .�5�      J� .*�6   227,940,000 km5�   "   5�      �� 5�      .�5�      J� .*�6   
6,794 km5�      5�      �� 5�      .�5�      J� .*�6   6.4219e23 kg5�       5�      5�   	   �� 5�      .�5�      �� $ 4��6   .�5�      J� $
��14pt(�6   $
��Bold"�6)   .*�6;   The Outer Planets6N   5�      5�   	   �� 5�      .�5�      �� .�5�      J� .*�6   	Jupiter5�      5�      �� 5�      .�5�      J� .*�6   778,330,000 km5�   "   5�      �� 5�      .�5�      J� .*�6   
142,984 km5�      5�      �� 5�      .�5      J� .*�6   1.900e27 kg5     5     5  	   �� 5     
�������.�5     �� .�5     J� .*�6   Saturn5     5     �� 5	     .�5
     J� .*�6   1,429,400,000 km5  $   5     �� 5     .�5     J� .*�6   
120,536 km5     5     �� 5     .�5     J� .*�6   
5.68e26 kg5     5     5  	   �� 5     .�5     �� .�5     J� .*�6   Uranus5     5     �� 5     .�5     J� .*�6   2,870,990,000 km5  $   5     �� 5     .�5      J� .*�6   	51,118 km5!     5"     �� 5#     .�5$     J� .*�6   8.683e25 kg5%     5&     5'  	   �� 5(     
�������.�5)     �� .�5*     J� .*�6   	Neptune5+     5,     �� 5-     .�5.     J� .*�6   4,504,000,000 km5/  $   50     �� 51     .�52     J� .*�6   	49,532 km53     54     �� 55     .�56     J� .*�6   1.0247e26 kg57      58     59  	   �� 5;     .�5<     �� $ 4��6   .�5=     J� $
��10pt(�6   $��Italic$�6)   .*�6<   .*�6R   Information from the �� $;��5http://encarta.msn.com/encnet/refpages/artcenter.aspx?�5>     .�6E   	Encarta6N   
 web site.6d   5?     5@  	   5A     5B     5D     5E     5F     5G     5H     