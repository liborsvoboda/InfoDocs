   M S B A M L   `   `   `  ����  EditingExaminerDemo$    EditingExaminerDemo.MainWindow   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          � Title$  EditingExaminer��5       � 
ResizeMode$ CanResizeWithGrip=�5      $	��850��5      $	��660��6   $��
20,0,20,20q�5	      $	��600��5
      $	��750��5      .��5      �� -   5        $��TopPanel��5      $	��800��6!   $	��600��6-   .+�5   
   �� -   5        $��Panel1��5       �� Orientation$ Vertical=�6#   .+�5      �� -   5        $��MainTab��5      .@�5      �� -   5        $��RichTab��5      $��RichTextBox��6)   4  .System.Windows.Automation.AutomationProperties   HelpText$x rMake edits in this RichTextBox. As you edit, you can see what your edits look like in real time in the tabs below.��5      .��5      �� -   5        $��
MainEditor��5   "      Name$ 	Rich Text��64    �� 
AcceptsTab$
 True��6z   $	��250��6�      TextBoxBorderContrastStyle#��[  5   "   $	��800��5   "   " �� VerticalScrollBarVisibility$ Visible=�6.   
���   �6T   5      �� 5      -   5        $��PanelTab��5      $ Panel��6*   $��Panel��6L   $ 	Panel Tab��6[   .��5      �� 5      �� 5      $
��Help��6   $
 Help��6(   $E ?Help Tab: The content in this tab explains how to use the demo.��6I   .��5      �� $��1q�6   
���   �._�5      ,� $��1q�63   .��5      /�  /� ColumnWidth$	 400��5   !   $ 	Help Text��63     /� IsOptimalParagraphEnabled$
 True��5   !   	 /� IsHyphenationEnabled$
	 True��6B   .T�5   "   �� $��12(�6*   .�5    &   J� $��22(�60   $
��Bold"�6>   .*�6P   Introducing Editing Examiner6n   J� 5"   &   .*�60   ��Editing Examiner lets you watch in real time as edits are performed within a RichTextBox control. It allows the user to load or partially insert XAML into a document by using the core parser or the editing parser. In addition, it provides basic support for invoking methods, as well as getting and setting properties. This tool is useful for examining the editing status of a Document from different perspectives.5(   '   J� 5*   &   $��18(�60   $
��Bold"�6>   .*�6P   Application Features6f   J� 5+   &   $��15(�60   $
��Bold"�6>   .*�6P   DocumentTree Tab6b   J� 5,   &   .*�60   ��The DocumentTree Tab displays the entire TreeView of the document container. It demonstrates how to use the TextElementCollection features. It updates automatically on each TextChanged event of the RichTextBox. This allows you to visualize the document hierarchy.50   '   J� 52   &   $��15(�60   $
��Bold"�6>   .*�6P   TextSerializedXaml Tab6h   J� 54   &   .*�60   ��By clicking on the Text Serialization tab, the underlying XAML is exposed, using WPF serialization features. The TreeView is instantly updated when the Tab is selected. You can edit your XAML content and set it back to the RichTextBox by right clicking and selecting the correct item.58   '   J� 5:   &   $��15(�60   $
��Bold"�6>   .*�6P   SelectionXAML Tab6c   J� 5<   &   .*�60   WUThis tab displays the underlying XAML of the selected content within the RichTextBox.5>   '   J� 5@   &   $��15(�60   $
��Bold"�6>   .*�6P   CoreXAML Tab:6_   J� 5B   &   .*�60   ��This tab accesses the WPF core parser in order to parse an object. The object can then be inserted back into the RichTextBox. Alternately you can use this view to see how the RichTextBox content is serialized back to XAML.5F   '   J� 5I   &   $��15(�60   $
��Bold"�6>   .*�6P   Immediate Window:6c   J� 5K   &   .*�60   LJThis provides an instant way to invoke methods, and get or set properties.5N   '   �� 5O   &   
 �� MarkerOffset$
 25��6+    �� MarkerStyle$
 Disc=�6=   .<�5P   *   �� .9�5Q   .   J� .*�68   IGThe lower input box (labeled "Type Command here!" is for command input.6�   5R   +   �� 5S   *   .9�5T   .   J� .*�68   GEThe upper TextBox (readonly) displays the output and command history.6   5U   +   �� 5V   *   .9�5W   .   J� .*�68   ECThe {Enter} key is the only trigger for starting invoke operations.6}   5X   +   �� 5Y   *   .9�5Z   .   J� .*�68   97Object creation is supported by invoking a constructor.6q   5[   +   �� 5\   *   .9�5]   .   J� .*�68   .*�5_   2   B@You can save (declare) an object and use it later. For example: �� 2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6O   $��Courier New)�66   .�6d   ��
                        
Box = new TextBox();
Box.Text="some text";
RichTextBox.Selection.Text = Box.Text;
                        5d      5e   /   5f   +   �� 5g   *   .9�5h   .   J� .*�68   .*�5j   2   LJYou can also perform complicated object invocation such as the following: ��  preserve6O   $��Courier New)�66   .�6d   ��
                        
Document.Blocks.Add(new Paragraph(new Run("add Paragraph")));
RichTextBox.FlowDirection = FlowDirection.RightToLeft;
                          5n      5o   /   5p   +   �� 5q   *   .9�5r   .   J� .*�68   ��The command input box is actually an editable ComboBox. It provides a string search function. It tries to be smart as a user is typing. It helps to search the property (or fields/methods) and the candidates are in the drop down menu.5v   /   5w   +   �� 5y   *   .9�5z   .   J� .*�68   .*�5   2   ��The internal table initially holds three objects, the RichTextBox, a Selection, and a Document. Only the RichTextBox is actually required. The other two are added to the table for purposes of convenience. The Selection and Document will not be automatically updated if you use the core parser to load new XAML. For this to work, you must do the following: ��  preserve6O   $��Courier New)�66   .�6d   yw
                        
Document  = RichTextBox.Document;
Selection = RichTextBox.Selection;
                        5�      5�   /   5�   +   5�   '   J� 5�   &   $��15(�60   $
��Bold"�6>   .*�6P   Error messages:6a   J� 5�   &   .*�60   KIThere are two primary errors to look for when using the immediate window:6{   �� 5�   &   .<�5�   *   �� .9�5�   .   J� .*�68   ��A field, property, or method is not found. This is a parsing error. It will be displayed in the history window. The return value is shown in the history log too. You can examine the return value for possible bugs.6  5�   +   �� 5�   *   .9�5�   .   J� .*�68   ��Exception occurred while invoking a method. This error is shown in the lower TextBox. If an incorrect parameter is passed, the exception will be shown.6�   5�   +   5�   '   5�   #   5�      5�      5�      5�      5�      5�      �� 5�   
   -   5        $��Panel2��5�      $ 
Horizontal=�6#   .+�5�      �� -	   5        $��
TabControl��5�   >   $
��Left=�6P   $	��400��5�      $	��250��6%   .@�5�      �� $��DocumentTree��6   $� �The DocumentTree Tab displays the entire TreeView of the document container. It demonstrates how to use the TextElementCollection features. It updates automatically on each TextChanged event of the RichTextBox. This allows you to visualize the document hierarchy.��5�      .��5�      R� -
   5        $��TextTreeView��5�      $ Document Elements��63   5�      �� 5�      -   5        $��TabSelectionXaml��5�   1   $��SelectionXaml��6   $[ UThis tab displays the underlying XAML of the selected content within the RichTextBox.��5�      .��5�      �� -   5        $��SelectionXaml��5�      $ Visible=�63   $ Selection Xaml��6Y   $B <Displays underlying XAML of selected content of RichTextBox.��5�      .��6{    � ContextMenu 5�      �� 5�      .@�5�   "   m� $	��Cut��6+    m� Command$	 Cut��68   m� 5�   "   $
��Copy��6+   $
 Copy��69   m� 5�   "   $��Paste��6+   $ Paste��6:   m� 5�   "   -   5        $��SelectionXaml��5�   +   6B   5�      .��5�   /   5�      5�      �� 5�      -   5        $��TabTextSerializedXaml��5�   6   $��TextSerializedXaml��6   $� �By clicking on the Text Serialization tab, the underlying XAML is exposed, using WPF serialization features. The TreeView is instantly updated when the Tab is selected. You can edit your XAML content and set it back to the RichTextBox by right clicking and selecting the correct item.��5�      .��5�      �� -   5        $��TextSerializedXaml��5�      $ Text Serialized Xaml��68   $ Visible=�6i   $. (Displays underlying XAML of RichTextBox.��5�      .��6g    5�      �� 5�      .@�5�   "   m� $	��Cut��6+   $	 Cut��68   m� 5�   "   $
��Copy��6+   $
 Copy��69   m� 5�   "   $��Paste��6+   $ Paste��6:   m� 5�   "   -   5        $��TextSerializedXaml��5�   +   6G   5�      .��5�   /   5�      5�      �� 5�      -   5        $��TabCoreXaml��5�   ,   $��CoreXaml��6   $� �This tab accesses the WPF core parser in order to parse an object. The object can then be inserted back into the RichTextBox. Alternately you can use this view to see how the RichTextBox content is serialized back to XAML.��5�      .��5�      �� -   5        $��CoreXaml��5�   "   $ 	Core Xaml��62   $ Visible=�6X     XamlSyntaxHighlighterStyle#��[ 6~    5�      �� 5�      .@�5�   "   m� $	��Cut��6+   $	 Cut��68   m� 5�   "   $
��Copy��6+   $
 Copy��69   m� 5�   "   $��Paste��6+   $ Paste��6:   m� 5�   "   $
��Undo��6+   $
 Undo��69   m� 5�   "   $��Delete��6+   $ Delete��6;   m� 5�   "   -   5        $��CoreXaml��5�   +   6=   5�      5�      5�      5�      �� 5�      -   5        $��Panel3��5�      .+�5�      �� -   5        $��Label1��5�      $��1,0,1,0q�6&     ImmediateWindowLabel#��[ 6@   $��Center=�6n   $	��400��5�      $��25��6$   .��60   Immediate Window5�      �� 5�      -   5        $��ImmediateWindow��5�      $ Immediate Window��61   $	��400��6^   $	��205��6j   $ Visible=�6w    �� 
IsReadOnly$
 True��5�      
���   �#��[  5�       �� IsReadOnlyCaretVisible$
 True��5�      $P JThis provides an instant way to invoke methods, and get or set properties.��5�      �� 5�      -   5        $��CommandInputBox��5�      $ Command input��62   $	��400��6\    �� 
IsEditable$
 True��6h   $* $This input box is for command input.��5�      5�      5�      �� 5�   
   -   5        $��Panel4��5�      .+�5�      �� -   5        $��ErrorMessageBox��5�      $ Error Message Box��6-   $��60��6[   $
 True��6g     ErrorMessageTextBox#��[ 6y   .��6�   No exception!6�   5�      5�      5�      