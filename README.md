# DSCollapseView

[![CI Status](http://img.shields.io/travis/Divyansh Singh/DSCollapseView.svg?style=flat)](https://travis-ci.org/Divyansh Singh/DSCollapseView)
[![Version](https://img.shields.io/cocoapods/v/DSCollapseView.svg?style=flat)](http://cocoapods.org/pods/DSCollapseView)
[![License](https://img.shields.io/cocoapods/l/DSCollapseView.svg?style=flat)](http://cocoapods.org/pods/DSCollapseView)
[![Platform](https://img.shields.io/cocoapods/p/DSCollapseView.svg?style=flat)](http://cocoapods.org/pods/DSCollapseView)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Min Supported Verion : iOS 8.0

## Installation

DSCollapseView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "DSCollapseView"
```
## Integration

No effort required for initializing or anything. Just create a view which you want to make collapsing and assign it class DSCollapseView from Storyboard. This will set up a default collapse view which will collapse on dragging of the collapse view.
<br>
<img src="https://github.com/vipu1212/DSCollapseView/blob/master/simpleView.png" style="width:304px;height:228px;">
<br>

Now default collapse being setup, you definately want to customise some properties. Well, below are all the properties you can set :<br>
✔ minHeight - Set the minimum height of the collapse view. i.e, the view can be dragged and collapsed minimum till this height only. Default value : 50 <br><br> 
✔ subViewConstraint - Probably the most important property if you want Magic to happen ! You need to pass the constraint of the subview whose movement you want on collapsing of the view. For example, in the gifs below, I have passed the top constraint of the topmost subview. <br>
<img src="https://github.com/vipu1212/DSCollapseView/blob/master/constraint.png" style="width:304px;height:228px;">
<br><br>
✔ movementType - you can choose the movement type of the subviews when view is collapsing. There are 4 possible types of movement !
<br> 
1. <b> AlongWith </b> <br>
Tranlsates the subviews along with collapsing view maintaing the margin constraint.
<br><img src="https://media.giphy.com/media/KnG4wDJFQRVAI/giphy.gif"  style="width:204px;height:128px;"><br>

2. <b> Stationary </b> <br>
 Keeps the subviews clipped to their origin. They don't move on collapsing 
<br><img src="https://media.giphy.com/media/L5BNZiIyPu0Jq/giphy.gif" style="width:204px;height:128px;"><br>

3. <b> AlongWithFaster </b> <br>
  Translates the subviews relatively faster than collapseview. Give it a try ! I love this !
<br><img src="https://media.giphy.com/media/Z9H00RMBqaKS4/giphy.gif" style="width:304px;height:228px;"><br>

4. <b> AlongWithSlower </b> <br>
Translates the subviews slower than collapseview. 
<br><img src="https://media.giphy.com/media/OEVq0b8lsTKXm/giphy.gif" style="width:304px;height:228px;"><br>

** Works great in landscape mode too :) -  
<br><img src="https://media.giphy.com/media/tkXY6SXc8iwCs/giphy.gif" style="width:304px;height:228px;"><br>

✔ relativeMovement - The rate at which the SubViews will tranlsate. For example, if it's value is 2, the subviews will translate at 2x (twice the speed) of the collapsing of the collapse view. Default value : 1.5 <br><br>

✔ appearingView - So, what happens in the end when view collapses to minimum height? Wolah !! You get a view to show. Set this value as the view you want to show when collapse view collapses. Suggestion - Keep the appearingView's height same as the minimum height of collape view.<br><br>

## Author

Divyansh Singh, divyansh.1212@gmail.com

## License

DSCollapseView is available under the MIT license. See the LICENSE file for more info.
