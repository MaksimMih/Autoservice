   M S B A M L   `   `   `  ����B  >AutoMih, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:AutoMihAutoMih  5   	       AutoMih.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:AutoMih     5   	   -   5          �Name$
  Root��5   	    � Title$* $Услуги Авто сервиса��5	   	   $��Arial Black)�5
   	   $
��1200��6"   $	��300��62   $	��450��6B   $	��800��6O   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��150 �6   �� 5      $��1* �6    .+�5   
   ��  �� Orientation$ Vertical=�5      $��Bottom=�5      .+�5      �� -   5        $#��Добавить услугу��5      y�5      �� *AdminVisibility+�� 5      -   5        $:��4Посмотреть Ближайшие записи��5      y�5      �� *AdminVisibility+�� 5      -   5        $��AdminButton��5"      $��20��5       ��5!      �� *AdminModeCaption+5#      �� 5%      -   5         ��Name$ 
ExitButton��5&      $��
Выход��5'      5(      5)      �� 5,   
   $��5q�5-      $��./img/service_logo.png��5.      $	��Top=�5/      � 52   
   $��1��6    � RowDefinitions 53      �� 54      $��30 �6    �� 55      $��1* �6    �� 56      $��30 �6    .+�59      &   System.Windows.Controls.DataGrid  -   5          Name$ MainDataGrid��5:      $��1��5;         CanUserAddRows .     AutoGenerateColumns .  ��5<      �� *ServiceList+	   RowStyle	 5?      �� 5@      
 �� 
TargetType)  #System.Windows.Controls.DataGridRow"
  6    �� Triggers 5A      �� 5B       �� Binding 5C   !   �� *HasDiscount+ �� Value True5D   !   .a�5E   "   ��  �� Property � �� �� Value
 ����5G   %   5H      5J         Columns 5M      0  *System.Windows.Controls.DataGridTextColumn  5O      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 5P         Header$+ %Наименование услуги��5Q      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5R      �� *Title+4  .System.Windows.Controls.DataGridTemplateColumn  5S      $	 100 5T      $ Стоимость��5U         CellTemplate 5W      �� 5X      .R�5Z   "   �� ��5[   %   �� *CostTextDecoration+��5\   %   �� *
CostString+5]      5_        5a      $	 150 5b      $+ %Стоимость cо скидкой��5c       5d      �� *CostWithDiscount+  5f      $	 150 5g      $( "Продолжительность��5h       5i      �� *DurationInSeconds+  5k      $ 64 5l      $  ��5m       5n      �� 5o      .R�5q   "   �� $��64��5r      $��64��5s      ��5t      �� *
ImageUri+5u      5w        5z      $ 60 5{      $ Скидка��5|       5}      �� *
Discount+  5      $ Действия��5�       5�      �� 5�      .R�5�   "   �� $ 
Horizontal=�5�   %   y�5�   %   �� *DataContext.AdminVisibility+ �� ElementName$
 Root��.+�5�   &   �� $��
EditButton��5�   )   -   5        $ ��Редактировать��5�   )   5�   )   �� 5�   &   $��SubscrideButton��5�   )   -   5        $��Записаться��5�   )   5�   )   �� 5�   &   $��DeleteButton��5�   )   -	   5        $��Удалить��5�   )   5�   )   5�   #   5�      5�      5�      �� 5�      $ 
Horizontal=�5�      $��Center=�5�      .+�5�      �� $��
Цена: ��6   	� 5�      -
   5         	� 	GroupName$ Price��5�      
 � Tag$ 1��5�      $!��по возрастанию��5�       d� 	IsChecked$
 TrueY�5�      $��Center=�5�      	� 5�      -   5        $ Price��5�      $ 2��5�      $��по убыванию��5�      $��Center=�5�      �� 5�      $&�� Фильтр по скидке: ��6   $��10,0,0,0q�5�      $��Center=�5�      �� 5�      -   5         ��Name$ DiscountFilterComboBox��5�       �� SelectedIndex$ 0��5�      ��5�      �� *FilterByDiscountNamesList+�� 5�      $��
Поиск��6   �� 5�      -   5         ��Name$ SearchFilterTextBox��5�      $	��250��5�      $��Center=�5�      5�      5�      �� 5�      $ 
Horizontal=�5�      $��2��5�      .+�5�      �� ��6   �� *FilteredServicesCount+�� 5�      $��/��6   �� 5�      ��6   �� *ServicesCount+5�      5�      5�      5�      