//
//  OnboardingViewController.swift
//  Foodie
//
//  Created by atakan yetkin on 1.07.2024.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnboardingSlide] = []
    
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1 {
                nextButton.setTitle("Get Started", for: .normal)
            } else {
                nextButton.setTitle("Next", for: .normal)
            }
        }
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        slides = [
            OnboardingSlide(title: "Delicius Dishes",
                            description: "Experience variety of amazing dishes",
                            image: UIImage(named: "slide1")!),
            OnboardingSlide(title: "World-Class Chefs",
                            description: "Our dishes are prepared by only the best.",
                            image:UIImage(named: "slide2")!),
            OnboardingSlide(title: "Instant World-Wide Delivery",
                            description: "Your orders will be delivered instantly irrespective of your location around the world",
                            image:UIImage(named: "slide3")!)
        ]
        
        pageControl.numberOfPages = slides.count
        
        collectionView.delegate = self
        collectionView.dataSource = self

    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        
        if currentPage == slides.count - 1 {
            let controller = storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! UINavigationController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
            present(controller, animated: true, completion: nil)

        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            
        }
         
    }
}

extension OnboardingViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as!  OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
         currentPage = Int(scrollView.contentOffset.x / width)
      
    }
    
}
