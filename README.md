MACY Assignment: 
To Create a new app that showcases the current Macys first view. 
Tapping on any of the buttons and/or cells should present a view controller with a label that says “Tap #1”. Increment the tap number by 1 whenever another button and/or cell is tapped.

Strategies That Can be used:
1. MainViewController with subViews: subViews hold Images or buttons as per the design.
	Execution: simplest
	Problems: Very rigid in design and complicated in testing
	
2. MainViewController is a Table View with static custom cells
	Execution: Cells can be designed in nib files or in storyboard.
	Problems: Cells are all sequential,tacked to each other, hence future designing poses challenges
	
3. MainViewController is a UIViewController with UICollectionView and UICollectionCells
	Execution: Very similar to UITableView. 
				Cells can be individually designed using nibs or in storyboard.
				Greater control over design.
				Cells are not tacked and can be customized  using UICollectionViewFlowLayout.
				Ability to access individual items in a cell and the cell itself.
				Ability for asynchronous loading of images in individual cells.
				
I have used the UIViewController with UICollectionView and UICollectionViewCells. 
 
				
				


