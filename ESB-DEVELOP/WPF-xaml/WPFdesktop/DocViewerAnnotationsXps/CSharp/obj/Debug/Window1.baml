   M S B A M L   `   `   `  ����\  XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35fGclr-namespace:System.Windows.Annotations;assembly=PresentationFrameworkSystem.Windows.Annotations  5   	    DocViewerAnnotationsXps   SDKSample.Window1   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5   	   WannGclr-namespace:System.Windows.Annotations;assembly=PresentationFramework      5   	   -   5          � Title$5  /DocumentViewer Annotations XPS Filestore Sample��5   	    J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5	      -   5           Command$ ApplicationCommands.Open��5	      69     5
      -   5        $ ApplicationCommands.Close��5
      69     5      -   5        $ ApplicationCommands.Print��5      69   .��5      ]� .+�5      o� -   5        $��MainMenu��5      $	��Top=�6   .@�5      m� $
��File��6   .@�5   
   m�  m� Command$ ApplicationCommands.Open��6   $��Open...��66   m� 5   
   -   5        $��menuFileClose��5      $ ApplicationCommands.Close��5      {�.  5   (   �� 5   
   m� 5   
   -   5        $��menuFilePrint��5      $ ApplicationCommands.Print��5      {�.  $��Print...��5   :   �� 5   
   m� 5   
   -   5        $��E_xit��5      6"   5   	   m� 5      $
��View��6   .@�5   
   m� -	   5        $��menuViewAnnotations��5   (   $��Annotations��6   {�.   m� IsCheckable .  m� 	IsChecked . 5   -   �� 5    
   m� 5!   
   -
   5        $��menuViewIncreaseZoom��5"      $% NavigationCommands.IncreaseZoom��5!      {�.  5"   /   m� 5#   
   -   5        $��menuViewDecreaseZoom��5$      $% NavigationCommands.DecreaseZoom��5#      {�.  5$   /   �� 5%   
   m� 5&   
   $$ ComponentCommands.ScrollPageUp��6   $��Previous Page��6<   m� 5'   
   $&  ComponentCommands.ScrollPageDown��6   $��	Next Page��6>   m� 5(   
   $" NavigationCommands.FirstPage��6   m� 5)   
   $! NavigationCommands.LastPage��6   �� 5*   
   m� 5+   
   $ ApplicationCommands.Copy��6   5,   	   5-      � 50      $	��Top=�6   .+�51      Z� -   5        $��	docViewer��51       52   
     53      -   5        $ ApplicationCommands.Print��53      6?    � ContextMenu 57   
   �� 58      .@�59      m� $ ApplicationCommands.Copy��6   �� 5:      m� 5<      $2 ,ann:AnnotationService.CreateHighlightCommand��6   $��Add Highlight��5=      m� 5?      $7 1ann:AnnotationService.CreateTextStickyNoteCommand��6   $��Add Text Note��5@      m� 5B      $6 0ann:AnnotationService.CreateInkStickyNoteCommand��6   $��Add Ink Note��5C      �� 5D      m� 5F      $2 ,ann:AnnotationService.ClearHighlightsCommand��6   $��Remove Highlights��5G      m� 5I      $4 .ann:AnnotationService.DeleteStickyNotesCommand��6   $��Remove Notes��5J      m� 5L      $4 .ann:AnnotationService.DeleteAnnotationsCommand��6   $��Remove Highlights & Notes��5M      5N      5R   	   5S      5U      5W      