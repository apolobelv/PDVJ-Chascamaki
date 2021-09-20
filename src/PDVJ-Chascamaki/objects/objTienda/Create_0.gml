/// @description Variables iniciales

enum shop_possible_states {
	buy_or_sale,
	looking_at_items,
	selecting_amount,
	confirmation,
	sale_complete
}

buying = true;
textBox = sprTextBox1;

no1 = 0;
no2 = 1;

current_state = 0;
list_select = 0;

active = false;
delay = 60;