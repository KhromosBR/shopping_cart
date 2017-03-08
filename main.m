//
//  main.m
//  final_term
//
//  Created by Khromos on 2017-03-06.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Drink.h"
#import "Food.h"
#import "Cloth.h"
#import "Material.h"
#import "Shopping_Cart.h"

int main(int argc, const char * argv[]) {
    
    NSMutableArray<Product*>* mArray = [[NSMutableArray alloc] init];
    
    Shopping_Cart* cart = [[Shopping_Cart alloc] initWithItems:mArray totalPrice:0];
    
    //Declaration
    Drink* pepsi = [[Drink alloc] initWithProductID:412 productName:@"Pepsi" productPrice:2 productMadeInCountry:@"USA" isDrinkDiet:false drinkSize:150];
    
    Drink* ginger = [[Drink alloc] initWithProductID:183 productName:@"Ginger Zero" productPrice:3 productMadeInCountry:@"Canada" isDrinkDiet:true drinkSize:200];
    
    
    Food* chicken = [[Food alloc] initWithProductID:100 productName:@"Chicken" productPrice:8 productMadeInCountry:@"Canada" foodCalorie:350 foodSize:4 foodIngredient:@[@"chicken", @"oil", @"chees"]];
 
    Food* pasta = [[Food alloc] initWithProductID:101 productName:@"Pasta" productPrice:18 productMadeInCountry:@"Canada" foodCalorie:250 foodSize:3 foodIngredient:@[@"pasta", @"meet", @"spinash"]];
    
    NSMutableArray<Material*>* materialArray = [[NSMutableArray alloc]init];
    Material* cottom = [[Material alloc]initWithProductName:@"Cottom" materialCode:10];
    Material* nylon = [[Material alloc] initWithProductName:@"Nylon" materialCode:11];
    
    [materialArray addObject:cottom];
    [materialArray addObject:nylon];
    
    Cloth* tshirt = [[Cloth alloc]initWithProductID:701 productName:@"T-shirt" productPrice:15 productMadeInCountry:@"China" clothMaterial:materialArray];
    
    //Add pbjects inside nsarray
    
    [cart addItem: pepsi];
    [cart addItem: pepsi];
    [cart addItem: pepsi];
    [cart addItem: ginger];
    [cart addItem: chicken];
    [cart addItem: chicken];
    [cart addItem: pasta];
    [cart addItem: pasta];
    [cart addItem: tshirt];
    
    float totalPrice = 0;
    
    for (int i = 0; i < cart.items.count; i++) {
        totalPrice = [[cart.items objectAtIndex:i]calculateProductsCost];
    }
    NSLog(@"Total price of products: $ %f\n", totalPrice);
    
    [cart printProductName];
    
    
return NSApplicationMain(argc, argv);
    
}
