   M S B A M L   `   `   `  ����F  Bbdconviawpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:bdconviawpfbdconviawpf  5   	       bdconviawpf.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:bdconviawpf     5   	     � Title$.  (Регистрация в систему��5   	   $	��350��6'   $	��600��64    � 
ResizeMode$ NoResize=�6@   .��5	      (�  (� Stretch$
 Fill=�6   .��5
   
   � $	��321��6   $	��594��6   ��5      �� 5       �� ImageSource$ 
Kurisu.jpg��6    j� Stretch$ Uniform=�66    j� 
AlignmentX$ Right=�6H    � RowDefinitions 5      �� 5      6"   �� 5      6"   �� 5      6"   �� 5      6"   �� 5      6"   �� 5      6"   �� 5      6"   �� 5      6"    � ColumnDefinitions 5      �� 5      6%   �� 5      6%   �� 5      6%   .+�5      �� -   5         ��Name$ surname��5      $	��150��6'   $��20��63   $	��Top=�6?   $��
24,10,24,0q�6W   $��Фамилия��6k   $��0��6z   $��2��6�   6�   �� 5       -   5        $
 name��5       $	��150��6$   $��20��60   $	��Top=�6<   $��
24,10,24,0q�6T   $��Имя��6h   $��1��6s   $��2��6�   6�   �� 5!      -   5        $
 year��5!      $	��150��6$   $��20��60   $	��Top=�6<   $��
24,10,24,0q�6T   $��Год��6h   $��3��6s   	 �� 	MaxLength$	 4��6�   6�   �� 5"      -   5        $ child��5"      $	��150��6%   $��20��61   $	��Top=�6=   $��
24,10,24,0q�6U   $��Кол-во детей��6i   $��5��6}   $	 2��6�   6�   �� 5#      -   5        
 ��Name$
 button1��5#      $*��$Зарегистрироваться��6&   $��24,10q�6C   $��1��6c   $��5��6s   �� 5$      -   5        $��gender��5$      $
��Left=�6%   $��	24,10,0,0q�6@   $	��Top=�6S   $	��150��6k    �� 
IsReadOnly . $��20��6�   $��4��6�   .@�5%      ��  �� 
IsSelected . .��5&      ��  �� Orientation$ 
Horizontal=�6!   .+�5'      �� Мужской6-   5(      5)      �� 5*      $ 
Horizontal=�6   .+�5+      �� Женский6)   5,      5-      5.      5/      50      