
# DSCollapseView

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



No effort required for initializing or anything. Just create a view which you want to make collapsing and assign it class DSCollapseView from Storyboard. This will set up a default collapse view which will collapse on dragging of it.



<img  src="https://github.com/vipu1212/DSCollapseView/blob/master/simpleView.png"  style="width:304px;height:228px;">




Now default collapse being setup, you definately want to customise some properties. Well, below are all the properties you can set



* minHeight - Set the minimum height of the collapse view. i.e, the view can be dragged and collapsed minimum till this height only. Default value : 50



* subViewConstraint - Probably the most important property if you want Magic to happen ! You need to pass the constraint of the subview whose movement you want on collapsing of the view. For example, in the gifs below, I have passed the top constraint of the topmost subview.



<img  src="https://github.com/vipu1212/DSCollapseView/blob/master/constraint.png"  style="width:304px;height:228px;">



* movementType - you can choose the movement type of the subviews when view is collapsing. There are 4 possible types of movement.



    1. AlongWith

		Translates the subviews along with collapsing view maintaining the margin constraint.

		<img  src="https://media.giphy.com/media/KnG4wDJFQRVAI/giphy.gif"  style="width:204px;height:128px;">



	2. Stationary

		Keeps the subviews clipped to their origin. They don't move on collapsing

		<img  src="https://media.giphy.com/media/L5BNZiIyPu0Jq/giphy.gif"  style="width:204px;height:128px;">



	3. AlongWithFaster

		Translates the subviews relatively faster than collapseview. Give it a try!

		<img  src="https://media.giphy.com/media/Z9H00RMBqaKS4/giphy.gif"  style="width:304px;height:228px;">



	4. AlongWithSlower

		Translates the subviews slower than collapseview.

		<img  src="https://media.giphy.com/media/OEVq0b8lsTKXm/giphy.gif"  style="width:304px;height:228px;">



* relativeMovement - The rate at which the SubViews will tranlsate. For example, if it's value is 2, the subviews will translate at 2x (twice the speed) of the collapsing of the collapse view. Default value : 1.5



* appearingView - So, what happens in the end when view collapses to minimum height? Wolah !! You get a view to show. Set this value as the view you want to show when collapse view collapses. Suggestion - Keep the appearingView's height same as the minimum height of collape view.



>Works great in landscape mode too :)

<img  src="https://media.giphy.com/media/tkXY6SXc8iwCs/giphy.gif"  style="width:304px;height:228px;">


## Code



Customizing is as simple as it gets !

```

// Sets the minimum height

collapseView.minHeight = 100



// Sets relative movement of SubViews

collapseView.relativeMovement = 2



// Type of SubView movement while view is collapsing

collapseView.movementType = .AlongWithSlower



// Passing the margin constraint

collapseView.subViewConstraint = self.topConstraint



// Setting the view to show when view is collapsed

collapseView.appearingView = sampleView



```

That's it! Enjoy :)



Do 'star' it if you like it! For suggestions drop me a mail! :)



## Author



Divyansh Singh, divyansh.1212@gmail.com



## License



DSCollapseView is available under the MIT license. See the LICENSE file for more info.