
// class responsive_design{
//
//
//   static double mainheading=width*0.06; //35
//   static double subheading=width*0.05; //25
//   static double heading2=width*0.04; // 15-18
//   static double dropdown=width*0.03;  //12
//   static double smalldropdown=width*0.025;  //12
//
//   static double buttonwidth=width*0.35;  //150
//   static double buttonheight=height*0.07; // 50
//
// ///Sizedbox height
//   static double hedight12 = height*0.0045;//12
//   static double tenhedight = height*0.005;//10
//   static double hedight20 = height*0.006; //20
//   static double hedight200 = height*0.2; //200
//
//
//   static double hedighticon = height*0.07; //80
// }


late double mainheading;
late double subheading;
late  double heading2;
late  double dropdown;
late  double smalldropdown;
late  double buttonwidth;
late  double buttonheight;
late  double height12;
late  double tenheight;
late  double height20;
late  double height200;
late  double heighticon;

class ResponsiveDesign {


  // Initialize constants based on screen size
  static void init() {
    if (isMobileLayout()) {
      mainheading = Constants.width * 0.06;
      subheading =  Constants.width * 0.05;
      heading2 =  Constants.width * 0.04;
      dropdown =  Constants.width * 0.03;
      smalldropdown =  Constants.width * 0.025;
      buttonwidth =  Constants.width * 0.35;
      buttonheight =  Constants.height * 0.07;
      height12 =  Constants.height * 0.0045;
      tenheight =  Constants.height * 0.005;
      height20 =  Constants.height * 0.006;
      height200 =  Constants.height * 0.2;
      heighticon =  Constants.height * 0.07;
    } else {
      // Adjust constants for desktop layout
      mainheading =  Constants.width * 0.03;
      subheading =  Constants.width * 0.025;
      heading2 =  Constants.width * 0.02;
      dropdown =  Constants.width * 0.015;
      smalldropdown =  Constants.width * 0.013;
      buttonwidth =  Constants.width * 0.25;
      buttonheight =  Constants.height * 0.035;
      height12 =  Constants.height * 0.0028;
      tenheight =  Constants.height * 0.0025;
      height20 =  Constants.height * 0.003;
      height200 =  Constants.height * 0.10;
      heighticon =  Constants.height * 0.035;
    }
  }

  // Function to check if the layout is mobile
  static bool isMobileLayout() {
    // You can define your own criteria for mobile vs. desktop layout
    // For example, based on screen width
    double screenWidth = window.physicalSize.width / window.devicePixelRatio;
    double screenHeight = window.physicalSize.height / window.devicePixelRatio;

// Detect orientation
    bool isPortrait = screenHeight > screenWidth;

// Swap height and width if in landscape mode
    Constants.width = isPortrait ? screenWidth : screenHeight;
     Constants.height = isPortrait ? screenHeight : screenWidth;
    return Constants.width < 900; // Adjust this threshold as needed
  }
}
