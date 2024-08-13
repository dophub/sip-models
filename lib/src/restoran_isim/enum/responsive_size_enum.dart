
enum ResponsiveSizeIs { mobile, tablet, desktop }

enum ResponsiveType { body, gridview, tabbar }

int responsiveSizeChecker(ResponsiveSizeIs sizeType) {
  if (sizeType == ResponsiveSizeIs.desktop) {
    return 3;
  } else if (sizeType == ResponsiveSizeIs.tablet) {
    return 5;
  } else {
    return 2;
  }
}

