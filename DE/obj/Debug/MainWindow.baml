   M S B A M L   `   `   `  ����=  9DE, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:DEDE  5   	       DE.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   "localclr-namespace:DE     5   	   -   5          � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $��* �6   �� 5      $	��125 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ EmployeeDataGrid��5         AutoGenerateColumns .     
IsReadOnly .    EnableRowVirtualization . $��10q�6}      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   $��0��6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        имяColumn��,  &System.Windows.Controls.DataGridColumn   Header$ 	Ф.И.О.��5   P   	   Width5  /System.Windows.Controls.DataGridLengthConverter$
	 Auto 6`   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 68   �� *FIO+6`     5      -   5        телефонColumn��$ Телефон��5   V   $
	 Auto 6g   
 6<   �� *Phone+6g     5      -   5        почтаColumn��$ 
Почта��5   T   $
	 Auto 6c   
 6:   �� *Email+6c     5      -   5        должностьColumn��$ Должность��5   `   $
	 Auto 6s   
 6>   �� *Position.Name+6s   5      � 5   
    K� ZIndex$ -2��6   
�������$��1��63   $��2��6C   .+�5      �� -   5         ��Name$ BtnAdd��5   (   $��Добавить��6   $
��Left=�69   $	��125��6T   $��	0,0,0,112q�6u   $��31��6�   $��Bottom=�6�   �� 5      -   5        $ BtnEdit��5   -   $ ��Редактировать��6   $
��Left=�6?   $	��125��6Z   $��0,0,0,76q�6|   $��31��6�   $��Bottom=�6�   �� 5      -	   5        $ BtnDel��5   '   $��Удалить��6   $
��Left=�68   $	��125��6S   $��0,0,0,40q�6t   $��31��6�   $��Bottom=�6�   5      5      5      