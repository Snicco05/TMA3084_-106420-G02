import 'dart:io';

void main(){
    bool OrderRequest = true;

    while(OrderRequest){
        print("Pizza Price: \"Small= 5 USD, Medium= 7 USD, Large=10 USD\"\n");

        print("Please enter your pizza size (small, medium, or large): ");
        String? pizza_size= stdin.readLineSync()!.toLowerCase();

        print("How many pizzas do you want of $pizza_size?");
        int pizza_qty = int.parse(stdin.readLineSync()!);

        int pizza_price =0;

        switch(pizza_size){
            case 'small':
                pizza_price= 5;
                break;

            case 'medium':
                pizza_price = 7;
                break;

            case 'large':
                pizza_price= 10;
                break;    

            default:
                print("Invalid pizza size!");
                continue;
        }

        int totalPrice= pizza_price * pizza_qty;
        print("Your Total Payment is: \$$totalPrice");
        
        print("\nDo you want to order again? (yes/no): "); 
        String? orderAnswer = stdin.readLineSync()!.toLowerCase();

        if(orderAnswer != "yes"){
            OrderRequest = false;
            print("Thank You for your order!");
        }
    }
}