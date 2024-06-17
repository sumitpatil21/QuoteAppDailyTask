# quoteappdailytask

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


https://github.com/sumitpatil21/QuoteAppDailyTask/assets/148967002/e547b0cb-8d6c-4cd6-bfb0-d5e2e53ec46e
# Quote_App_Daily_Task.
## Write a detailed implementation of the Factory constructor & and Modal class with an explanation
# Factory Constructor :
### A factory constructor in Flutter is a special type of constructor that doesn't always create a new instance of its class. Instead, it may return an existing instance or even an instance of a different class. This flexibility allows developers to control the object creation process more precisely.
## Example
```dart
class ShapeFactory {
  factory ShapeFactory(String type) {
    if (type == 'circle') return Circle();
    if (type == 'square') return Square();
    throw 'Can\\'t create $type';
  }
}
```
# What Is Modal Class 
## Modal class in math, is the class or interval in a frequency distribution that has the greatest frequency or mode. It is the class interval with the highest number of observations or data points.
###
## Step By Step
Step 1: Separate the data into intervals or classes.<br>
Step 2: Determine the frequency of each class interval.<br>
Step 3: Find the class interval with the highest frequency, which is known as the modal class.<br>
Step 4: Using the mode formula, determine the mode based on the modal class.<br>
## Example
```dart
class Questions {
  List<Question> mathematics;
  List<Question> physics;

  Questions({this.mathematics, this.physics});

  Questions.fromJson(Map<String, dynamic> json) {
    if (json['Mathematics'] != null) {
      mathematics = new List<Question>();
      json['Mathematics'].forEach((v) {
        mathematics.add(new Question.fromJson(v));
      });
    }
    if (json['Physics'] != null) {
      physics = new List<Question>();
      json['Physics'].forEach((v) {
        physics.add(new Question.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.mathematics != null) {
      data['Mathematics'] = this.mathematics.map((v) => v.toJson()).toList();
    }
    if (this.physics != null) {
      data['Physics'] = this.physics.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

```


https://github.com/sumitpatil21/QuoteAppDailyTask/assets/148967002/33a00301-717c-4ce6-beea-edfd0920ed41


<p>
        <img src="https://github.com/sumitpatil21/QuoteAppDailyTask/assets/148967002/e3639ada-1fb1-4a6c-acb3-77b83d0af470" alt="" height="10%" width="10%" ><br><br>
        <img src="https://github.com/sumitpatil21/QuoteAppDailyTask/assets/148967002/d1dbe4a2-2e4d-4cab-8add-8421f2351365" alt="" height="10%" width="10%" ><br><br>
        <img src="https://github.com/sumitpatil21/QuoteAppDailyTask/assets/148967002/d7730f3a-2a7a-4e88-a97e-190fd164a2e5" alt="" height="10%" width="10%" ><br><br>
        <img src="https://github.com/sumitpatil21/QuoteAppDailyTask/assets/148967002/14950951-ee2d-4bcf-ba1f-21aa166e45f8" alt="" height="10%" width="10%" ><br><br>
        <img src="https://github.com/sumitpatil21/QuoteAppDailyTask/assets/148967002/693bc6e7-6e1a-49d9-bce5-c0a35141ffe6" alt="" height="10%" width="10%" ><br><br>
        <img src="https://github.com/sumitpatil21/QuoteAppDailyTask/assets/148967002/e5f72e22-1ba8-4106-9b0f-2c56b4659105" alt="" height="10%" width="10%" ><br><br>    
        <img src="https://github.com/sumitpatil21/QuoteAppDailyTask/assets/148967002/b9960e4d-329e-447d-92bf-3005ffb06b7b" alt="" height="10%" width="10%" ><br><br>
        <img src="https://github.com/sumitpatil21/QuoteAppDailyTask/assets/148967002/9bfa96b7-2a56-40bd-a3cf-dd35c2f7158f" alt="" height="10%" width="10%" ><br><br>   
        
   </p>

