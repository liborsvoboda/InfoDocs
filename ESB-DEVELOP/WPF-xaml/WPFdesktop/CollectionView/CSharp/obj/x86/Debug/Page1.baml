   M S B A M L   `   `   `  ����O  KCollectionViewSample, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:SDKSample	SDKSample  5      $    SDKSample.CollectionViewSample   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      *sourceclr-namespace:SDKSample     5      -   5        $��rootElem��5      $	��640��5      $	��245��5	      
�������  � 	Resources  5         SDKSample.Orders   myDataSource  
orderCells �� Left �� Path��%�  &	        &	        5      6   �� 5      .R�5      �� $	��600��6   $��20��6   .+�5   
   �� $ 5��6   ��6$   �� $ 	OrderItem��� 5   
   $	 100��6   ��6&   �� $ Customer��� 5   
   $	 200��6   ��6&   �� $
 Name��� 5   
   $	 400��6   ��6&   �� $ Id��� 5   
   $	 500��6   ��6&   �� $ Filled�5   	   5      5       � DataContext 5      �� 5       �� Source# [  6   .+�5      �� $	��640��6   .+�5       �� -   5        $��	myListBox��5       $ 10��6   
 �� Top$ 10��60   $	��620��5!      $	��100��6   
�������#��[ 5"      $ �� IsSynchronizedWithCurrentItem$
 TrueY�5$      ��5#      �� # [  5$      �� 5&      -   5        $��Previous��5&   /   $	 130��6   $ 10��6   .��5'      
Previous6"   �� 5(      -   5        $
��Next��5(   /   $	 130��6   $ 90��6   .��5)      Next6   �� 5*      $ 10��6   $	 160��6!   Order Number:6A   �� 5+      -   5        $��	ViewOrder��5+   3   $	 120��6   $	 160��6"   ��6D   �� $ 	OrderItem��� 5,      $ 10��6   $	 180��6!   Customer ID:6@   �� 5-      -   5        $��ViewCustomer��5-   3   $	 120��6   $	 180��6"   ��6G   �� $ Customer��� 5.      $ 10��6   $	 200��6!   Order Date:6?   �� 5/      -   5        $��ViewOrderDate��5/   3   $	 120��6   $	 200��6"   ��6H   �� $ 	OrderDate��� 50      $ 10��6   $	 220��6!   Filled Date:6@   �� 51      -   5        $��ViewDateFilled��51   3   $	 120��6   $	 220��6"   ��6I   �� $ 
DateFilled�52      53      