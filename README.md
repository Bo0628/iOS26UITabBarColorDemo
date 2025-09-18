# iOS26UITabBarColorDemo

In my project, the window.rootViewController is a UITabBarController containing four UIViewControllers. The first, third, and fourth VCs are empty, while the second VC's view hierarchy is structured as follows:
```
UIViewController.view
├── UIScrollView (contentSize: self.view.width * 2, 0; backgroundColor: .red)
    ├── UIScrollView (contentSize: 0, self.view.height * 2; backgroundColor: .black)
    └── UIScrollView (contentSize: 0, self.view.height * 2; backgroundColor: .white)
```
When I switch to the second tab and horizontally scroll the scrollView, the tabBar color doesn't adapt to the current view's dominant color. However, if I launch the app and sequentially tap every tab before switching to the second tab, the tabBar color then changes dynamically during horizontal scrolling. But if I background the app and return, the tabBar reverts to black.

Why does this happen? How can I either: Manually control the tabBar color, or Make it automatically match the page's dominant color?

This issue occurs when the "Reduce Transparency" accessibility setting is enabled & UITabBar.isTranslucent = true.

![](https://images.macrumors.com/t/idTTPqvQHjh5F6HKGK8HsDllEfc=/800x0/article-new/2025/08/ios-26-reduce-transparency.jpg?lossy)
